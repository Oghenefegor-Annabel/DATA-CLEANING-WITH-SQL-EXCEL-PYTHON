---- Checking the data
Select*
from customer_sales;


---- checking for missing values in column age
Select age
From customer_sales
Where age = ('');


Describe customer_sales;

---- after changing all the date format in purchase column to yyyy-mm-dd, converting the column to date
ALTER TABLE customer_sales
MODIFY COLUMN purchase_date DATE;

---- Changing PH to Port Harcourt and lagos to Lagos, LAGOS to Lagos
select city
from customer_sales;

     -- lagos to Lagos
UPDATE customer_sales
SET city = 'Lagos'
WHERE city IN ('lagos','Lagos');

     -- PH to Port Harcourt
UPDATE customer_sales
SET city = 'Port Harcourt'
WHERE city IN ('PH' , 'Port Harcurt');

--- payment method column
UPDATE customer_sales
SET payment_method = 'Cash'
WHERE payment_method IN ('CASH','Cash');

UPDATE customer_sales
SET payment_method = 'Card'
WHERE payment_method IN ('card', 'Card');


---- To make sure the entire column of total_sales is correct
     -- Checking incorrect totals
SELECT total_sales
FROM customer_sales
WHERE total_sales <> (quantity * unit_price);
      -- Correcting the column
UPDATE customer_sales
SET total_sales = (quantity*unit_price)
WHERE total_sales <> (quantity*unit_price);

