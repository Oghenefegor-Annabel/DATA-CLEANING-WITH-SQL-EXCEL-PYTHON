CREATE TABLE customer_sales (
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    gender VARCHAR(20),
    age VARCHAR (10),
    city VARCHAR(100),
    purchase_date VARCHAR(50),
    product_category VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(12,2),
    payment_method VARCHAR(50)
);


Select COUNT(*) 
FROM customer_sales;