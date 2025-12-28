-- Write your MySQL query statement below
SELECT a.id
FROM Weather a
LEFT JOIN Weather b
  ON DATEDIFF(a.recordDate, b.recordDate) = 1
WHERE a.temperature > b.temperature;

-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).