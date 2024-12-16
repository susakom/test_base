select
country, COUNT(*) AS "number_of_customers"
from customers
group by country
order by COUNT(*) desc