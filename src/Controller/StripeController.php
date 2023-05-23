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
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class StripeController extends AbstractController
{

    #[Route('/stripe', name: 'app_stripe')]
    public function prepareCharge(RequestStack $requestStack): Response
    {
        $session = $requestStack->getSession();
        $order = $session->getFlashBag()->get('order')[0];
//        $order = $entityManager->getRepository(Order::class)->find(51);
        dd($order);
        return $this->render('stripe/index.html.twig', [
            'stripe_key' => $_ENV["STRIPE_KEY"],
            'order' => $order,
        ]);
    }

//
//    #[Route('/stripe/create-charge/{id}', name: 'app_stripe_charge', methods: ['POST'])]
//    public function createCharge(Request $request, Order $order)
//    {
//        $amount = $order->getProduct()->getPrice();
//        Stripe\Stripe::setApiKey($_ENV["STRIPE_SECRET"]);
//        Stripe\Charge::create ([
//            "amount" => $amount,
//            "currency" => "usd",
//            "source" => $request->request->get('stripeToken'),
//            "description" => "Binaryboxtuts Payment Test"
//        ]);
//        $this->addFlash(
//            'success',
//            'Payment Successful!'
//        );
//        return $this->redirectToRoute('app_stripe', [], Response::HTTP_SEE_OTHER);
//    }
}