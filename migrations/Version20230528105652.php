<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230528105652 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE client ADD shipping_firstname VARCHAR(255) DEFAULT NULL, ADD shipping_lastname VARCHAR(255) DEFAULT NULL, ADD shipping_address VARCHAR(255) DEFAULT NULL, ADD shipping_confirm_address VARCHAR(255) DEFAULT NULL, ADD shipping_postcode INT DEFAULT NULL, ADD shipping_country VARCHAR(255) DEFAULT NULL, ADD shipping_town VARCHAR(255) DEFAULT NULL, ADD shipping_phone VARCHAR(255) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE client DROP shipping_firstname, DROP shipping_lastname, DROP shipping_address, DROP shipping_confirm_address, DROP shipping_postcode, DROP shipping_country, DROP shipping_town, DROP shipping_phone');
    }
}
