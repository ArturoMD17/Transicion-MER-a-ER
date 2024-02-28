-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RelacionesBinarias
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RelacionesBinarias
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RelacionesBinarias` DEFAULT CHARACTER SET utf8 ;
USE `RelacionesBinarias` ;

-- -----------------------------------------------------
-- Table `RelacionesBinarias`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`VEHICULO` (
  `matricula` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(20) NOT NULL,
  `codemp` VARCHAR(15) NOT NULL,
  `fecha inicio` DATE NOT NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RelacionesBinarias`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`EMPLEADO` (
  `nombre` VARCHAR(30) NOT NULL,
  `VEHICULO_codemp` VARCHAR(45) NOT NULL,
  INDEX `fk_EMPLEADO_VEHICULO_idx` (`VEHICULO_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
