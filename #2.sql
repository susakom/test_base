SELECT 
    o.order_id, 
    o.order_date, 
    e.first_name, 
    e.last_name, 
    o.shipped_date, 
    o.ship_country
FROM 
    orders o 
JOIN 
    employees e 
    ON o.employee_id = e.employee_id 
 
WHERE
    o.ship_country = 'Brazil'
LIMIT 40;
