SELECT  s.name AS name
FROM SalesPerson s
WHERE s.sales_id NOT IN ( 
    SELECT o.sales_id
    FROM orders o 
    JOIN company c ON o.com_id = c.com_id AND c.name = 'RED' 
);