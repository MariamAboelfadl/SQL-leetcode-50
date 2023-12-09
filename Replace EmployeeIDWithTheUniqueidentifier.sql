select e1.name,e0.unique_id
from EmployeeUNI e0
right join Employees e1
on e0.id=e1.id
