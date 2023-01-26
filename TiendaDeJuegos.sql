-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Dim_MetodosPagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dim_MetodosPagos` (
  `id_metodoPago` INT NOT NULL AUTO_INCREMENT,
  `num_tarjeta` INT(16) NOT NULL,
  `codigo_seguridad` INT(4) NOT NULL,
  PRIMARY KEY (`id_metodoPago`),
  UNIQUE INDEX `num_tarjeta_UNIQUE` (`num_tarjeta` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dim_ContactoUsuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dim_ContactoUsuario` (
  `id_contactoUsuario` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `telefono` INT NULL,
  PRIMARY KEY (`id_contactoUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dimension_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dimension_Usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `edad` INT NULL,
  `sexo` CHAR(1) NULL,
  `id_metodoPago` INT NOT NULL,
  `id_contactoUsuario` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `id_metodoPago_idx` (`id_metodoPago` ASC) VISIBLE,
  INDEX `id_contactoUsuario_idx` (`id_contactoUsuario` ASC) VISIBLE,
  CONSTRAINT `id_metodoPago`
    FOREIGN KEY (`id_metodoPago`)
    REFERENCES `mydb`.`Dim_MetodosPagos` (`id_metodoPago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_contactoUsuario`
    FOREIGN KEY (`id_contactoUsuario`)
    REFERENCES `mydb`.`Dim_ContactoUsuario` (`id_contactoUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dim_CategoriasJuegos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dim_CategoriasJuegos` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dimension_Juegos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dimension_Juegos` (
  `id_juego` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `plataforma` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_juego`),
  INDEX `id_categoria_idx` (`id_categoria` ASC) VISIBLE,
  CONSTRAINT `id_categoria`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `mydb`.`Dim_CategoriasJuegos` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dim_almacenamientosConsolas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dim_almacenamientosConsolas` (
  `id_almacenamiento` INT NOT NULL AUTO_INCREMENT,
  `almacenamiento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_almacenamiento`),
  UNIQUE INDEX `almacenamiento_UNIQUE` (`almacenamiento` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dimension_Consolas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dimension_Consolas` (
  `id_consola` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(40) NOT NULL,
  `id_almacenamiento` INT NOT NULL,
  PRIMARY KEY (`id_consola`),
  INDEX `id_almacenamiento_idx` (`id_almacenamiento` ASC) VISIBLE,
  CONSTRAINT `id_almacenamiento`
    FOREIGN KEY (`id_almacenamiento`)
    REFERENCES `mydb`.`Dim_almacenamientosConsolas` (`id_almacenamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dimension_Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dimension_Productos` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `id_juego` INT NULL,
  `precioFinal` FLOAT NOT NULL,
  `id_consola` INT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `id_juego_idx` (`id_juego` ASC) VISIBLE,
  INDEX `id_consola_idx` (`id_consola` ASC) VISIBLE,
  CONSTRAINT `id_juego`
    FOREIGN KEY (`id_juego`)
    REFERENCES `mydb`.`Dimension_Juegos` (`id_juego`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_consola`
    FOREIGN KEY (`id_consola`)
    REFERENCES `mydb`.`Dimension_Consolas` (`id_consola`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Hecho_Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Hecho_Ventas` (
  `id_venta` INT NOT NULL AUTO_INCREMENT,
  `id_producto` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`id_venta`),
  INDEX `id_usuario_idx` (`id_usuario` ASC) VISIBLE,
  INDEX `id_producto_idx` (`id_producto` ASC) VISIBLE,
  CONSTRAINT `id_usuario`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`Dimension_Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_producto`
    FOREIGN KEY (`id_producto`)
    REFERENCES `mydb`.`Dimension_Productos` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
