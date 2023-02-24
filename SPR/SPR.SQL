
Jeżeli w bazie danych ksiegarnia_internetowa do tabeli Ksiazki zostanie wpisana nowa książka z numerem autora 27, a autora o numerze 27 nie ma w bazie, to znaczy, że powstał błąd, który łatwo popełnić przy wprowadzaniu danych. Aby tego uniknąć, należy odpowiednio zdefiniować więzy integralności — wtedy serwer bazodanowy będzie automatycznie sprawdzał poprawność dokonywanych wpisów.

Sprawdzanie spójności w bazie danych odbywa się po jawnym zdefiniowaniu klucza obcego. Dla tabeli Ksiazki możemy zdefiniować klauzulę, która poinformuje bazę, że id_autora w tej tabeli to klucz obcy pochodzący z kolumny id_autora w tabeli Autor. Klauzulę dotyczącą ograniczeń klucza obcego trzeba umieścić za definicją kolumn w poleceniu CREATE TABLE lub ALTER TABLE.

Ogólna postać polecenia wygląda następująco:

          [CONSTRAINT nazwa] FOREIGN KEY (kolumna1, kolumna 2, ...)
          REFERENCE nazwa tabeli (kolumna1, kolumna 2, ...)

gdzie:

CONSTRAINT nazwa - jest nazwą ograniczenia, może zostać pominięta — wtedy ograniczeniu zostanie nadana nazwa systemowa;
FOREIGN KEY (kolumna1, kolumna 2, . . . ) - określa kolumny zawierające klucz obcy;
REFERENCE nazwa_tabeli (kolumna1, kolumna 2, . . . ) - określa, z której tabeli pochodzi klucz obcy i które kolumny są w niej kluczem podstawowym.
 

Przykład

Podczas tworzenia tabeli Ksiazki należy zdefiniować klauzulę ograniczeń klucza obcego dla kolumny id_autora:




 

W istniejącej tabeli (Ksiazki) można definiować klauzulę ograniczeń klucza obcego dla nowej kolumny (id_autora) podczas dodawania tej kolumny do tabeli:




 

W istniejącej tabeli (Ksiazki) dla istniejącego pola klucza obcego (id_autora) należy zdefiniować klauzulę ograniczeń klucza obcego przez zmodyfikowanie kolumny:






Klauzula REFERENCES we wszystkich przypadkach zdefiniuje ograniczenie dla klucza obcego. Nie będzie możliwe wpisanie w kolumnie id_autora tabeli Ksiazki wartości, która nie istnieje w kolumnie id_autora tabeli Autor.

W klauzuli można również zdefiniować nazwę ograniczenia klucza obcego.


Przykład



Klauzula CONSTRAINT Ksiazki_FK nadaje ograniczeniu klucza obcego nazwę Ksiazki_FK.

Przy tak zdefiniowanym ograniczeniu nałożonym na klucz obcy w tabeli Ksiazki zmiana lub usunięcie klucza podstawowego z tabeli Autor powoduje skutki w tabeli Ksiazki wynikające z zasad kaskadowego usuwania i aktualizowania danych.