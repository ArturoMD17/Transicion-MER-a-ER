-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Poliza
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Poliza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Poliza` DEFAULT CHARACTER SET utf8 ;
USE `Poliza` ;

-- -----------------------------------------------------
-- Table `Poliza`.`BENEFICIARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Poliza`.`BENEFICIARIO` (
  `dni` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Poliza`.`POLIZA_VIDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Poliza`.`POLIZA_VIDA` (
  `numero` INT NOT NULL,
  `BENEFICIARIO_dni` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_POLIZA_VIDA_BENEFICIARIO_idx` (`BENEFICIARIO_dni` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Poliza`.`POLIZA_VIVIENDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Poliza`.`POLIZA_VIVIENDA` (
  `DOMICILIO` TINYTEXT NOT NULL,
  `numero` INT NOT NULL,
  PRIMARY KEY (`numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Poliza`.`POLIZA_AUTOMOVIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Poliza`.`POLIZA_AUTOMOVIL` (
  `matricula` INT NOT NULL,
  `numero` INT NOT NULL,
  PRIMARY KEY (`matricula`, `numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Poliza`.`POLIZA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Poliza`.`POLIZA` (
  `fecha_ini` DATE NOT NULL,
  `fecha_fin` DATE NOT NULL,
  `POLIZA_VIDA_numero` INT NOT NULL,
  `POLIZA_VIVIENDA_numero` INT NOT NULL,
  `POLIZA_AUTOMOVIL_numero` INT NOT NULL,
  INDEX `fk_POLIZA_POLIZA_VIDA1_idx` (`POLIZA_VIDA_numero` ASC) VISIBLE,
  INDEX `fk_POLIZA_POLIZA_VIVIENDA1_idx` (`POLIZA_VIVIENDA_numero` ASC) VISIBLE,
  INDEX `fk_POLIZA_POLIZA_AUTOMOVIL1_idx` (`POLIZA_AUTOMOVIL_numero` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
