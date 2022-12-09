-- 1.        Utwórz tabele:  Bocian (nr bociana, nazwa, miejscowość gniazdowania, kod pocztowy, data przylotu, pojemność żołądka) i Żaba (nr żaby, nazwa, nr bociana który ją zjadł, data zjedzenia). Określ prawidłowo typy danych, klucze, dodaj więzy integralności klucza obcego

CREATE TABLE Bocian
(
    IDBociana int PRIMARY KEY AUTO_INCREMENT,
    Nazwa varchar(250),
    Miejscowosc varchar(250),
    KodPocztowy char(6),
    DataPrzylotu date,
    PojemnoscZoladka int
);

CREATE TABLE Zaba
(
    IDZaby int PRIMARY KEY AUTO_INCREMENT,
    Nazwa varchar(250),
    IDBociana int,
    dataZjedzenia date,
    FOREIGN KEY (IDBociana) REFERENCES Bocian(IDBociana)
);

INSERT INTO Bocian
(Nazwa, Miejscowosc)
values
('Kajtek','Naklo');

INSERT INTO Zaba
(Nazwa, IDBociana)
values
('Zabka', 1)

-- 2.

-- A. utwórz tabele:  Uczeń (IDUcznia, imie, nazwisko) oraz  Hobby(IDHobby, hobby) , określ prawidłowo typy danych oraz klucze. 

CREATE TABLE Uczen
(
    IDUcznia int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(50),
    nazwisko varchar(50)
);

CREATE TABLE Hobby
(
    IDHobby int AUTO_INCREMENT PRIMARY KEY,
    hobby varchar(120)
);

CREATE TABLE HobbyUcznia
(
    IDUcznia int,
    IDHobby int,
    PRIMARY KEY (IDUcznia, IDHobby),
    FOREIGN KEY (IDUcznia) REFERENCES Uczen(IDUcznia),
    FOREIGN KEY (IDHobby) REFERENCES Hobby(IDHobby)
);

-- B. Wprowadź dane: dwóch uczniów, trzy różne hobby,

INSERT INTO Uczen
values
(1, 'Jacek', 'Jaworek');

-- C. Dodaj więzy integralności klucza obcego. Wszystkie tabele powinny mieć prawidłowo określone klucze
-- E. Wprowadź dane: pierwszy uczeń ma dwa różne zainteresowania, drugi trzy. 

