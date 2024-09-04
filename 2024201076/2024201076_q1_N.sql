SELECT DISTINCT o.city
FROM offices o
JOIN customers c ON o.city = c.city;