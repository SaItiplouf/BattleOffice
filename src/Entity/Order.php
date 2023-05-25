<?php

namespace App\Entity;

use App\Repository\OrderRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OrderRepository::class)]
#[ORM\Table(name: '`order`')]
class Order
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $payment_method = null;

    #[ORM\Column(length: 255)]
    private ?string $status = null;

    #[ORM\OneToOne(targetEntity: Client::class)]
    #[ORM\JoinColumn(nullable: true)]
    private ?client $client = null;

    #[ORM\ManyToOne(targetEntity: Product::class)]
    #[ORM\JoinColumn(nullable:false, onDelete:"CASCADE")]
    private ?Product $product = null;

    #[ORM\Column]
    private ?int $order_amount = null;

    public function getId(): ?int
    {
        return $this->id;
    }
    public function setId(int $id): ?int
    {
        $this->id = $id;

        return $this->id;
    }
    public function getPaymentMethod(): ?string
    {
        return $this->payment_method;
    }

    public function setPaymentMethod(string $payment_method): self
    {
        $this->payment_method = $payment_method;

        return $this;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(string $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getClient(): ?client
    {
        return $this->client;
    }

    public function setClient(client $client): self
    {
        $this->client = $client;

        return $this;
    }

    public function getProduct(): ?product
    {
        return $this->product;
    }

    public function setProduct(?product $product): self
    {
        $this->product = $product;

        return $this;
    }

    public function getOrderAmount(): ?int
    {
        return $this->order_amount;
    }

    public function setOrderAmount(int $order_amount): self
    {
        $this->order_amount = $order_amount;

        return $this;
    }
}