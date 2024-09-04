SELECT p.productCode, p.productName
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName
HAVING SUM(od.quantityOrdered) > 1000;