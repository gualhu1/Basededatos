-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Tiendadeinformatica
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Tiendadeinformatica` ;

-- -----------------------------------------------------
-- Schema Tiendadeinformatica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Tiendadeinformatica` ;
USE `Tiendadeinformatica` ;

-- -----------------------------------------------------
-- Table `Tiendadeinformatica`.`Fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tiendadeinformatica`.`Fabricante` ;

CREATE TABLE IF NOT EXISTS `Tiendadeinformatica`.`Fabricante` (
  `idCodigo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idCodigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `Tiendadeinformatica`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tiendadeinformatica`.`Producto` ;

CREATE TABLE IF NOT EXISTS `Tiendadeinformatica`.`Producto` (
  `idCodigo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Precio` DOUBLE UNSIGNED NOT NULL,
  `Fabricante_idCodigo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCodigo`),
  INDEX `fk_Producto_Fabricante_idx` (`Fabricante_idCodigo` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Fabricante`
    FOREIGN KEY (`Fabricante_idCodigo`)
    REFERENCES `Tiendadeinformatica`.`Fabricante` (`idCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
