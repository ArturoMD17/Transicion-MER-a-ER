-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ejemplos
-- -----------------------------------------------------
-- Ejemplos de transicion

-- -----------------------------------------------------
-- Schema Ejemplos
--
-- Ejemplos de transicion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ejemplos` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `Ejemplos` ;

-- -----------------------------------------------------
-- Table `Ejemplos`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplos`.`LIBRO` (
  `isbn` INT NOT NULL,
  `titulo principal` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `subtitulo` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL,
  `editorial` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`isbn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ejemplos`.`EDICION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplos`.`EDICION` (
  `numero` INT NOT NULL,
  `año` VARCHAR(45) NOT NULL,
  `LIBRO_isbn` INT NOT NULL,
  INDEX `fk_EDICION_LIBRO_idx` (`LIBRO_isbn` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ejemplos`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplos`.`AUTOR` (
  `autor` VARCHAR(30) NOT NULL,
  `LIBRO_isbn` INT NOT NULL,
  INDEX `fk_AUTOR_LIBRO1_idx` (`LIBRO_isbn` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
