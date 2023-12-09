select e0.name
from Employee e0
inner join Employee e1
on e0.id =e1. managerId
group by e0.name,e1. managerId
having count(*)>=5