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
  `typeOfHappening` VARCHAR(45) NOT NULL COMMENT 'Milyen programot szeretne a sz�l�',
  `timeOfHappening` VARCHAR(45) NOT NULL COMMENT 'A nap melyik r�sz�ben szeretne programot a sz�l�',
  `placeOfHappening` VARCHAR(45) NOT NULL COMMENT 'Milyen helyet r�szes�t el�nyben a sz�l�',
  `ID` INT NOT NULL,
  PRIMARY KEY (`childID`),
  UNIQUE INDEX `childID_UNIQUE` (`childID` ASC),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC),
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
  UNIQUE INDEX `loginName` (`loginName` ASC),
  UNIQUE INDEX `e-mail_UNIQUE` (`e-mail` ASC),
  INDEX `ID` (`ID` ASC))
ENGINE = InnoDB;
SET FOREIGN_KEY_CHECKS = 1;
