-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema exe4session
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema exe4session
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exe4session` DEFAULT CHARACTER SET utf8 ;
USE `exe4session` ;

-- -----------------------------------------------------
-- Table `exe4session`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exe4session`.`user` (
  `iduser` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(255) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `uniqid` VARCHAR(64) NOT NULL,
  `actif` TINYINT UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`iduser`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
