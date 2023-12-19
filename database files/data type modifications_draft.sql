use superstore_usa;

INSERT INTO sales
(item_id, order_id, customer_id, product_id, sales_amount, quantity, discount, profit, margin)
VALUES 
(9921, 149272, 552, 'OFF-BI-10004233', 22.39, 7, 0.8, -35.82, -11.20);

SHOW COLUMNS FROM sales;

delete from sales;
select * from sales;
ALTER TABLE sales   
MODIFY margin DECIMAL(5,2);  

use superstore_usa;

ALTER TABLE orders
MODIFY order_id INT;

ALTER TABLE returns
DROP FOREIGN KEY returns_ibfk_1;

ALTER TABLE customers ADD FOREIGN KEY (customers_ibfk_1) REFERENCES location(location_id) ON DELETE SET NULL;

sales_ibfk_1 -> order_id
sales_ibfk_2 -> customer_id

ALTER TABLE customers 
ADD CONSTRAINT customers_ibfk_1 FOREIGN KEY (location_id) REFERENCES location(location_id);

ALTER TABLE sales
ADD CONSTRAINT sales_ibfk_2 FOREIGN KEY (customer_id) REFERENCES customers(customer_id);