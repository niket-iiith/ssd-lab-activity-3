SELECT p.productCode, p.productName, SUM(od.quantityOrdered) AS totalQuantity
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName;