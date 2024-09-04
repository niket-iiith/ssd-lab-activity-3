SELECT DISTINCT city
FROM (
    SELECT city FROM offices
    UNION
    SELECT city FROM customers
) AS allCities;