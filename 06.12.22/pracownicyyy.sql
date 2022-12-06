CREATE TABLE IF NOT EXISTS `pracownicy` (
  `idpracownika` INT NOT NULL AUTO_INCREMENT,
  `imie` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  PRIMARY KEY (`idpracownika`));



-- -----------------------------------------------------
-- Table `mydb`.`jezyk_programowania`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jezyk_programowania` (
  `idjezyk_programowania` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(45) NULL,
  PRIMARY KEY (`idjezyk_programowania`));



-- -----------------------------------------------------
-- Table `mydb`.`jezyk_obcy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jezyk_obcy` (
  `idjezyk_obcy` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(45) NULL,
  PRIMARY KEY (`idjezyk_obcy`));



-- -----------------------------------------------------
-- Table `mydb`.`pracownicy_has_jezyk_obcy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pracownicy_has_jezyk_obcy` (
  `idpracownika` INT NOT NULL,
  `idjezyk_obcy` INT NOT NULL,
  PRIMARY KEY (`idpracownika`, `idjezyk_obcy`),  
  FOREIGN KEY (idpracownik) REFERENCES pracownicy(idpracownika),
  FOREIGN KEY (idjezyk_obcy));


-- -----------------------------------------------------
-- Table `mydb`.`pracownicy_has_jezyk_programowania`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pracownicy_has_jezyk_programowania` (
  `idpracownika` INT NOT NULL,
  `idjezyk_programowania` INT NOT NULL,
  PRIMARY KEY (`idpracownika`, `idjezyk_programowania`),  
  FOREIGN KEY (idpracownik) REFERENCES pracownicy(idpracownika),
  FOREIGN KEY (idjezyk_programowania) REFERENCES jezyk_programowania(idjezyk_programowania));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
