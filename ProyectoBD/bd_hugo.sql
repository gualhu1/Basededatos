-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Ventashugo
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Ventashugo` ;

-- -----------------------------------------------------
-- Schema Ventashugo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ventashugo` ;
USE `Ventashugo` ;

-- -----------------------------------------------------
-- Table `Ventashugo`.`Piezas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Ventashugo`.`Piezas` ;

CREATE TABLE IF NOT EXISTS `Ventashugo`.`Piezas` (
  `idCodigo` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `precio` FLOAT NOT NULL,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCodigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

CREATE UNIQUE INDEX `idCodigo_UNIQUE` ON `Ventashugo`.`Piezas` (`idCodigo` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Ventashugo`.`Prevedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Ventashugo`.`Prevedores` ;

CREATE TABLE IF NOT EXISTS `Ventashugo`.`Prevedores` (
  `idcod_provedores` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `provincia` VARCHAR(45) NOT NULL,
  `Piezas_idCodigo` INT NOT NULL,
  PRIMARY KEY (`idcod_provedores`),
  CONSTRAINT `fk_Prevedores_Piezas`
    FOREIGN KEY (`Piezas_idCodigo`)
    REFERENCES `Ventashugo`.`Piezas` (`idCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

CREATE INDEX `fk_Prevedores_Piezas_idx` ON `Ventashugo`.`Prevedores` (`Piezas_idCodigo` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Ventashugo`.`categorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Ventashugo`.`categorias` ;

CREATE TABLE IF NOT EXISTS `Ventashugo`.`categorias` (
  `idcod_categoria` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `Piezas_idCodigo` INT NOT NULL,
  PRIMARY KEY (`idcod_categoria`, `Piezas_idCodigo`),
  CONSTRAINT `fk_categorias_Piezas1`
    FOREIGN KEY (`Piezas_idCodigo`)
    REFERENCES `Ventashugo`.`Piezas` (`idCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

CREATE INDEX `fk_categorias_Piezas1_idx` ON `Ventashugo`.`categorias` (`Piezas_idCodigo` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
