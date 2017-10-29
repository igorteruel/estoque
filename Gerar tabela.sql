-- MySQL Script generated by MySQL Workbench
-- 10/26/17 18:14:23
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produtos` (
  `id_produto` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id_produto`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`entrada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`entrada` (
  `id_entrada` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `id_produto` INT NOT NULL COMMENT '',
  `quantidade` INT NOT NULL COMMENT '',
  `data_entrada` DATE NOT NULL COMMENT '',
  PRIMARY KEY (`id_entrada`, `id_produto`)  COMMENT '',
  INDEX `fk_entrada_produtos1_idx` (`id_produto` ASC)  COMMENT '',
  UNIQUE INDEX `id_produto_UNIQUE` (`id_produto` ASC)  COMMENT '',
  CONSTRAINT `fk_entrada_produtos1`
    FOREIGN KEY (`id_produto`)
    REFERENCES `mydb`.`produtos` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`saida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`saida` (
  `id_saida` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `id_produto` INT NOT NULL COMMENT '',
  `quantidade` INT NOT NULL COMMENT '',
  `data_saida` DATE NOT NULL COMMENT '',
  PRIMARY KEY (`id_saida`, `id_produto`)  COMMENT '',
  INDEX `fk_saida_produtos1_idx` (`id_produto` ASC)  COMMENT '',
  UNIQUE INDEX `id_produto_UNIQUE` (`id_produto` ASC)  COMMENT '',
  CONSTRAINT `fk_saida_produtos1`
    FOREIGN KEY (`id_produto`)
    REFERENCES `mydb`.`produtos` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
