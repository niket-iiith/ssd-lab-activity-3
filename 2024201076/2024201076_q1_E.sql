SELECT employeeNumber, firstName, lastName
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM employees m
    WHERE m.reportsTo = e.employeeNumber
);