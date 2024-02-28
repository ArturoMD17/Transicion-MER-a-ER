-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ER-ED
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ER-ED
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ER-ED` DEFAULT CHARACTER SET utf8 ;
USE `ER-ED` ;

-- -----------------------------------------------------
-- Table `ER-ED`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-ED`.`EMPLEADO` (
  `num_empleado` INT NOT NULL,
  `num_dep` INT NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `fecha_ingreso` DATE NOT NULL,
  PRIMARY KEY (`num_dep`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ER-ED`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-ED`.`DEPARTAMENTO` (
  `nombre` VARCHAR(20) NOT NULL,
  `presupuesto` INT NOT NULL,
  `EMPLEADO_num_dep` INT NOT NULL,
  INDEX `fk_DEPARTAMENTO_EMPLEADO_idx` (`EMPLEADO_num_dep` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
