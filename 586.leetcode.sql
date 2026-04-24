-- if only one maximum exist
SELECT  customer_number
FROM Orders
GROUP BY  customer_number
ORDER BY  COUNT(order_number) DESC
LIMIT 1;
-- if multiple customer exist
SELECT  customer_number
FROM (
    SELECT customer_number,COUNT(order_number) AS cnt
    FROM Orders
    GROUP BY customer_number
) t
WHERE t.cnt = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(order_number) AS cnt
        FROM Orders
        GROUP BY customer_number
    ) x
);