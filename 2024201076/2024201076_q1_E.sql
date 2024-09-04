SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
LEFT JOIN employees m ON e.employeeNumber = m.reportsTo
WHERE m.employeeNumber IS NULL;