<?php

namespace App\Controller;

use App\Entity\Order;
use App\Entity\Product;
use App\Entity\Client;
use App\Services\MailerService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Stripe;
use Symfony\Contracts\HttpClient\HttpClientInterface;

class StripeController extends AbstractController
{

    private $entityManager;
    private $mailerService;

    public function __construct(EntityManagerInterface $entityManager, MailerService $mailerService){
        $this->entityManager = $entityManager;
        $this->mailerService = $mailerService;
    }

    #[Route('/stripe', name: 'app_stripe')]
    public function prepareCharge(Order $order,int $APIOrder): Response
    {
        return $this->render('stripe/index.html.twig', [
            'stripe_key' => $_ENV["STRIPE_KEY"],
            'orderid' => $order->getId(),
            'price' => $order->getOrderAmount(),
            'APIOrder' => $APIOrder,
        ]);
    }
    
    
    #[Route('/stripe/create-charge/{id}', name: 'app_stripe_charge', methods: ['POST', 'GET'])]
    public function createCharge(Request $request, Order $order, HttpClientInterface $httpClientInterface)
    {

        $amount = $order->getOrderAmount() * 100;
       $test = Stripe\Stripe::setApiKey($_ENV["STRIPE_SECRET"]);



        try {
            $stripeResponse = Stripe\Charge::create ([
                "amount" => $amount,
                "currency" => "eur",
                "source" => $request->request->get('stripeToken'),
                "description" => "Polo & Renaud Corporation Payment Test",
            ]);

            $APIOrder= $request->request->get('APIOrder');
            $statusJson = ['status' => "PAID"];

            $response2 = $httpClientInterface->request(
                'POST',
                "https://api-commerce.simplon-roanne.com/order/".$APIOrder."/status",
                [
                    'headers'=> [
                        'Content-Type'=> 'application/json',
                        'accept'=> 'application/json',
                        'Authorization' => 'Bearer mJxTXVXMfRzLg6ZdhUhM4F6Eutcm1ZiPk4fNmvBMxyNR4ciRsc8v0hOmlzA0vTaX'
                    ],
                    'json' => $statusJson
                    ]
                );
                
                $order->setStatus('PAID');
                $this->entityManager->persist($order);
                $this->entityManager->flush();

                // On crée les données du mail
                $name = $order->getClient()->getFirstname();
                $product = $order->getProduct();
                $context = ['name' => $name, 'product' => $product];

                // Envoi du mail
                $this->mailerService->send(
                    'polo&renaud@corporation.test',
                    $order->getClient()->getEmail(),
                    'Battle Office : Confirmation de votre commande',
                    'confirmation',
                    $context
                );

                
            } catch (\Exception $e){
                $this->addFlash('error', $e->getMessage());
                return $this->redirectToRoute('landing_page', [], Response::HTTP_SEE_OTHER);
                //
            }
            




///

        $this->addFlash('success', "Paiement Réussi");
        return $this->redirectToRoute('confirmation', [], Response::HTTP_SEE_OTHER);

    }
}