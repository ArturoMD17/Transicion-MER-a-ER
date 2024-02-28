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
-- Table `RelacionesBinarias`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`CONDUCE` (
  `matricula` VARCHAR(10) NOT NULL,
  `codemp` INT NOT NULL,
  `fechainicio` DATE NOT NULL,
  PRIMARY KEY (`codemp`, `matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RelacionesBinarias`.`VEHICULO3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`VEHICULO3` (
  `modelo` VARCHAR(20) NOT NULL,
  `CONDUCE_matricula` VARCHAR(10) NOT NULL,
  INDEX `fk_VEHICULO3_CONDUCE1_idx` (`CONDUCE_matricula` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RelacionesBinarias`.`EMPLEAD03`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RelacionesBinarias`.`EMPLEAD03` (
  `nombre` VARCHAR(20) NOT NULL,
  `CONDUCE_codemp` INT NOT NULL,
  INDEX `fk_EMPLEAD03_CONDUCE1_idx` (`CONDUCE_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
