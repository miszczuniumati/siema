CREATE TABLE Towary(
    ID int PRIMARY KEY AUTO_INCREMENT,
    cena int,
    gatunek int NOT NULL
);

CREATE TABLE Gatunki(
    ID int PRIMARY KEY AUTO_INCREMENT,
    gatunek char(20) UNIQUE NOT NULL 
);
ALTER TABLE Towary
CONSTRAINT gatunki_fk FOREIGN KEY (gatunek) REFERENCE Gatunki(gatunek);

CREATE TABLE Dziedzina(
    ID int PRIMARY KEY,
    KOD char(4),
    Nazwa varchar(50) NOT NULL UNIQUE
);