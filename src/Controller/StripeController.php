<?php

namespace App\Controller;

use App\Entity\Order;
use App\Entity\Product;
use App\Entity\Client;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Stripe;
class StripeController extends AbstractController
{

    #[Route('/stripe', name: 'app_stripe')]
    public function prepareCharge(Request $request): Response
    {
        $parametres = $request->request->all();
        $order = $parametres['order'];
        $id = $order->getId();
        return $this->render('stripe/index.html.twig', [
            'stripe_key' => $_ENV["STRIPE_KEY"],
            'orderid' => $id,
            'price' => $order->getOrderAmount()
        ]);
    }


    #[Route('/stripe/create-charge/{id}', name: 'app_stripe_charge', methods: ['POST', 'GET'])]
    public function createCharge(Request $request, Order $order)
    {
        $amount = $order->getOrderAmount();
       $test = Stripe\Stripe::setApiKey($_ENV["STRIPE_SECRET"]);
        Stripe\Charge::create ([
            "amount" => $amount * 100,
            "currency" => "eur",
            "source" => $request->request->get('stripeToken'),
            "description" => "Polo & Renaud Corporation Payment Test"
        ]);

        return $this->redirectToRoute('confirmation', [], Response::HTTP_SEE_OTHER);
    }
}