/* Write your T-SQL query statement below */
with cte as(
select turn,sum(weight) over(order by turn) s
from Queue
)
select top 1 person_name
from cte ,queue q
where  cte.turn  =q.turn and cte.s <=1000 
order by q.turn desc