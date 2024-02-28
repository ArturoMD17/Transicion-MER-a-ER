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
-- Table `RelacionesBinarias`.`EMPLEADO2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`EMPLEADO2` (
  `matricula` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `codemp` VARCHAR(15) NOT NULL,
  `fecha inicio` DATE NOT NULL,
  PRIMARY KEY (`codemp`, `matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RelacionesBinarias`.`VEHICULO2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`VEHICULO2` (
  `modelo` VARCHAR(20) NOT NULL,
  `EMPLEADO2_matricula` VARCHAR(10) NULL,
  INDEX `fk_VEHICULO2_EMPLEADO21_idx` (`EMPLEADO2_matricula` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
