-- 3. Które osoby figurujące w bazie jako czytelnicy, nie wypożyczyły ani razu choćby jednej książki? (tabele: Czytelnik, Wypożyczenia, pola w kwerendzie: Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypożyczenia)
SELECT Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypozyczenia FROM
Czytelnik
LEFT JOIN Wypozyczenia ON czytelnik.ID = Wypozyczenia.czytelnik_ID
 
-- 4. Kto nie ma kota? (Tabele: Ludzie, Koty, pola w kwerendzie: Imie, Nazwisko, Imie_kota, Rasa)
SELECT imię, Nazwisko, Imie_kota, Rasa FROM Ludzie 
INNER JOIN Koty ON ludzie.id = Koty.id_wlasciciela
-- 5.Jak ma na imię kot bez właściciela?   (Tabele: Ludzie, Koty, pola w kwerendzie: Imie_kota oraz nie wyświetlane pole Nazwisko - tylko dla kryterium) 
SELECT Imie_kota FROM Koty 
INNER JOIN Ludzie ON ludzie.id = koty.id_wlasciciela
WHERE Nazwisko IS NOT NULL
 
-- 6. Wyświetl informacje o uczniach, którzy nie mają ocen  (tabele: Uczniowie, Oceny, pola w kwerendzie: imie, nazwisko, ocena, data)
 
 SELECT imie,nazwisko.ocena,data
 FROM Uczniowie LEFT JOIN Oceny ON Uczniowie.Iducznia=oceny.IDucznia,
 WHERE Ocena IS NULL

-- 7. Wyświetl informacje o przedmiotach, z których nie wystawiono żadnych ocen (tabele: Oceny, Przedmioty, pola w kwerendzie: Nazwa_przedmiotu, Nazwisko_nauczyciela, Data)