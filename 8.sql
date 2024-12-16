select
ship_country, COUNT(*) as number_of_orders,
ROUND(AVG(freight), 2) as average_freight
from orders
where ship_country IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela')
group by ship_country
order by COUNT(*) asc