-- 1.Imię i nazwisko pracownika oraz region, w którym pracuje.

-- dane wybierz z tabel: Pracownicy oraz Oddziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały

SELECT imie, nazwisko, region
FROM pracownicy
    INNER JOIN oddzialy ON pracownicy.NrRozliczOddz=oddzialy.NrRozlicz;

-- 2.Imię i nazwisko pracownika, nazwa i ilość sprzedanych produktów.

-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)

SELECT imie, nazwisko, nazwaproduktu, ilosc
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.Nr=sprzedaz.Nrpracownika;

-- 3.Imię i nazwisko pracownika, nazwa i punktacja produktu oraz ilość sprzedanych produktów.

-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)

-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)

SELECT imie, nazwisko, nazwa, punktacja, ilosc
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.Nr=sprzedaz.Nrpracownika
    INNER JOIN produkty ON pracownicy.nazwaproduktu=produkty

-- 4.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu.

-- sumę punktów odnajdziesz, gdy pomnożysz Ilosc i Punktacje

-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)

-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)

SELECT imie, nazwisko, nazwa, ilosc*punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.Nrpracownika
    INNER JOIN produkty ON sprzedaz.nazwaproduktu=produkty.nazwa;

-- 5.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu – tylko dla pracowników z oddziału w Warszawie

-- sumę punktów odnajdziesz, gdy pomnożysz Ilosc i Punktacje

-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)

-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)

-- do tego dodaj tabelę Odziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały

-- w warunku wybierz tylko Miejscowsc 'Warszawa'

SELECT imie, nazwisko, nazwa, ilosc*punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.Nrpracownika
    INNER JOIN produkty ON sprzedaz.nazwaproduktu=produkty.nazwa
    INNER JOIN oddzialy ON pracownicy.NrRozliczOddz=oddzialy.NrRozlicz
    WHERE Miejscowosc="Warszawa";

-- 6.Imiona, nazwiska i numery pracowników wyróżnionych w zeszłym okresie.

-- połącz tabelę Pracownicy i Wyroznieni (pole łączące to NrPracownika i Nr), w zestawieniu pojawią się tylko Ci pracownicy, których numery są w tabeli Wyróżnieni - sprawdź