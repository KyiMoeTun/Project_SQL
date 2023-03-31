-- INNER JOIN
-- Question 1: Retrieve the names of all products with their corresponding manufacturer names.
SELECT Products.Name AS Product_Name, Manufacturers.Name AS Manufacturer_Name
FROM Products
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;

-- Question 2: Retrieve the names of all products with their corresponding manufacturer names, but exclude products from 'Sony'.
SELECT Products.Name AS Product_Name, Manufacturers.Name AS Manufacturer_Name
FROM Products
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
WHERE Manufacturers.Name != 'Sony';

-- GROUP BY
-- Question 3: Find the total number of products for each manufacturer.
SELECT Manufacturers.Name AS Manufacturer_Name, COUNT(*) AS Total_Products
FROM Products
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
GROUP BY Manufacturers.Name, Products.Manufacturer;

-- MAX()
-- Question 4: Find the most expensive product for each manufacturer.
SELECT Manufacturers.name, MAX(price) as max_price
FROM Products
INNER JOIN Manufacturers ON Products.manufacturer = Manufacturers.code
GROUP BY Manufacturers.name;

-- AVG()
-- Question 5: Find the average price of all products.
SELECT AVG(price)as avg_price
FROM Products;

-- subquery
-- Question 6: List the products whose prices are above the average price of all products.
SELECT name 
FROM Products
WHERE price > 
(SELECT AVG(price)as avg_price
FROM Products
);

-- SUM()
-- Question 7: Find the total value of products for each manufacturer.
SELECT Manufacturers.name, SUM(price) as total
FROM Products
INNER JOIN Manufacturers ON Products.manufacturer = Manufacturers.code
GROUP BY Manufacturers.name;

-- LEFT JOIN
-- Question 8: List the manufacturers with no products.
SELECT Manufacturers.name
FROM Manufacturers
LEFT JOIN Products ON Manufacturers.code = Products.manufacturer
WHERE Products.manufacturer IS NULL;

-- ORDER BY
-- Question 9: List the names of products and their manufacturers, sorted by price in descending order.
SELECT Products.Name AS Product_Name, Manufacturers.Name AS Manufacturer_Name, Price
FROM Products
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
ORDER BY Price DESC;

-- LIMIT
-- Question 10: Retrieve the top 3 most expensive products and their manufacturer names.
SELECT Products.Name AS Product_Name, Manufacturers.Name AS Manufacturer_Name, Products.Price
FROM Products
INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
ORDER BY Products.Price DESC
LIMIT 3;