SELECT
order_id,
order_date,
employee_id,
shipped_date,
ship_country
FROM orders 
WHERE ship_country = 'Brazil' 
LIMIT 20; 