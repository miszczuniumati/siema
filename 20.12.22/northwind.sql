-- 1. Wyświetl nazwy firm klientów  i daty zamówień

-- 2, Wyświetl dane spedytora z datą zamówienia

-- 3. Wyświetl nazwiska pracowników i daty zamówień

-- 4. Wyświetl nazwy towarów, nazwy kategorii

-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień

-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta

SELECT ProductName, CategoryName, OrderDate, CustomerID
FROM Products 
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID 
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.productID 
INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID

-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta

SELECT ProductName, CategoryName, OrderDate, CustomerName
FROM Customers
INNER JOIN 

-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)



-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów
