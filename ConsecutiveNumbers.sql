WITH cte AS
(
    SELECT id, num, lag(num, 1) OVER (ORDER BY id) as PrevNum,
    lead(num, 1) OVER (ORDER BY id) as aftvNum
    
    FROM logs
)
SELECT cte.PrevNum as ConsecutiveNums
FROM cte,logs
WHERE logs.num = cte.PrevNum and logs.num =cte.aftvNum and logs.id=cte.id
GROUP BY cte.PrevNum