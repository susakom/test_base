-- ананлогично №2 но с дополнительными ключами 
select 
    o.order_id,
    o.order_date,
    d.company_name,
    d.contact_name,
    d.contact_title,
    e.first_name,
    e.last_name,
    o.shipped_date,
    o.ship_country
from orders o
join employees e on o.employee_id = e.employee_id 
join customers d on o.customer_id = d.customer_id
where o.ship_country = 'Brazil'
limit 40;
