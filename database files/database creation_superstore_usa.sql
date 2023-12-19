CREATE DATABASE superstore_USA;	
USE superstore_USA;	
	
CREATE TABLE products (	
	product_id CHAR(15) NOT NULL,
	category VARCHAR(15) NOT NULL,
	sub_category VARCHAR(11) NOT NULL,
	product_name VARCHAR(130) NOT NULL,
	PRIMARY KEY (product_id)
	);
	
CREATE TABLE shipping (	
	ship_id CHAR(2) NOT NULL,
	ship_mode VARCHAR(15),
	delivery_days VARCHAR(3),
	PRIMARY KEY (ship_id)
	);
	
CREATE TABLE region (	
	region_id INT NOT NULL,
	region VARCHAR(7) NOT NULL,
	PRIMARY KEY (region_id)
	);
	
CREATE TABLE location (	
	location_id INT NOT NULL,
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	postal_code INT NOT NULL,
	region_id INT NOT NULL,
	PRIMARY KEY (location_id),
	FOREIGN KEY (region_id) REFERENCES region(region_id)
	);
	
CREATE TABLE seller (	
	reg_seller_id INT NOT NULL,
	regional_seller VARCHAR(25),
	region_id INT NOT NULL,
	PRIMARY KEY (reg_seller_id),
	FOREIGN KEY (region_id) REFERENCES region(region_id)
	);
	
CREATE TABLE segment (	
	segment_id INT NOT NULL,
	segment VARCHAR(12),
	PRIMARY KEY (segment_id)
	);

CREATE TABLE customers (	
	customer_id INT NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	phone_nr CHAR(12) NOT NULL,
	address VARCHAR(40) NOT NULL,
	age INT NULL,
	location_id INT NOT NULL,
	segment_id INT NOT NULL,
	PRIMARY KEY (customer_id),
	FOREIGN KEY (location_id) REFERENCES location(location_id),
	FOREIGN KEY (segment_id) REFERENCES segment(segment_id)
	);
	
CREATE TABLE orders (	
	order_id INT NOT NULL,
	order_date DATE NULL,
	ship_date DATE NULL,
	realisation_time INT NULL,
	ship_id CHAR(2) NOT NULL,
	reg_seller_id INT NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (ship_id) REFERENCES shipping(ship_id),
	FOREIGN KEY (reg_seller_id) REFERENCES seller(reg_seller_id)
	);
	
CREATE TABLE sales (	
	item_id INT NOT NULL,
	order_id INT NOT NULL,
	customer_id INT NOT NULL,
	product_id CHAR(15) NOT NULL,
	sales_amount DECIMAL(8,2) NOT NULL,
	quantity INT NOT NULL,
	discount DECIMAL(3,2) NOT NULL,
	profit DECIMAL(8,2) NOT NULL,
	margin DECIMAL(5,2) NOT NULL,
	PRIMARY KEY (item_id),
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
	);
	
CREATE TABLE returns (	
	return_id CHAR(8) NOT NULL,
	order_id INT NOT NULL,
	PRIMARY KEY (return_id),
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
	);

'>> 1. table products contains 1862 rows, data was imported via csv file >>'

'>> 2. table shipping - insert >>'

INSERT INTO shipping
			(ship_id, ship_mode, delivery_days)
VALUES
			('D0', 'Same Day', '0'),
			('D1', 'First Class', '1'),
			('D2', 'Second Class', '2-3'),
			('D3', 'Standard Class', '4-7');

'>> 3. table region - insert >>'

INSERT INTO region
			(region_id, region)
VALUES
			(1, 'Central'),
			(2, 'East'),
            (3, 'South'),
			(4, 'West');
            
'>> 4. table location contains 632 rows, data was imported via csv file >>'

'>> 5. table seller - insert >>'

INSERT INTO seller
			(reg_seller_id, regional_seller, region_id)
VALUES
			(1, 'Anna Andreadi', 1),
			(2, 'Chuck Magee', 1),
			(3, 'Kelly Williams', 2),
            (4, 'Cassandra Brandow', 2),
			(5, 'Ivonne Norris', 3),
			(6, 'Marco Sirocco', 3),
			(7, 'Tom Lee', 4),
			(8, 'Leopold Lapicky', 4);

'>> 6. table segment - insert >>'

INSERT INTO segment
			(segment_id, segment)
VALUES
			(1, 'Consumer'),
			(2, 'Corporate'),
			(3, 'Home Office');

'>> 7. table customers contains 793 rows, data was imported via csv file >>'

'>> 8. table orders contains 5009 rows, data was imported via csv file >>'

'>> 9. table sales contains 9994 rows, data was imported via csv file >>'

'>> 10. table returns contains 296 rows, data was imported via csv file >>'
