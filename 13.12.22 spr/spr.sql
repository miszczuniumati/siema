CREATE TABLE Swiniaczek
(
    nrSwiniaczka int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(50),
    waga dec,
    data_urodzenia date,
    nr_chlewika int,
    FOREIGN KEY (nr_chlewika) REFERENCES Chlewik(nr_chlewika)

);

CREATE TABLE Chlewik
(
    nr_chlewika int PRIMARY KEY AUTO_INCREMENT,
    miejscowosc varchar(50),
    nazwisko varchar(30)
);

CREATE TABLE Pracownik
(
    IDpracownika int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(50),
    nazwisko varchar(30)
);

CREATE TABLE Umiejetnosc
(
    IDumiejetnosci int PRIMARY KEY AUTO_INCREMENT,
    umiejetnosc varchar(35)
);

INSERT INTO Pracownik
(imie,nazwisko)
values
("Marek", "Mostowiak"),
("Jan", "Kowalski");

INSERT INTO Umiejetnosc
(umiejetnosc)
values
('pisanie'),
('czytanie');