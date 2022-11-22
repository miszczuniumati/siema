-- Uczniowie(Imię, Nazwisko, NumerLegitymacji, IdKlasy)
-- Klasy(IdKlasy, Profil)
-- Przedmioty(IdPrzedmiotu, Nazwa)

CREATE DATABASE 4eP_matura;
USE 4eP_matura;

CREATE TABLE Klasy
(
    IdKlasy int PRIMARY KEY AUTO_INCREMENT,
    Profil varchar(50)
);

CREATE TABLE Przedmioty
(
    IdPrzedmiotu int PRIMARY KEY AUTO_INCREMENT,
    Nazwa varchar(250)
);

CREATE TABLE Uczniowie
(
NumerLegitymacji int AUTO_INCREMENT PRIMARY KEY,
Imie varchar(20),
Nazwisko varchar(100),
IdKlasy int
);

ALTER TABLE Uczniowie 
ADD FOREIGN KEY (IdKlasy)
REFERENCES Klasy(IdKlasy); 

CREATE TABLE Matura
(
    NumerLegitymacji int,
    IdPrzedmiotu int,
    PRIMARY KEY(NumerLegitymacji, IdPrzedmiotu)
);

ALTER TABLE Matura
ADD FOREIGN KEY (NumerLegitymacji)
REFERENCES Uczniowie(NumerLegitymacji),
ADD FOREIGN KEY Klasy(IdPrzedmiotu)

INSERT INTO Klasy VALUES(NULL,'LOGISTYK');
INSERT INTO Przedmioty VALUES(NULL,'Matematyka');
INSERT INTO Przedmioty VALUES(NULL,'Biologia');
INSERT INTO Uczniowie VALUES(NULL,'Piotr','Nowak',1);
INSERT INTO Matura VALUES(2,1);
INSERT INTO Matura VALUES(2,2);
