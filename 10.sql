SELECT 
    YEAR(order_date) AS order_year,
    employee_id,
    Round(SUM(freight), 2) AS total_freight
FROM 
    orders
GROUP BY 
    YEAR(order_date),
    employee_id
HAVING 
    SUM(freight) > 200
ORDER BY 
    YEAR(order_date) ASC,
    employee_id ASC;
