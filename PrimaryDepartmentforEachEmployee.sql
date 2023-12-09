select employee_id  ,department_id 
from employee
where primary_flag='Y' OR employee_id IN (
  SELECT employee_id
  FROM Employee
  GROUP BY employee_id
  HAVING COUNT(*) = 1
)
group by employee_id ,department_id 