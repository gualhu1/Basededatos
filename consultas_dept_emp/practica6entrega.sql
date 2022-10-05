-- MySQL Workbench Forward Engineering

/* Taller: Base de datos
Practica: 6 Creación de una base de datos
Nombre: Hugo César Gutiérrez Alcántara.
Folio: 1513LG01
Fecha: 5 de Octubre 2022
https://www.db-fiddle.com/f/n9bqpsTZ2khF3CWfRQGHJ6/0 */
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
DROP TABLE IF EXISTS `Tiendadeinformatica`.`fabricante` ;

CREATE TABLE IF NOT EXISTS `Tiendadeinformatica`.`fabricante` (
  `idCodigo` INT PRIMARY KEY AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL UNIQUE);


-- -----------------------------------------------------
-- Table `Tiendadeinformatica`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tiendadeinformatica`.`producto` ;

CREATE TABLE IF NOT EXISTS `Tiendadeinformatica`.`producto` (
  `idCodigo` INT PRIMARY KEY AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Precio` DOUBLE UNSIGNED NOT NULL,
  `Fabricante_idCodigo` INT,
  CONSTRAINT `fk_Producto_Fabricante`
    FOREIGN KEY (`Fabricante_idCodigo`)
    REFERENCES `Tiendadeinformatica`.`fabricante` (`idCodigo`));

describe fabricante;
describe producto;
INSERT INTO fabricante
VALUES (null, 'Asus');
SELECT * FROM fabricante;
INSERT INTO fabricante
VALUES (null, 'Lenovo');
INSERT INTO fabricante
VALUES (null,'Hewlett-packard');
INSERT INTO fabricante
VALUES (null,'Samsung');
INSERT INTO fabricante
VALUES (null,'Seagate');
INSERT INTO fabricante
VALUES (null,'Crucial');
INSERT INTO fabricante
VALUES (null, 'Gigabyte');
INSERT INTO fabricante
VALUES (null, 'Huawei');
INSERT INTO fabricante
VALUES (null, 'Xiaomi');
SELECT * FROM fabricante;
INSERT INTO producto
VALUES (null,'Disco duro SATA3 1TB', 86.99,5);
SELECT * FROM producto;
INSERT INTO producto
VALUES (null, 'Memoria RAM DDR4 8GB', 120, 3);
INSERT INTO producto
VALUES (null, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto
VALUES (null, 'GeForce GTX 105Ti', 185, 7);
INSERT INTO producto
VALUES (null, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto
VALUES (null, 'Monitor 24 LED Full HD', 202,1);
INSERT INTO producto
VALUES (null, 'Monitor 27 LED Full HD', 245.99,1);
INSERT INTO producto
VALUES (null, 'Portatil Yoga 520', 559, 2);
INSERT INTO producto
VALUES (null, 'Portatil Ideapd 320', 444, 2);
INSERT INTO producto
VALUES (null, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto
VALUES (null, 'Impresora HP LaserJet Pro M26nw', 180, 3);