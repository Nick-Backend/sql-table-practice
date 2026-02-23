DELETE FROM products
WHERE id IN(
    SELECT id 
    FROM products
    ORDER BY price ASC LIMIT 3
);