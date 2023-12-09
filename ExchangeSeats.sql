/* Write your T-SQL query statement below */
SELECT id, ISNULL(CASE
           WHEN id % 2 = 1 THEN LEAD(student, 1) OVER(ORDER BY id)
            ELSE LAG(student, 1) OVER(ORDER BY id)END,
           student) student
            
FROM Seat
ORDER BY id