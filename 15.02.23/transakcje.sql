-- Skrypt wykonaj do bazy szkolainicjały

-- 1 Napisz kod transakcji, która

START TRANSACTION

-- A. wyświetli dane (id, imię i nazwisko) nauczycieli

SELECT id, imie, nazwisko
FROM nauczyciele;

-- B. Wypisze dane (id, nazwa) przedmiotów

SELECT id,nazwa
FROM przedmioty;

-- C. Dopisz Aleksandrę Nowak jako nowego nauczyciela informatyki.

INSERT INTO uczy
(nauczyciel, przedmiot)
values
(10,2);

-- D. Wyświetli dane (imie, nazwisko) osób uczących informatyki.

SELECT imie, nazwisko
FROM nauczyciele
JOIN uczy ON nauczyciele.id=uczy.nauczyciel
JOIN przedmioty ON przedmioty.id=uczy.przedmiot
WHERE przedmioty.nazwa='Informatyka';

-- C.  Zatwierdzi transakcję

COMMIT;


-- 2. Napisz kod transakcji, która

START TRANSACTION

-- A.Początek transakcji -  Wyświetli listę przedmiotów (id, nazwa)



-- B. Zmieni nazwę historii na Historia i społeczeństwo
-- C. Wyświetli listę przedmiotów (id, nazwa)
-- D. zakładamy, że jednak zmieniono zdanie, wycofaj się z transakcji
-- E. Wyświetl listę przedmiotów (jaką nazwę ma przedmiot o id 9? ____________, czy zmiana została zapisana w bazie? _______)
-- --------------------------------------------------------------------------------------------------------------

-- 3. Napisz kod transakcji, która
-- A. wyświetli listę uczniów (id, imie, nazwisko, klasa)
-- B. przesunie wszystkich uczniów klasy pierwszej do drugiej, a drugiej do trzeciej (dwa zapytania)
-- C. Wyświetl listę uczniów(id, imie, nazwisko, klasa)
-- D. zatwierdź transakcję 
-- E. Wyświetl listę uczniów(id, imie, nazwisko, klasa)
-- F. Czy zmiany zostały zapisane w bazie? __________
