-- MySQL Script generated by MySQL Workbench
-- Sun Sep 22 13:38:01 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mvcwk
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mvcwk
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mvcwk` DEFAULT CHARACTER SET utf8 ;
USE `mvcwk` ;

-- -----------------------------------------------------
-- Table `mvcwk`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mvcwk`.`cliente` (
  `idcliente` INT UNSIGNED NOT NULL,
  `Nome` VARCHAR(50) NULL,
  `Cidade` VARCHAR(50) NULL,
  `UF` VARCHAR(2) NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE INDEX `idcliente_UNIQUE` (`idcliente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mvcwk`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mvcwk`.`produto` (
  `idproduto` INT UNSIGNED NOT NULL,
  `Descricao` VARCHAR(50) NULL,
  `Preco` DECIMAL(9,2) NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE INDEX `idproduto_UNIQUE` (`idproduto` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mvcwk`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mvcwk`.`pedido` (
  `idpedido` INT UNSIGNED NOT NULL,
  `idcliente` INT UNSIGNED NULL,
  PRIMARY KEY (`idpedido`),
  UNIQUE INDEX `idpedido_UNIQUE` (`idpedido` ASC) VISIBLE,
  INDEX `fk_pedido_cliente_idx` (`idcliente` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_cliente`
    FOREIGN KEY (`idcliente`)
    REFERENCES `mvcwk`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mvcwk`.`itempedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mvcwk`.`itempedido` (
  `iditempedido` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpedido` INT UNSIGNED NULL,
  `idproduto` INT UNSIGNED NULL,
  `quantidade` DECIMAL(7,2) NULL,
  `vlunit` DECIMAL(7,2) NULL,
  INDEX `fk_item_pedido_idx` (`idpedido` ASC) VISIBLE,
  INDEX `fk_item_produto_idx` (`idproduto` ASC) VISIBLE,
  PRIMARY KEY (`iditempedido`),
  UNIQUE INDEX `iditempedido_UNIQUE` (`iditempedido` ASC) VISIBLE,
  CONSTRAINT `fk_item_pedido`
    FOREIGN KEY (`idpedido`)
    REFERENCES `mvcwk`.`pedido` (`idpedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_produto`
    FOREIGN KEY (`idproduto`)
    REFERENCES `mvcwk`.`produto` (`idproduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('1', 'André', 'Sombrio', 'SC');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('2', 'Andreia', 'Sombrio', 'SC');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('3', 'Andryel', 'Tramandaí', 'RS');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('4', 'Andriélli', 'Sapucaia do Sul', 'RS');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('5', 'Éric', 'Sapucaia do Sul', 'RS');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('6', 'Enzo', 'Santos', 'SP');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('7', 'Eduarda', 'Tramandaí', 'RS');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('8', 'Fernanda', 'Porto Alegre', 'RS');
INSERT INTO `mvcwk`.`cliente` (`idcliente`, `Nome`, `Cidade`, `UF`) VALUES ('9', 'Fernando', 'Canoas', 'RS');


INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('123', 'Item 123', '1.23');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('456', 'Item 456', '4.56');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('789', 'Item 789', '7.89');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('111', 'Item 111', '1.11');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('222', 'Item 222', '2.22');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('333', 'Item 333', '3.33');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('444', 'Item 444', '4.44');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('555', 'Item 555', '5.44');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('777', 'Item 777', '7.77');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('888', 'Item 888', '8.88');
INSERT INTO `mvcwk`.`produto` (`idproduto`, `Descricao`, `Preco`) VALUES ('999', 'Item 999', '9.99');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
