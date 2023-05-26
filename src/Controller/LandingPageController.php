<?php

namespace App\Controller;

use App\Entity\Order;
use App\Form\ClientType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Form;
use Symfony\Component\Form\FormTypeInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Client;
use App\Entity\Product;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use App\Form\GetOrderType;

class LandingPageController extends AbstractController
{

	private $entityManager;
	private HttpClientInterface $httpClientInterface;
	public function __construct(EntityManagerInterface $entityManager, HttpClientInterface $httpClientInterface)
	{

		$this->entityManager = $entityManager;
		$this->httpClientInterface = $httpClientInterface;
	}

	#[Route('/cgv', name: 'cgv')]
	public function afficherCGV(): Response
	{
			return $this->render('landing_page/cgv.html.twig');
	}



    /**
     * @Route("/order/{id}", name="get_order")
     * @throws \Exception
     */
    public function getOrder(Request $request, $id)
    {
        $order = $this->entityManager->getRepository(Order::class)->find($id);

        return $this->render('landing_page/order.html.twig', [
            'order' => $order,
        ]);
    }
    /**
     * @Route("/", name="landing_page")
     * @throws \Exception
     */
    public function index(Request $request): Response
    {
        $products = $this->entityManager->getRepository(Product::class)->findAll();

        $form = $this->createForm(GetOrderType::class);
        $form->handleRequest($request);
        $client = new Client();
        $clientForm = $this->createForm(ClientType::class, $client);
        $clientForm->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())  {

            $data = $form->getData();
            $orderId = $data->getId();

            if (!$orderId) {
                throw $this->createNotFoundException(
                    'La commande n\'existe pas pour l\'ID '.$orderId
                );
            }
            // Redirection vers la route avec l'ID de commande
            return $this->redirectToRoute('get_order', ['id' => $orderId]);
        }

        if ($clientForm->isSubmitted() && $clientForm->isValid()) {
            // Récupération des données du formulaire
            $client = $clientForm->getData();

            // Enregistrement du client dans la base de données
            $this->entityManager->persist($client);
            $this->entityManager->flush();

            $parameters = $request->request->all()['order'];
            $productId = $parameters['cart']['cart_products'][0];
            $paymentMethod = $parameters['payment_method'];

            $zeb = $this->traitement($productId, $paymentMethod, $client);
            $APIOrderId = $zeb['APIOrderId'];
            $order = $zeb['order'];

            return $this->forward(
			'App\Controller\StripeController::prepareCharge',
		    ['order' => $order, 'APIOrder' => $APIOrderId]

		    );





        }

        return $this->render('landing_page/index_new.html.twig', [
            'clientForm' => $clientForm->createView(),
            'form' => $form->createView(),
            'products' => $products,
        ]);
    }

	/**
	 * @Route("/confirmation", name="confirmation")
	 */
	public function confirmation()
	{
		return $this->render('landing_page/confirmation.html.twig', [

		]);
	}

//	#[Route('/traitement', name: 'traitement_commande', methods: "POST, GET")]
	public function traitement(int $ProductId,string $paymentMethod,Client $client )
	{




		$product = $this->entityManager->getRepository(Product::class)->find($ProductId);
		$orderAmount = ($product->getPrice() * (1 - ($product->getSalesPrice() / 100))) / 100;
		$order = new Order();
		$order->setPaymentMethod($paymentMethod);
		$order->setStatus("WAITING");
		$order->setClient($client);
		$order->setProduct($product);
		$order->setOrderAmount($orderAmount);
		$this->entityManager->persist($order);
		$this->entityManager->flush($order);

		$json =
			[
				'order' => [
					'id' => $order->getId(),
					'product' => $order->getProduct()->getName(),
					'payment_method' => $order->getPaymentMethod(),
					'status' => $order->getStatus(),
					'client' => [
						'firstname' => $order->getClient()->getFirstname(),
						'lastname' => $order->getClient()->getLastname(),
						'email' => $order->getClient()->getEmail()
					],
					'addresses' => [
						'billing' => [
							'address_line1' => $order->getClient()->getAddress(),
							'address_line2' => $order->getClient()->getConfirmAddress(),
							'city' => $order->getClient()->getTown(),
							'zipcode' => $order->getClient()->getPostcode(),
							'country' => $order->getClient()->getCountry(),
							'phone' => $order->getClient()->getPhone()
						],
						'shipping' => [
							'address_line1' => $order->getClient()->getAddress(),
							'address_line2' => $order->getClient()->getConfirmAddress(),
							'city' => $order->getClient()->getTown(),
							'zipcode' => $order->getClient()->getPostcode(),
							'country' => $order->getClient()->getCountry(),
							'phone' => $order->getClient()->getPhone()
						]
					]
				]
			];


		$response = $this->httpClientInterface->request(
			'POST',
			'https://api-commerce.simplon-roanne.com/order',
			[
				'headers' => [
					'Content-Type' => 'application/json',
					'accept' => 'application/json',
					'Authorization' => 'Bearer mJxTXVXMfRzLg6ZdhUhM4F6Eutcm1ZiPk4fNmvBMxyNR4ciRsc8v0hOmlzA0vTaX'
				],
				'json' => $json
			]
		);

//		$request = Request::create(
//			$this->generateUrl("app_stripe"),
//			Request::METHOD_POST,
//			['order' => $order]
//		);

        $APIOrderId = json_decode($response->getContent())->order_id;

        $data = [
            'APIOrderId' => $APIOrderId,
            'order' => $order
        ];

        return $data;


//		return $this->forward(
//			'App\Controller\StripeController::prepareCharge',
//			['request' => $request, 'APIOrder' => $APIOrder]
//
//		);
	}
}
