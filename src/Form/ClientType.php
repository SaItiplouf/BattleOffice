<?php

namespace App\Form;

use App\Entity\Client;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TelType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormTypeInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ClientType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('firstname', TextType::class, [
                'label' => 'Prénom'
            ])
            ->add('lastname', TextType::class, [
                'label' => 'Nom'
            ])
            ->add('address', TextType::class, [
                'label' => 'Adresse'
            ])
            ->add('confirm_address', TextType::class, [
                'label' => 'Complément adr.'
            ])
            ->add('town', TextType::class, [
                'label' => 'Ville'
            ])
            ->add('postcode', IntegerType::class, [
                'label' => 'Code postal',
                'attr' => [
                    'min' => 01000,
                    'max' => 90000
                ]
            ])
            ->add('country', ChoiceType::class, [
                'label' => 'Pays',
                'choices' => [
                    'France' => 'France',
                    'Belgique' => 'Belgique',
                    'Suisse' => 'Suisse',
                    'UK' => 'UK',
                    'Turquie' => 'Turquie',
                    'Argentine' => 'Argentine'
                ]
            ])
            ->add('phone', TelType::class, [
                'label' => 'Téléphone'
            ])
            ->add('email', EmailType::class, [
                'label' => 'Email'
            ])
            ->add('email_confirm', EmailType::class, [
                'label' => 'Confirmation email'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Client::class,
        ]);
    }
}
