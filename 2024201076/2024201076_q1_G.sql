SELECT customerName
FROM customers c
WHERE customerNumber NOT IN (
    SELECT customerNumber
    FROM orders
);