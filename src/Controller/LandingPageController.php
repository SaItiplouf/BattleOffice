<?php

namespace App\Controller;

use App\Entity\Order;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Form;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Client;
use App\Entity\Product;
use Symfony\Contracts\HttpClient\HttpClientInterface;

class LandingPageController extends AbstractController
{
    private $entityManager;
    private HttpClientInterface $httpClientInterface;
    public function __construct(EntityManagerInterface $entityManager, HttpClientInterface $httpClientInterface) {

        $this->entityManager = $entityManager;
        $this->httpClientInterface = $httpClientInterface;
    }
    /**
     * @Route("/", name="landing_page")
     * @throws \Exception
     */
    public function index(Request $request)
    {
        $products = $this->entityManager->getRepository(Product::class)->findAll();

        return $this->render('landing_page/index_new.html.twig', [
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

    #[Route('/traitement', name: 'traitement_commande', methods: "POST")]
    public function traitement(Request $request): Response
    {

        $parameters = $request->request->all();
        $clientData = $parameters['client'];
        $client = new Client();

        $client->setFirstname($clientData['firstname']);
        $client->setLastname($clientData['lastname']);
        $client->setAddress($clientData['address']);
        $client->setConfirmAddress($clientData['confirm_address']);
        $client->setTown($clientData['town']);
        $client->setPostcode($clientData['postcode']);
        $client->setCountry($clientData['country']);
        $client->setPhone($clientData['phone']);
        $client->setEmail($clientData['mail']);

        $this->entityManager->persist($client);
        $this->entityManager->flush($client);


        $ProductId = $parameters['order']['cart']['cart_products'][0];
        $paymentMethod = $parameters['order']['payment_method'];

        $product = $this->entityManager->getRepository(Product::class)->find($ProductId);
        $orderAmount = $product->getPrice() * ( 1 - ($product->getSalesPrice() / 100));

        $order = new Order();
        $order->setPaymentMethod($paymentMethod);
        $order->setStatus("WAITING");
        $order->setClient($client);
        $order->setProduct($product);
        $order->setOrderAmount($orderAmount);
        $this->entityManager->persist($order);
        $this->entityManager->flush($order);


        $json =
        ['order' => [
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
            ]]];


        $response = $this->httpClientInterface->request(
            'POST',
            'https://api-commerce.simplon-roanne.com/order',
            [
                'headers'=> [
                    'Content-Type'=> 'application/json',
                    'accept'=> 'application/json',
                    'Authorization' => 'Bearer mJxTXVXMfRzLg6ZdhUhM4F6Eutcm1ZiPk4fNmvBMxyNR4ciRsc8v0hOmlzA0vTaX'
                ],
                'json' => $json
            ]
        );
        $request = Request::create(
            $this->generateUrl("app_stripe"),
            Request::METHOD_POST,
            ['order' => $order]
        );
        return $this->forward(
            'App\Controller\StripeController::prepareCharge',
            ['request' => $request]
        );
    }
}
