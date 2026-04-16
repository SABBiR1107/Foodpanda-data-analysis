CREATE DATABASE foodpanda_project;

USE foodpanda_project;

CREATE TABLE foodpanda_orders (
    customer_id VARCHAR(20),
    gender VARCHAR(20),
    age_group VARCHAR(20),
    city VARCHAR(50),
    signup_date DATE,
    order_id VARCHAR(20),
    order_date DATE,
    restaurant_name VARCHAR(100),
    dish_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    payment_method VARCHAR(30),
    order_frequency INT,
    last_order_date DATE,
    loyalty_points INT,
    churned VARCHAR(20),
    rating DECIMAL(3,1),
    rating_date DATE,
    delivery_status VARCHAR(30)
);

SELECT COUNT(*) AS total_rows
FROM foodpanda_orders;

SELECT *
FROM foodpanda_orders
LIMIT 10;

# Check for null values
SELECT
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_nulls,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS gender_nulls,
    SUM(CASE WHEN age_group IS NULL THEN 1 ELSE 0 END) AS age_group_nulls,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS city_nulls,
    SUM(CASE WHEN signup_date IS NULL THEN 1 ELSE 0 END) AS signup_date_nulls,
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS order_id_nulls,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS order_date_nulls,
    SUM(CASE WHEN restaurant_name IS NULL THEN 1 ELSE 0 END) AS restaurant_name_nulls,
    SUM(CASE WHEN dish_name IS NULL THEN 1 ELSE 0 END) AS dish_name_nulls,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS category_nulls,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS quantity_nulls,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS price_nulls,
    SUM(CASE WHEN payment_method IS NULL THEN 1 ELSE 0 END) AS payment_method_nulls,
    SUM(CASE WHEN order_frequency IS NULL THEN 1 ELSE 0 END) AS order_frequency_nulls,
    SUM(CASE WHEN last_order_date IS NULL THEN 1 ELSE 0 END) AS last_order_date_nulls,
    SUM(CASE WHEN loyalty_points IS NULL THEN 1 ELSE 0 END) AS loyalty_points_nulls,
    SUM(CASE WHEN churned IS NULL THEN 1 ELSE 0 END) AS churned_nulls,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS rating_nulls,
    SUM(CASE WHEN rating_date IS NULL THEN 1 ELSE 0 END) AS rating_date_nulls,
    SUM(CASE WHEN delivery_status IS NULL THEN 1 ELSE 0 END) AS delivery_status_nulls
FROM foodpanda_orders;


# Check duplicates
#Check duplicate order IDs
SELECT order_id, COUNT(*) AS total
FROM foodpanda_orders
GROUP BY order_id
HAVING COUNT(*) > 1;

#Check duplicate customer IDs
SELECT customer_id, COUNT(*) AS total
FROM foodpanda_orders
GROUP BY customer_id
HAVING COUNT(*) > 1;


# Clean extra spaces
UPDATE foodpanda_orders
SET
    customer_id = TRIM(customer_id),
    gender = TRIM(gender),
    age_group = TRIM(age_group),
    city = TRIM(city),
    order_id = TRIM(order_id),
    restaurant_name = TRIM(restaurant_name),
    dish_name = TRIM(dish_name),
    category = TRIM(category),
    payment_method = TRIM(payment_method),
    churned = TRIM(churned),
    delivery_status = TRIM(delivery_status);
    

# Check unique values of categorical columns
SELECT DISTINCT gender FROM foodpanda_orders;

SELECT DISTINCT age_group FROM foodpanda_orders;

SELECT DISTINCT city FROM foodpanda_orders;

SELECT DISTINCT payment_method FROM foodpanda_orders;

SELECT DISTINCT churned FROM foodpanda_orders;

SELECT DISTINCT delivery_status FROM foodpanda_orders;


# Standardize values if needed
UPDATE foodpanda_orders
SET delivery_status = 'Delivered'
WHERE delivery_status IN ('delivered', ' Delivered', 'DELIVERED');

UPDATE foodpanda_orders
SET churned = 'Active'
WHERE churned IN ('active', 'ACTIVE');


##  Check invalid numeric values
# Quantity check
SELECT *
FROM foodpanda_orders
WHERE quantity <= 0;

# Price check
SELECT *
FROM foodpanda_orders
WHERE price <= 0;

# Rating check
SELECT *
FROM foodpanda_orders
WHERE rating < 1 OR rating > 5;

# Loyalty points check
SELECT *
FROM foodpanda_orders
WHERE loyalty_points < 0;


##  Check invalid dates
# Order date before signup date
SELECT *
FROM foodpanda_orders
WHERE order_date < signup_date;

# Last order date before order date
SELECT *
FROM foodpanda_orders
WHERE last_order_date < order_date;

# Rating date before order date
SELECT *
FROM foodpanda_orders
WHERE rating_date < order_date;


##  Check missing rating problem
# Total rated and unrated orders
SELECT
    COUNT(*) AS total_orders,
    COUNT(rating) AS rated_orders,
    COUNT(*) - COUNT(rating) AS unrated_orders
FROM foodpanda_orders;

# Orders where rating is null but rating_date exists
SELECT *
FROM foodpanda_orders
WHERE rating IS NULL AND rating_date IS NOT NULL;

# Orders where rating exists but rating_date is null
SELECT *
FROM foodpanda_orders
WHERE rating IS NOT NULL AND rating_date IS NULL;


# Add primary key if order_id is unique
SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT order_id) AS unique_orders
FROM foodpanda_orders;


ALTER TABLE foodpanda_orders
ADD PRIMARY KEY (order_id);


##  Create a cleaned copy table
CREATE TABLE foodpanda_orders_clean AS
SELECT *
FROM foodpanda_orders;


## Start analysis queries

#Total orders
SELECT COUNT(*) AS total_orders
FROM foodpanda_orders_clean;

#Total revenue
SELECT ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean;

#Average order value
SELECT ROUND(AVG(price * quantity), 2) AS avg_order_value
FROM foodpanda_orders_clean;

#Total customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM foodpanda_orders_clean;


## City analysis

# Orders by city
SELECT city, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY city
ORDER BY total_orders DESC;

# Revenue by city
SELECT city, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY city
ORDER BY total_revenue DESC;

# Average rating by city
SELECT city, ROUND(AVG(rating), 2) AS avg_rating
FROM foodpanda_orders_clean
WHERE rating IS NOT NULL
GROUP BY city
ORDER BY avg_rating DESC;


##  Restaurant analysis
# Orders by restaurant
SELECT restaurant_name, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY restaurant_name
ORDER BY total_orders DESC;

# Revenue by restaurant
SELECT restaurant_name, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY restaurant_name
ORDER BY total_revenue DESC;

# Average rating by restaurant
SELECT restaurant_name,
       ROUND(AVG(rating), 2) AS avg_rating,
       COUNT(rating) AS total_ratings
FROM foodpanda_orders_clean
WHERE rating IS NOT NULL
GROUP BY restaurant_name
ORDER BY avg_rating DESC;

##  Category and dish analysis
# Revenue by category
SELECT category, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY category
ORDER BY total_revenue DESC;

# Quantity sold by category
SELECT category, SUM(quantity) AS total_quantity
FROM foodpanda_orders_clean
GROUP BY category
ORDER BY total_quantity DESC;

# Top dishes by revenue
SELECT dish_name, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY dish_name
ORDER BY total_revenue DESC;

##  Payment analysis
# Most used payment method
SELECT payment_method, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY payment_method
ORDER BY total_orders DESC;

# Revenue by payment method
SELECT payment_method, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY payment_method
ORDER BY total_revenue DESC;

##  Delivery analysis
# Orders by delivery status
SELECT delivery_status, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY delivery_status
ORDER BY total_orders DESC;

# Average rating by delivery status
SELECT delivery_status,
       ROUND(AVG(rating), 2) AS avg_rating,
       COUNT(rating) AS total_ratings
FROM foodpanda_orders_clean
WHERE rating IS NOT NULL
GROUP BY delivery_status
ORDER BY avg_rating DESC;


## Churn analysis
# Active vs inactive customers
SELECT churned, COUNT(*) AS total_customers
FROM foodpanda_orders_clean
GROUP BY churned;

# Churn by gender
SELECT gender, churned, COUNT(*) AS total
FROM foodpanda_orders_clean
GROUP BY gender, churned
ORDER BY gender, total DESC;

# Churn by city
SELECT city, churned, COUNT(*) AS total
FROM foodpanda_orders_clean
GROUP BY city, churned
ORDER BY city, total DESC;

# Average loyalty points by churn
SELECT churned,
       ROUND(AVG(loyalty_points), 2) AS avg_loyalty_points,
       ROUND(AVG(order_frequency), 2) AS avg_order_frequency
FROM foodpanda_orders_clean
GROUP BY churned;


##  Monthly trend analysis
# Monthly order trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS order_month,
       COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;

# Monthly revenue trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS order_month,
       ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;


##  Advanced SQL queries
#Top 5 customers by spending
SELECT customer_id,
       ROUND(SUM(price * quantity), 2) AS total_spent
FROM foodpanda_orders_clean
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

# Rank restaurants by revenue
SELECT restaurant_name,
       ROUND(SUM(price * quantity), 2) AS total_revenue,
       RANK() OVER (ORDER BY SUM(price * quantity) DESC) AS revenue_rank
FROM foodpanda_orders_clean
GROUP BY restaurant_name;

# Top restaurant in each city
WITH city_restaurant_revenue AS (
    SELECT city,
           restaurant_name,
           ROUND(SUM(price * quantity), 2) AS revenue,
           RANK() OVER (PARTITION BY city ORDER BY SUM(price * quantity) DESC) AS rn
    FROM foodpanda_orders_clean
    GROUP BY city, restaurant_name
)
SELECT *
FROM city_restaurant_revenue
WHERE rn = 1;


##  Create useful views
# KPI summary view
CREATE VIEW vw_foodpanda_kpi_summary AS
SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(price * quantity), 2) AS total_revenue,
    ROUND(AVG(price * quantity), 2) AS avg_order_value,
    ROUND(AVG(rating), 2) AS avg_rating
FROM foodpanda_orders_clean;

SELECT * FROM vw_foodpanda_kpi_summary;

# City revenue view
CREATE VIEW vw_city_revenue AS
SELECT city,
       COUNT(*) AS total_orders,
       ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY city;