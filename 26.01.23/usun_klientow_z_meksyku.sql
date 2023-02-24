-- 1. Usuń klientów z Meksyku

DELETE FROM Customers
WHERE Country='Mexico';

-- 2. Usuń produkty o cenie mniejszej niż 15

DELETE FROM Products
WHERE Price<15;

-- 3. Zmień numer dostawcy produktu o id 2 na dostawcę o id 3



-- 4, Zmień osobę do kontaktów na siebie dla klienta o numerze 1

UPDATE Customers
SET ContactName='Arnold Boczek'
WHERE CustomerID=1

-- 5. Zmniejsz o 5% cenę wszystkich produktów dostarczanych przez dostawcę o numerze 7

UPDATE Products
SET Price=Price*0.95
WHERE SupplierID=7;

-- 6. Zwiększ cenę produktów z kategorii 1 o 10%

UPDATE Products
SET price=price*1.10
WHERE SupplierID=

-- 7. Dodaj nową kategorię produktów

INSERT INTO Categories
values
(9,'JAJO','eloelo')

-- ====================================================================

-- 1. Z tabeli Pracownicy (Employees) usuń pracownika o numerze 3 (EmployeeID). 

DELETE FROM Employees
WHERE EmployeeID=3;

-- 2. Dodaj jeszcze jednego dostawcę (tabela Shippers)

INSERT INTO Shippers
values
(5,'InPost','00');

-- 3. Podnieś cenę Tofu do 30 (ProductName -nazwa produktu, Price - cena, tabela Products)

UPDATE Products
SET Price=30
WHERE ProductName='Tofu';

-- 4. Podnieś o 10% cenę (Price) wszystkich produktów o nazwie (ProductName) zaczynającej się na literę C) (tabela Products)

UPDATE Products
SET Price=Price*1.1
WHERE ProductName='C%';

-- 5. Usuń z tabeli OrderDetails zamówienia o ID 10443 oraz 10440 (OrderID).

DELETE FROM OrderDetails
WHERE OrderID=10443 OR OrderID=10440;

-- 6. Zmień adres (Address), miasto (City) i kraj (Country) dostawcy o numerze 2  (SupplierID) na ul. Pocztową, Nakło, Polskę. (tabela Suppliers)