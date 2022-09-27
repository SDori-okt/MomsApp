-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: userlogin2
-- Source Schemata: userlogin
-- Created: Tue Sep 27 22:51:59 2022
-- Workbench Version: 8.0.30
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema userlogin2
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `userlogin2` ;
CREATE SCHEMA IF NOT EXISTS `userlogin2` ;

-- ----------------------------------------------------------------------------
-- Table userlogin2.userlogin
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `userlogin2`.`userlogin` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT 'Index, autoincrement',
  `lastName` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Vezet�kn�v',
  `firstName` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Keresztn�v',
  `loginName` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Bejelentkez�si n�v',
  `zipCode` SMALLINT NOT NULL COMMENT 'Ir�ny�t�sz�m',
  `location` VARCHAR(85) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'V�ros',
  `streetName` VARCHAR(100) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Utcan�v',
  `streetNumber` SMALLINT NULL DEFAULT NULL COMMENT 'H�zsz�m',
  `e-mail` VARCHAR(100) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'E-mail',
  `isAdmin` BINARY(1) NULL DEFAULT '0' COMMENT 'Jogosults�g - 1 = admin, 0 = felhaszn�l�',
  `password` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL,
  `isStreetPublic` BINARY(1) NULL DEFAULT '0' COMMENT 'Alap�rtelmezetten nem publikus!!!! �rt�ke alap�rtelmezetten 0',
  `isStreetNumberPublic` BINARY(1) NULL DEFAULT '0' COMMENT 'Alap�rtelmezetten nem publikus!!!! �rt�ke alap�rtelmezetten 0',
  `dateOfBirth` DATE NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `loginName` (`loginName` ASC) VISIBLE,
  UNIQUE INDEX `e-mail_UNIQUE` (`e-mail` ASC) VISIBLE,
  INDEX `ID` (`ID` ASC) VISIBLE)
ENGINE = InnoDB;
SET FOREIGN_KEY_CHECKS = 1;
