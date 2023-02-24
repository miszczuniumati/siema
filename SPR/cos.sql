INSERT INTO tabela
VALUES (wartosc1, wartosc2, …)

Podajemy wartości zgodnie z kolejnością pól w tabeli (dla wszystkich pól)

INSERT INTO tabela (pole1, pole2, ..)
VALUES (wartosc1, wartosc2, …)

Podajemy wartości zgodnie z kolejnością wypisanych pól (nie muszą być wszystkie pola i nie muszą być w takiej kolejności jak w tabeli)

UPDATE tabela
SET pole1=wyrazenie1, pole2=wyrazenie2, … 
WHERE warunek;

UPDATE pracownicy
SET pensja = pensja * 1.1
WHERE staz > 2; 

UPDATE Pracownicy
SET Placa_pod = Placa_pod *1.2
WHERE Etat = "PROFESOR"

UPDATE Zespoly 
SET adres=„Staszic 11"
WHERE nazwa="algorytmy

DELETE FROM tabela
WHERE warunek;

DELETE FROM pracownicy
WHERE imie = 'Jan' AND nazwisko = 'Kowalski'; 

DELETE FROM Pracownicy
WHERE etat="DYREKTOR"

DELETE FROM Pracownicy
WHERE nazwisko=„Kowalski"

