-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tienda` ;

-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda` ;
USE `tienda` ;

-- -----------------------------------------------------
-- Table `tienda`.`Clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`Clientes` ;

CREATE TABLE IF NOT EXISTS `tienda`.`Clientes` (
  `idRFC` VARCHAR(13) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `fecha_nacimento` DATE NOT NULL,
  PRIMARY KEY (`idRFC`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tienda`.`Provedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`Provedores` ;

CREATE TABLE IF NOT EXISTS `tienda`.`Provedores` (
  `RFC` VARCHAR(13) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RFC`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tienda`.`Compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`Compras` ;

CREATE TABLE IF NOT EXISTS `tienda`.`Compras` (
  `idCodigo` INT NOT NULL AUTO_INCREMENT,
  `precio_unitario` FLOAT UNSIGNED NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `Provedores_RFC` VARCHAR(13) NULL,
  PRIMARY KEY (`idCodigo`),
  INDEX `fk_Productos_Provedores_idx` (`Provedores_RFC` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tienda`.`Clientes_has_Productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`Clientes_has_Productos` ;

CREATE TABLE IF NOT EXISTS `tienda`.`Clientes_has_Productos` (
  `numero_factura` INT NOT NULL AUTO_INCREMENT,
  `Clientes_idRFC` VARCHAR(13) NOT NULL,
  `Productos_idCodigo` INT NOT NULL,
  PRIMARY KEY (`numero_factura`),
  INDEX `fk_Clientes_has_Productos_Productos1_idx` (`Productos_idCodigo` ASC) VISIBLE,
  INDEX `fk_Clientes_has_Productos_Clientes1_idx` (`Clientes_idRFC` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
