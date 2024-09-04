WITH EmployeeSales AS (
    SELECT e.employeeNumber, e.firstName, e.lastName, SUM(od.quantityOrdered * od.priceEach) AS totalSales
    FROM employees e
    JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
    JOIN orders o ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY e.employeeNumber, e.firstName, e.lastName
)
SELECT employeeNumber, firstName, lastName, totalSales
FROM EmployeeSales
ORDER BY totalSales DESC
LIMIT 3;