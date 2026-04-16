# Foodpanda Analytics Dashboard (Power BI)

## 📌 Project Overview
This project presents a complete **Foodpanda Analytics Dashboard** built in **Power BI** using the Foodpanda Analysis Dataset 2025.  
The dashboard analyzes customer behavior, sales performance, delivery quality, ratings, churn, and loyalty trends to support business decisions.

---

## 🎯 Project Objectives
- Analyze total orders, revenue, and customer growth
- Understand customer churn and loyalty behavior
- Evaluate delivery performance and ratings
- Track restaurant and category sales trends
- Compare city-wise business performance
- Build interactive dashboards with slicers and KPIs

---

## 🗂️ Dataset Features
Main columns used:

- customer_id
- gender
- age_group
- city
- signup_date
- order_id
- order_date
- restaurant_name
- dish_name
- category
- quantity
- price
- payment_method
- order_frequency
- last_order_date
- loyalty_points
- churned
- rating
- rating_date
- delivery_status

---

## 🧹 Data Cleaning & Preparation
- Fixed data types (date, numeric, text)
- Handled missing values in rating
- Removed duplicates
- Standardized text values
- Created date table
- Built KPI measures using DAX

---

## 📊 Dashboard Pages

## 1️⃣ Executive Summary
Main KPIs:
- Total Customers
- Total Orders
- Total Revenue
- Avg Order Value
- Avg Rating
- Churn Rate
- Delay Rate
- Avg Loyalty

Includes:
- Revenue Trend
- Delivery Status Distribution
- Churn Distribution
- Revenue by City
- Orders by Category

![Executive Summary](Executive Summary.png)

---

## 2️⃣ Customer Analysis
Includes:
- Total / Active / Inactive Customers
- Signup Trend
- Gender Distribution
- Age Group Distribution
- Customers by City
- Avg Loyalty by Churn
- Avg Order Frequency by Gender

![Customer Analysis](Customer Analysis.png)

---

## 3️⃣ Order & Sales Analysis
Includes:
- Total Orders
- Total Revenue
- Total Quantity
- Avg Order Value
- Avg Price
- Revenue Trend
- Orders by Category
- Revenue by Restaurant
- Revenue by City
- Orders by Payment Method

![Order & Sales Analysis](Order & Sales Analysis.png)

---

## 4️⃣ Delivery & Rating Analysis
Includes:
- Avg Rating
- Rated Orders
- Rating Coverage %
- Delay Rate %
- Delivered Orders
- Rating Trend
- Delivery Status Distribution
- Rating Status Distribution
- Avg Rating by Restaurant
- Avg Rating by Delivery Status
- Avg Rating by Category

![Delivery & Rating Analysis](Delivery & Rating Analysis.png)

---

## 5️⃣ Churn & Loyalty Analysis
Includes:
- Active vs Inactive Customers
- Churn Rate
- Avg Loyalty Points
- Avg Order Value
- City-wise Churn Comparison
- Loyalty by Churned Status
- Age Group Churn Distribution
- Order Frequency by Churned
- Loyalty vs Frequency Scatter Analysis

![Churn & Loyalty Analysis](Churn & Loyalty Analysis.png)

---

## 📈 Key Insights
- Revenue is distributed strongly across major cities.
- Delayed orders can impact customer ratings.
- Loyal customers show stronger ordering frequency.
- Some customer segments have higher churn risk.
- Fast Food and Italian categories perform strongly.
- Payment methods are evenly distributed.

---

## 🛠️ Tools Used
- Power BI
- Power Query
- DAX
- Excel / CSV
- Data Modeling

---

## 📁 Project Structure
```text
Foodpanda-Analytics/
│── dataset/
│   └── foodpanda.csv
│── dashboard/
│   └── Foodpanda_Analytics.pbix
│── images/
│   ├── Executive Summary.png
│   ├── Customer Analysis.png
│   ├── Order & Sales Analysis.png
│   ├── Delivery & Rating Analysis.png
│   └── Churn & Loyalty Analysis.png
└── README.md
```



# Foodpanda ML churn_prediction, customer_segmentation, delay_prediction, restaurant_recommendation, sales_forecasting.

## 📌 Project Overview
This repository contains **5 end-to-end machine learning projects** built using the Foodpanda Analysis Dataset 2025.  
The projects cover business-focused use cases including churn prediction, customer segmentation, delay prediction, restaurant recommendation, and sales forecasting.

These notebooks demonstrate practical skills in:
- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- Machine Learning
- Clustering
- Recommendation Systems
- Forecasting
- Model Evaluation

---

## 📁 Project Files

```text
Foodpanda-ML-Projects/
│── foodpanda_churn_prediction.ipynb
│── foodpanda_customer_segmentation.ipynb
│── foodpanda_delay_prediction.ipynb
│── foodpanda_restaurant_recommendation.ipynb
│── foodpanda_sales_forecasting.ipynb
└── README.md
```

---

# 1️⃣ Customer Churn Prediction

## 🎯 Objective
Predict whether a customer becomes **Active** or **Inactive**.

## 🧠 Techniques Used
- Label Encoding
- Train/Test Split
- Logistic Regression
- Random Forest (feature importance included)

## 📊 Dataset Shape
- 6000 rows
- 28 columns

## 📈 Sample Result
- Logistic Regression Accuracy: **47.4%**

## 💡 Business Value
Identify customers likely to churn and improve retention campaigns.

---

# 2️⃣ Customer Segmentation

## 🎯 Objective
Group customers based on behavior and value.

## 🧠 Techniques Used
- Feature Scaling
- KMeans Clustering
- Silhouette Score Evaluation

## 📊 Key Features Used
- order_frequency
- loyalty_points
- order_value
- rating

## 📈 Sample Result
- Silhouette Score: **0.121**

## 💡 Business Value
Create targeted marketing strategies for different customer groups.

---

# 3️⃣ Delivery Delay Prediction

## 🎯 Objective
Predict whether an order may be delayed.

## 🧠 Techniques Used
- Classification Model
- Feature Importance
- Performance Metrics

## 💡 Business Value
Improve logistics planning and customer satisfaction.

---

# 4️⃣ Restaurant Recommendation System

## 🎯 Objective
Recommend restaurants based on customer ordering patterns.

## 🧠 Techniques Used
- Customer-Restaurant Matrix
- Cosine Similarity
- Nearest Neighbors

## 📈 Model Used
- `NearestNeighbors(algorithm='brute', metric='cosine')`

## 💡 Business Value
Increase repeat purchases through personalized recommendations.

---

# 5️⃣ Sales Forecasting

## 🎯 Objective
Forecast future Foodpanda sales using historical order values.

## 🧠 Techniques Used
- Time Series Features
- Lag Features
- Rolling Mean
- Regression Model

## 📈 Sample Result
- MAE: **5230.85**
- RMSE: **6683.53**
- R² Score: **0.124**

## 💡 Business Value
Support inventory, campaign, and revenue planning.

---

# 📊 Common Workflow Used in All Projects

## Data Preparation
- Loaded dataset
- Converted dates
- Handled missing values
- Encoded categorical columns
- Created derived features

## Modeling
- Train/Test split
- Scaling where needed
- Fit models
- Evaluate results

## Visualization
- Feature importance charts
- Cluster plots
- Trend charts
- Performance metrics

---

# 🛠️ Tools & Libraries

- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
- Jupyter Notebook

---

# 📌 Key Learnings

- How to solve real business problems with ML
- Classification vs Regression vs Clustering
- Recommendation systems basics
- Time series forecasting workflow
- End-to-end notebook development

---

# 🚀 Portfolio Value

These projects are ideal for showcasing skills for:

- Data Analyst
- BI Developer
- Junior Data Scientist
- Machine Learning Intern
- AI Engineer (entry level)

---

# 🔮 Future Improvements

- Hyperparameter tuning
- XGBoost / LightGBM models
- Better time-series models (Prophet / ARIMA / LSTM)
- Streamlit deployment
- Power BI integration

---



# Foodpanda SQL Project

## Project Overview
This project analyzes a Foodpanda order dataset using SQL. The main goal is to explore customer behavior, order trends, restaurant performance, delivery quality, ratings, and churn insights. The dataset contains 6,000 rows and includes customer details, order information, payment methods, loyalty points, ratings, and delivery status.

This project is suitable for practicing:
- SQL data cleaning
- exploratory data analysis
- business KPI reporting
- aggregate functions
- joins and views
- CTEs and window functions

---

## Dataset Information
Dataset source: Foodpanda Analysis Dataset 2025

Main columns used in this project:
- `customer_id`
- `gender`
- `age_group`
- `city`
- `signup_date`
- `order_id`
- `order_date`
- `restaurant_name`
- `dish_name`
- `category`
- `quantity`
- `price`
- `payment_method`
- `order_frequency`
- `last_order_date`
- `loyalty_points`
- `churned`
- `rating`
- `rating_date`
- `delivery_status`

---

## Table Creation
```sql
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
```

---

## Step-by-Step Project Workflow

### Step 1: Check table structure
```sql
DESC foodpanda_orders;
```

### Step 2: Import dataset
Use MySQL Workbench Table Data Import Wizard or `LOAD DATA INFILE`.

Example:
```sql
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/foodpanda.csv'
INTO TABLE foodpanda_orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(customer_id, gender, age_group, city, signup_date, order_id, order_date,
 restaurant_name, dish_name, category, quantity, price, payment_method,
 order_frequency, last_order_date, loyalty_points, churned, rating,
 rating_date, delivery_status);
```

### Step 3: Check total rows
```sql
SELECT COUNT(*) AS total_rows
FROM foodpanda_orders;
```

### Step 4: Preview data
```sql
SELECT *
FROM foodpanda_orders
LIMIT 10;
```

---

## Data Cleaning Queries

### Check null values
```sql
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
```

### Check duplicates
```sql
SELECT order_id, COUNT(*) AS total
FROM foodpanda_orders
GROUP BY order_id
HAVING COUNT(*) > 1;
```

```sql
SELECT customer_id, COUNT(*) AS total
FROM foodpanda_orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
```

### Remove extra spaces
```sql
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
```

### Check unique categorical values
```sql
SELECT DISTINCT gender FROM foodpanda_orders;
SELECT DISTINCT age_group FROM foodpanda_orders;
SELECT DISTINCT city FROM foodpanda_orders;
SELECT DISTINCT payment_method FROM foodpanda_orders;
SELECT DISTINCT churned FROM foodpanda_orders;
SELECT DISTINCT delivery_status FROM foodpanda_orders;
```

### Check invalid values
```sql
SELECT * FROM foodpanda_orders WHERE quantity <= 0;
SELECT * FROM foodpanda_orders WHERE price <= 0;
SELECT * FROM foodpanda_orders WHERE rating < 1 OR rating > 5;
SELECT * FROM foodpanda_orders WHERE loyalty_points < 0;
```

### Check invalid date relationships
```sql
SELECT * FROM foodpanda_orders WHERE order_date < signup_date;
SELECT * FROM foodpanda_orders WHERE last_order_date < order_date;
SELECT * FROM foodpanda_orders WHERE rating_date < order_date;
```

### Check missing rating issue
```sql
SELECT
    COUNT(*) AS total_orders,
    COUNT(rating) AS rated_orders,
    COUNT(*) - COUNT(rating) AS unrated_orders
FROM foodpanda_orders;
```

```sql
SELECT *
FROM foodpanda_orders
WHERE rating IS NULL AND rating_date IS NOT NULL;
```

---

## Create Clean Table
```sql
CREATE TABLE foodpanda_orders_clean AS
SELECT *
FROM foodpanda_orders;
```

---

## Main KPI Queries

### Total orders
```sql
SELECT COUNT(*) AS total_orders
FROM foodpanda_orders_clean;
```

### Total customers
```sql
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM foodpanda_orders_clean;
```

### Total revenue
```sql
SELECT ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean;
```

### Average order value
```sql
SELECT ROUND(AVG(price * quantity), 2) AS avg_order_value
FROM foodpanda_orders_clean;
```

### Average rating
```sql
SELECT ROUND(AVG(rating), 2) AS avg_rating
FROM foodpanda_orders_clean;
```

---

## City Analysis

### Orders by city
```sql
SELECT city, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY city
ORDER BY total_orders DESC;
```

### Revenue by city
```sql
SELECT city, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY city
ORDER BY total_revenue DESC;
```

### Average rating by city
```sql
SELECT city, ROUND(AVG(rating), 2) AS avg_rating
FROM foodpanda_orders_clean
WHERE rating IS NOT NULL
GROUP BY city
ORDER BY avg_rating DESC;
```

---

## Restaurant Analysis

### Orders by restaurant
```sql
SELECT restaurant_name, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY restaurant_name
ORDER BY total_orders DESC;
```

### Revenue by restaurant
```sql
SELECT restaurant_name, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY restaurant_name
ORDER BY total_revenue DESC;
```

### Average rating by restaurant
```sql
SELECT restaurant_name,
       ROUND(AVG(rating), 2) AS avg_rating,
       COUNT(rating) AS total_ratings
FROM foodpanda_orders_clean
WHERE rating IS NOT NULL
GROUP BY restaurant_name
ORDER BY avg_rating DESC;
```

---

## Category and Dish Analysis

### Revenue by category
```sql
SELECT category, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY category
ORDER BY total_revenue DESC;
```

### Quantity sold by category
```sql
SELECT category, SUM(quantity) AS total_quantity
FROM foodpanda_orders_clean
GROUP BY category
ORDER BY total_quantity DESC;
```

### Top dishes by revenue
```sql
SELECT dish_name, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY dish_name
ORDER BY total_revenue DESC;
```

---

## Payment Analysis

### Orders by payment method
```sql
SELECT payment_method, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY payment_method
ORDER BY total_orders DESC;
```

### Revenue by payment method
```sql
SELECT payment_method, ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY payment_method
ORDER BY total_revenue DESC;
```

---

## Delivery Analysis

### Orders by delivery status
```sql
SELECT delivery_status, COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY delivery_status
ORDER BY total_orders DESC;
```

### Average rating by delivery status
```sql
SELECT delivery_status,
       ROUND(AVG(rating), 2) AS avg_rating,
       COUNT(rating) AS total_ratings
FROM foodpanda_orders_clean
WHERE rating IS NOT NULL
GROUP BY delivery_status
ORDER BY avg_rating DESC;
```

---

## Churn Analysis

### Active vs inactive customers
```sql
SELECT churned, COUNT(*) AS total_customers
FROM foodpanda_orders_clean
GROUP BY churned;
```

### Churn by gender
```sql
SELECT gender, churned, COUNT(*) AS total
FROM foodpanda_orders_clean
GROUP BY gender, churned
ORDER BY gender, total DESC;
```

### Churn by city
```sql
SELECT city, churned, COUNT(*) AS total
FROM foodpanda_orders_clean
GROUP BY city, churned
ORDER BY city, total DESC;
```

### Loyalty and order frequency by churn
```sql
SELECT churned,
       ROUND(AVG(loyalty_points), 2) AS avg_loyalty_points,
       ROUND(AVG(order_frequency), 2) AS avg_order_frequency
FROM foodpanda_orders_clean
GROUP BY churned;
```

---

## Monthly Trend Analysis

### Monthly order trend
```sql
SELECT DATE_FORMAT(order_date, '%Y-%m') AS order_month,
       COUNT(*) AS total_orders
FROM foodpanda_orders_clean
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;
```

### Monthly revenue trend
```sql
SELECT DATE_FORMAT(order_date, '%Y-%m') AS order_month,
       ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;
```

---

## Advanced SQL Queries

### Top 5 customers by spending
```sql
SELECT customer_id,
       ROUND(SUM(price * quantity), 2) AS total_spent
FROM foodpanda_orders_clean
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
```

### Rank restaurants by revenue
```sql
SELECT restaurant_name,
       ROUND(SUM(price * quantity), 2) AS total_revenue,
       RANK() OVER (ORDER BY SUM(price * quantity) DESC) AS revenue_rank
FROM foodpanda_orders_clean
GROUP BY restaurant_name;
```

### Top restaurant in each city
```sql
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
```

---

## Create Views

### KPI summary view
```sql
CREATE VIEW vw_foodpanda_kpi_summary AS
SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(price * quantity), 2) AS total_revenue,
    ROUND(AVG(price * quantity), 2) AS avg_order_value,
    ROUND(AVG(rating), 2) AS avg_rating
FROM foodpanda_orders_clean;
```

### City revenue view
```sql
CREATE VIEW vw_city_revenue AS
SELECT city,
       COUNT(*) AS total_orders,
       ROUND(SUM(price * quantity), 2) AS total_revenue
FROM foodpanda_orders_clean
GROUP BY city;
```

---

## Suggested Project Folder Structure
Foodpanda-SQL-Project/
│
├── dataset/
│   └── foodpanda.csv
│
├── sql/
│   ├── Foodpanda-SQL.sql
│   
│
└── README.md
```

---

## Business Questions This Project Answers
- What is the total revenue?
- Which city generates the most orders and revenue?
- Which restaurant performs best?
- Which category sells the most?
- Which payment method is most used?
- Does delivery status affect ratings?
- Which customer groups churn the most?
- Do loyalty points and order frequency relate to churn?
- What are the monthly order and revenue trends?

---

## Final Completion Checklist
- [ ] Create table
- [ ] Import dataset
- [ ] Check null values
- [ ] Check duplicates
- [ ] Clean text values
- [ ] Validate numeric columns
- [ ] Validate date columns
- [ ] Create clean table
- [ ] Run KPI queries
- [ ] Run business analysis queries
- [ ] Run advanced SQL queries
- [ ] Create views
- [ ] Save screenshots of results
- [ ] Upload project to GitHub

---

## Tools Recommended
- MySQL Workbench
- PostgreSQL + pgAdmin
- SQL Server Management Studio

For beginners, MySQL Workbench is the easiest option.
