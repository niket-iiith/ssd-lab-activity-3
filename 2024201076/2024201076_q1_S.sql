SELECT DISTINCT pl.productLine, o.city
FROM productlines pl
CROSS JOIN offices o;