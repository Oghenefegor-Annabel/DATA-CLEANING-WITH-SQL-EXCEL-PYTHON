---- change age data type to int
ALTER TABLE customer_sales
MODIFY COLUMN age INT;
---- Something stopping it from changing and believe it is the blank cells so i have to fill it in
UPDATE customer_sales
SET age = Null
where age = '';

---- Changing date type but this column contains different kinds of date format 
select purchase_date
from customer_sales
limit 500;

---- so in the dataset in the purchase date column the formats are yyyy-mm-dd and also mm/dd/yyyy
---- changing mm/dd/yyyy to yyyy-mm-dd

-- 1. Temporarily disable strict SQL mode for this tab
SET sql_mode = '';

-- 2. Run the update statement safely
UPDATE customer_sales 
SET purchase_date = DATE_FORMAT(
    COALESCE(
        STR_TO_DATE(purchase_date, '%Y-%m-%d'),
        STR_TO_DATE(purchase_date, '%m/%d/%Y'),
        STR_TO_DATE(purchase_date, '%m/%d/%y')
    ), 
    '%Y-%m-%d'
);