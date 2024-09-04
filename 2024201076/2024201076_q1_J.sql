SELECT productCode, productName, 
    (SELECT SUM(quantityOrdered) 
     FROM orderdetails 
     WHERE productCode = p.productCode) AS totalQuantity
FROM products p;