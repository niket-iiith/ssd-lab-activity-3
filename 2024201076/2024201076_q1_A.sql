SELECT e.employeeNumber, e.firstName, e.lastName, SUM(od.quantityOrdered * od.priceEach) AS totalSales
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders o2 ON c.customerNumber = o2.customerNumber
JOIN orderdetails od ON o2.orderNumber = od.orderNumber
WHERE o.country = 'USA'
GROUP BY e.employeeNumber, e.firstName, e.lastName
ORDER BY totalSales DESC
LIMIT 5;