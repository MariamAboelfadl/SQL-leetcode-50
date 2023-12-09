with cte as
(
    select product_name ,sum(unit) as unit
   from orders,products
where orders.product_id=products.product_id and month(order_date)='02' and year(order_date)='2020'
group by product_name 

)
select *
from cte
where cte.unit>=100
