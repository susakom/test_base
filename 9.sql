SELECT 
    order_id, 
    ROUND(SUM(unit_price * quantity * (1 - discount)), 2) AS total_order
FROM order_details
WHERE 
    discount > 0 
GROUP BY order_id
HAVING ROUND(SUM(unit_price * quantity * (1 - discount)), 2) > 5000 
ORDER BY total_order DESC;