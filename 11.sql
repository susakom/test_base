select
employee_id, COUNT(*) AS number_of_delayed_orders
from orders
where required_date < shipped_date
group by employee_id
order by COUNT(*) desc