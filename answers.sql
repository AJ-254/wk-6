-- Question 1 (INNER JOIN)
-- Get firstName, lastName, email, and officeCode of all employees by
-- performing an INNER JOIN between employees and offices on officeCode.

SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e
INNER JOIN offices AS o
ON e.officeCode = o.officeCode;

-- Question 2 (LEFT JOIN)
-- Get productName, productVendor, and productLine from products by
-- LEFT JOINing products with productlines on productLine.

SELECT p.productName, p.productVendor, p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
ON p.productLine = pl.productLine;

-- Question 3 (RIGHT JOIN)
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders by
-- RIGHT JOINing customers with orders on customerNumber.

SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customerNumber = o.customerNumber
LIMIT 10;