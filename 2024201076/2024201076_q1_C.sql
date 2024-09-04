SELECT DISTINCT c.customerNumber, c.customerName
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
LEFT JOIN payments p ON c.customerNumber = p.customerNumber
WHERE o.orderNumber IS NOT NULL OR p.customerNumber IS NOT NULL;