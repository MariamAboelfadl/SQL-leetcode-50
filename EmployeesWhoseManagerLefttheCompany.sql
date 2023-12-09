/* Write your T-SQL query statement below */
select distinct employee_id
from Employees 
where manager_id not in 
( select employee_id
from employees ) and salary <30000