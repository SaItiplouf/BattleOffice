<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230523095642 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE `order` DROP FOREIGN KEY FK_F52993984584665A');
        $this->addSql('ALTER TABLE `order` CHANGE product_id product_id INT NOT NULL');
        $this->addSql('ALTER TABLE `order` ADD CONSTRAINT FK_F52993984584665A FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE `order` DROP FOREIGN KEY FK_F52993984584665A');
        $this->addSql('ALTER TABLE `order` CHANGE product_id product_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE `order` ADD CONSTRAINT FK_F52993984584665A FOREIGN KEY (product_id) REFERENCES product (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
    }
}
