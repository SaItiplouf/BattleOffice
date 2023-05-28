<?php

namespace App\Entity;

use App\Repository\ClientRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: ClientRepository::class)]
class Client
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $firstname = null;

    #[ORM\Column(length: 255)]
    private ?string $lastname = null;

    #[ORM\Column(length: 255)]
    private ?string $address = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $confirm_address = null;

    #[ORM\Column]
    private ?int $postcode = null;

    #[ORM\Column(length: 255)]
    private ?string $country = null;

    #[ORM\Column]
    private ?string $phone = null;

    #[ORM\Column(length: 255)]
    private ?string $email = null;

    #[Assert\EqualTo(propertyPath:"email", message: 'emails does not match')]
    public string $email_confirm;

    #[ORM\Column(length: 255)]
    private ?string $town = null;
    #[ORM\Column(length: 255, nullable: true)]
    public ?string $shipping_firstname = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $shipping_lastname = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $shipping_address = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $shipping_confirm_address = null;

    #[ORM\Column(nullable: true)]
    private ?int $shipping_postcode = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $shipping_country = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $shipping_town = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $shipping_phone = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    public function setFirstname(string $firstname): self
    {
        $this->firstname = $firstname;

        return $this;
    }

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getConfirmAddress(): ?string
    {
        return $this->confirm_address;
    }

    public function setConfirmAddress(string $confirm_address): self
    {
        $this->confirm_address = $confirm_address;

        return $this;
    }

    public function getPostcode(): ?int
    {
        return $this->postcode;
    }

    public function setPostcode(int $postcode): self
    {
        $this->postcode = $postcode;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getPhone(): ?string
    {
        return $this->phone;
    }

    public function setPhone(string $phone): self
    {
        $this->phone = $phone;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getTown(): ?string
    {
        return $this->town;
    }

    public function setTown(string $town): self
    {
        $this->town = $town;

        return $this;
    }

    /**
     * Get the value of email_confirm
     */ 
    public function getEmail_confirm()
    {
        return $this->email_confirm;
    }

    /**
     * Set the value of email_confirm
     *
     * @return  self
     */ 
    public function setEmail_confirm($email_confirm)
    {
        $this->email_confirm = $email_confirm;

        return $this;
    }

    public function setShippingFirstname(?string $shipping_firstname): self
    {
        $this->shipping_firstname = $shipping_firstname;

        return $this;
    }

    public function getShippingLastname(): ?string
    {
        return $this->shipping_lastname;
    }

    public function setShippingLastname(?string $shipping_lastname): self
    {
        $this->shipping_lastname = $shipping_lastname;

        return $this;
    }

    public function getShippingAddress(): ?string
    {
        return $this->shipping_address;
    }

    public function setShippingAddress(?string $shipping_address): self
    {
        $this->shipping_address = $shipping_address;

        return $this;
    }

    public function getShippingConfirmAddress(): ?string
    {
        return $this->shipping_confirm_address;
    }

    public function setShippingConfirmAddress(?string $shipping_confirm_address): self
    {
        $this->shipping_confirm_address = $shipping_confirm_address;

        return $this;
    }

    public function getShippingPostcode(): ?int
    {
        return $this->shipping_postcode;
    }

    public function setShippingPostcode(?int $shipping_postcode): self
    {
        $this->shipping_postcode = $shipping_postcode;

        return $this;
    }

    public function getShippingCountry(): ?string
    {
        return $this->shipping_country;
    }

    public function setShippingCountry(?string $shipping_country): self
    {
        $this->shipping_country = $shipping_country;

        return $this;
    }

    public function getShippingTown(): ?string
    {
        return $this->shipping_town;
    }

    public function setShippingTown(?string $shipping_town): self
    {
        $this->shipping_town = $shipping_town;

        return $this;
    }

    public function getShippingPhone(): ?string
    {
        return $this->shipping_phone;
    }

    public function setShippingPhone(?string $shipping_phone): self
    {
        $this->shipping_phone = $shipping_phone;

        return $this;
    }

    /**
     * Get the value of shipping_firstname
     */ 
    public function getShipping_firstname()
    {
        return $this->shipping_firstname;
    }

    /**
     * Set the value of shipping_firstname
     *
     * @return  self
     */ 
    public function setShipping_firstname($shipping_firstname)
    {
        $this->shipping_firstname = $shipping_firstname;

        return $this;
    } 
}
