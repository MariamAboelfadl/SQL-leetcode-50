/* Write your T-SQL query statement below */
WITH CTE_SAL AS(
SELECT dep.name as Department , Emp.name as Employee ,Emp.salary as Salary,
DENSE_RANK() OVER (PARTITION BY dep.name ORDER BY Emp.salary DESC) AS SalaryRank
FROM Employee Emp
JOIN Department dep
ON Emp.departmentId = dep.id 
GROUP BY Emp.departmentId , Emp.name , dep.name , Emp.salary
) 
SELECT Department , Employee , Salary
FROM CTE_SAL
WHERE SalaryRank <=3