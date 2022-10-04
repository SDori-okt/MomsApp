-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: userlogin2
-- Source Schemata: userlogin
-- Created: Wed Sep 28 23:17:28 2022
-- Workbench Version: 8.0.30
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema userlogin2
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `userlogin2` ;
CREATE SCHEMA IF NOT EXISTS `userlogin2` ;

-- ----------------------------------------------------------------------------
-- Table userlogin2.childdata
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `userlogin2`.`childdata` (
  `childID` INT NOT NULL AUTO_INCREMENT,
  `childName` VARCHAR(45) NOT NULL,
  `childAge` TINYINT NOT NULL,
  `childSex` VARCHAR(10) NOT NULL,
  `typeOfHappening` VARCHAR(45) NOT NULL COMMENT 'Milyen programot szeretne a szülõ',
  `timeOfHappening` VARCHAR(45) NOT NULL COMMENT 'A nap melyik részében szeretne programot a szülõ',
  `placeOfHappening` VARCHAR(45) NOT NULL COMMENT 'Milyen helyet részesít elõnyben a szülõ',
  `ID` INT NOT NULL,
  PRIMARY KEY (`childID`),
  UNIQUE INDEX `childID_UNIQUE` (`childID` ASC) VISIBLE,
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  CONSTRAINT `ID`
    FOREIGN KEY (`ID`)
    REFERENCES `userlogin2`.`userlogin` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- ----------------------------------------------------------------------------
-- Table userlogin2.userlogin
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `userlogin2`.`userlogin` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT 'Index, autoincrement',
  `lastName` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Vezetéknév',
  `firstName` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Keresztnév',
  `loginName` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Bejelentkezési név',
  `zipCode` SMALLINT NOT NULL COMMENT 'Irányítószám',
  `location` VARCHAR(85) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'Város',
  `streetName` VARCHAR(100) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Utcanév',
  `streetNumber` SMALLINT NULL DEFAULT NULL COMMENT 'Házszám',
  `e-mail` VARCHAR(100) CHARACTER SET 'utf8mb3' NOT NULL COMMENT 'E-mail',
  `isAdmin` BINARY(1) NULL DEFAULT '0' COMMENT 'Jogosultság - 1 = admin, 0 = felhasználó',
  `password` VARCHAR(20) CHARACTER SET 'utf8mb3' NOT NULL,
  `isStreetPublic` BINARY(1) NULL DEFAULT '0' COMMENT 'Alapértelmezetten nem publikus!!!! Értéke alapértelmezetten 0',
  `isStreetNumberPublic` BINARY(1) NULL DEFAULT '0' COMMENT 'Alapértelmezetten nem publikus!!!! Értéke alapértelmezetten 0',
  `dateOfBirth` DATE NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `loginName` (`loginName` ASC) VISIBLE,
  UNIQUE INDEX `e-mail_UNIQUE` (`e-mail` ASC) VISIBLE,
  INDEX `ID` (`ID` ASC) VISIBLE)
ENGINE = InnoDB;
SET FOREIGN_KEY_CHECKS = 1;
