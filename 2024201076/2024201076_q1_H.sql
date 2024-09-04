SELECT p.productName, o.city
FROM products p
CROSS JOIN offices o;