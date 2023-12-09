SELECT s.user_id, ROUND(AVG(CASE WHEN action = 'confirmed' then 1.00 else 0.00 end),2) AS confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_Id
GROUP BY s.user_id