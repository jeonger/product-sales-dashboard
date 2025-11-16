-- Data Preview
SELECT * FROM sales_data LIMIT 5;

--Total Orders
SELECT COUNT(*) AS total_orders
FROM sales_data;


--Revenue by Region
SELECT 
    region, 
    SUM(quantity * unit_price) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Revenue by Category
SELECT 
    category, 
    SUM(quantity * unit_price) AS total_revenue
FROM sales_data
GROUP BY category
ORDER BY total_revenue DESC;
