select
category_id, COUNT(*) as number_of_products
from products
where units_in_stock < units_on_order
group by category_id
having COUNT(*) > 1
order by COUNT(*) asc