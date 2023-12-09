select p.product_id,
isnull(round((cast(sum(p.price * u.units) as float)/cast(sum(u.units)as float)),2) ,0)as average_price
from UnitsSold u
right join Prices p
on u.product_id = p.product_id and u.purchase_date between start_date and end_date or purchase_date is null
group by p.product_id