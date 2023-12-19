'>> The below trigger was created to calculate automatically realisation time for new orders. <<'

'>> Trigger creation <<'

CREATE TRIGGER before_order_insert
BEFORE INSERT ON orders
FOR EACH ROW
SET NEW.realisation_time = NEW.ship_date - NEW.order_date;

'>> Check the last order ID <<'

SELECT * FROM orders ORDER BY order_id DESC LIMIT 1;

'>> Insert into table new order with NULL realisation_time <<'

INSERT INTO orders
VALUES (170000, '2018-03-01', '2018-03-05', NULL, 'D3', 1);

'>> Just checking if added and if trigger works <<'

SELECT * FROM orders ORDER BY order_id DESC LIMIT 2;



'>> Additional codes needed while working on this code <<'

SHOW TRIGGERS;

DROP TRIGGER before_order_insert;

DELETE FROM orders
WHERE order_id = 170000;