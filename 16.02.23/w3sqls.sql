-- 1. Utwórz tabelę KatalogConfections zawierającą wszystkie dane o produktach z kategorii Confections

CREATE TABLE KatalogConfections AS
SELECT Products.*
FROM Products
INNER JOIN Categories ON Products.categoryID=Categories.categoryID
WHERE CategoryName='Confections'


-- 2. ze względu na nowy podatek podnieś cenę wszystkich artykułów kategorii Confections o 20% w tabeli Products

UPDATE Products
SET Price=Price*1.2
WHERE CategoryID='Confections'

-- 3. Zmień nazwę tabeli KatalogConfections na KatalogTaniejJuzBylo 

ALTER TABLE KatalogConfections
RENAME TO KatalegTaniejJuzBylo

-- 4. Skopiuj do tabeli KatalogTaniejJuzBylo wszystkie produkty z kategorii Beverages

INSERT INTO KatalegTaniejJuzBylo
SELECT products.*
FROM Products
INNER JOIN Categories ON Categories.CategoryID=Products.CategoryID
WHERE CategoryName="Beverages"

-- 5. Do tabeli Archiwum przenieś dane z tabeli Orders dotyczące zamówień z 1996 roku (skopiuj - jeśli trzeba utwórz tabelę -i potem usuń)

CREATE TABLE Archiwum AS
SELECT *
FROM Orders
WHERE OrderDate LIKE '1996-%'

DELETE FROM Archiwum
WHERE OrderDate LIKE '1996-%'

-- 6. Utwórz tabelę  Archiwum_Kontrahentów z danymi: nazwa dostawcy lub nazwa klienta, osoba do kontaktu, miasto, kraj z Włoch

-- 7. Usuń klientów i dostawców z Włoch z tabel Customers i Suppliers (dwoma zapytaniami)

-- 8. Do tabeli Archiwum_Kontrahentów dodaj kontrahentów z Niemiec i Francji

-- 9. Z tabeli Customers wybierz dane klientów z Niemiec i dodaj ich do tabeli Suppliers

-- 10. Utwórz tabelę Archiwum zawierającą wszystkie dane z tabeli Orders dotyczące zamówień z 1996 roku

-- 11. Usuń z tabeli Orders wszystkie zamówienia z 1996 roku

-- 12. Do tabeli Archiwum dodaj wszystkie dane dotyczące zamówień ze stycznia 1997 roku