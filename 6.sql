select distinct
contact_title, COUNT(*) AS total_contact_title
from customers
group by contact_title
order by COUNT(*) DESC, contact_title asc