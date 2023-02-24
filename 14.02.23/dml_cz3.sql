-- 1. Dodaj nowy towar:   'cukierki' o id 78, dostarczany przez dostawcę o id 1  z kategorii o id 2  (słodycze), cena 15, jednostka (unit) 10

INSERT INTO Products
(ProductID,SupplierID,CategoryID,Price,Unit)
VALUES
(78,1,2,15,10);

-- 2. Dodaj nowego kuriera (shippers) - GPL, telefon 22 123 45 67

INSERT INTO Shippers
VALUES
(6,'GPL','22 123 45 67');

-- 3. dopisz nowy towar: 'karty' o cenie 20. podaj tylko te dwa pola

INSERT INTO Products
(ProductName, Price)
VALUES
('karty',20);

-- 4. zmień cenę produktu o nazwie karty na 10

UPDATE Products
SET Price='10'
WHERE ProductName='karty';

-- 5. zmień nazwisko pracownika (employees) o id 3 na 'Fuller' (employeeID, LastName)

UPDATE Employees
SET LastName='Fuller'
WHERE EmployeeID=3

-- 6. zwiększ cenę wszystkich produktów o 10 (products, price)

UPDATE Products
SET Price='Price+10'

-- 7. Zmniejsz cenę wszystkich produktów o 10%

UPDATE Products
SET Price='Price*0.9'

-- 8. zwiększ cenę o 5% wszystkich produktów dostarczanych przez dostawcę o id 4 (supplierID)

UPDATE Products
SET Price='Price*1.05'
WHERE SupplierID=4

-- 9. zmień dostawcę produktów z kategorii 7 na dostawcę o id 3

UPDATE Products
SET SupplierID=3
WHERE CategoryID=7

-- 10. w zamówieniu 10248 zmień numer pracownika na 3, datę na 5 lipca 1996 i numer dostawcy na 2 

UPDATE Orders
SET employeeID=3,OrderDate="1996-07-05",ShipperID=2
WHERE OrderID='10248'

-- 11. Usuń klientów o nazwie na literę M

DELETE FROM Customers
WHERE CustomerName LIKE 'M%'
 

-- 12. usuń produkty o cenie pomiędzy 10 a 20

DELETE FROM Products
WHERE PRICE BETWEEN 10 AND 20;