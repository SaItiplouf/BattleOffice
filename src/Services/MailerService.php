<?php
namespace App\Services;

use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use Symfony\Component\Mailer\MailerInterface;
use Psr\Log\LoggerInterface;

class MailerService
{
  private MailerInterface $mailer;
  private LoggerInterface $logger;

  public function __construct(MailerInterface $mailer, LoggerInterface $logger)
  {
    $this->mailer = $mailer;
    $this->logger = $logger;
  }

  public function send(
    string $from,
    string $to,
    string $subject,
    string $template,
    array $context
  ): void {
    try {
      //On crée le mail
      $email = (new TemplatedEmail())
        ->from($from)
        ->to($to)
        ->subject($subject)
        ->htmlTemplate("emails/$template.html.twig")
        ->context($context);

      // On envoie le mail
      $this->mailer->send($email);


    } catch (TransportExceptionInterface $e) {
      // Enregistrement de l'erreur dans le fichier journal
      $this->logger->error('Une erreur s\'est produite lors de l\'envoi du courrier électronique', [
        'exception' => $e,
      ]);

    } catch (\Exception $e) {
      // Enregistrement de l'erreur dans le fichier journal
      $this->logger->error('Une erreur s\'est produite lors de l\'envoi du courrier électronique', [
        'exception' => $e,
      ]);
    }
  }
}