-- Total Users 
SELECT count(distinct(user_id)) as total_users from black_friday;

-- Total number of orders
SELECT count(*) as total_orders from black_friday;

-- Total revenue 
SELECT SUM(purchase_amount) as total_revenue from black_friday;

-- Total orders based on gender
SELECT gender , count(*) as total_orders from black_friday GROUP BY gender;

-- Total orders and purchase amount based on gender
SELECT gender, count(*) as total_orders, SUM(purchase_amount) as total_spent from black_friday GROUP BY gender;

-- Total orders based on occupation
SELECT occupation , count(*) as total_orders from black_friday GROUP BY occupation;

-- Total orders and purchase amount based on occupation
SELECT occupation, count(*) as total_orders, SUM(purchase_amount) as total_spent from black_friday GROUP BY occupation;

-- Total orders based on age group
SELECT age , count(*) as total_orders from black_friday GROUP BY age;

-- Total orders and purchase amount based on age group
SELECT age, count(*) as total_orders, SUM(purchase_amount) as total_spent from black_friday GROUP BY age;

