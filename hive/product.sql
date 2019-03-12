-- List of products with number of times they have been purchased [ sorted by total purchased]
SELECT product_id, count(*) as total_units_purchased from black_friday GROUP BY product_id ORDER BY total_units_purchased DESC;

-- Best Selling product  or top 5 
SELECT product_id, count(*) as total_units_purchased from black_friday GROUP BY product_id ORDER BY total_units_purchased DESC LIMIT 5;



