WITH AvgSales AS (
    SELECT AVG(totalAmount) AS averageSales
    FROM (
        SELECT SUM(p.amount) AS totalAmount
        FROM customers c
        JOIN payments p ON c.customerNumber = p.customerNumber
        GROUP BY c.customerNumber
    ) AS customerSales
)
SELECT c.customerNumber, c.customerName, SUM(p.amount) AS totalSpent
FROM customers c
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber, c.customerName
HAVING SUM(p.amount) > 2 * (SELECT averageSales FROM AvgSales);