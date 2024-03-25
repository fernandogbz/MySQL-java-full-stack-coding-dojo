-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_dojos_ninjas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_dojos_ninjas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_dojos_ninjas` DEFAULT CHARACTER SET utf8 ;
USE `bd_dojos_ninjas` ;

-- -----------------------------------------------------
-- Table `bd_dojos_ninjas`.`dojos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_dojos_ninjas`.`dojos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `ubicacion` VARCHAR(45) NOT NULL,
  `fecha_creacion` DATETIME NOT NULL DEFAULT NOW(),
  `fecha_actualizacion` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_dojos_ninjas`.`ninjas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_dojos_ninjas`.`ninjas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `habilidad` VARCHAR(45) NOT NULL,
  `fecha_creacion` DATETIME NOT NULL DEFAULT NOW(),
  `fecha_actualizacion` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  `dojo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ninjas_dojos_idx` (`dojo_id` ASC) VISIBLE,
  CONSTRAINT `fk_ninjas_dojos`
    FOREIGN KEY (`dojo_id`)
    REFERENCES `bd_dojos_ninjas`.`dojos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;