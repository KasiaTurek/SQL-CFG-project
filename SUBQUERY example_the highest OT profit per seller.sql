'>> The Superstore Company wants to know which seller brought the highest one-time profit <<'

'>> Query <<'

SELECT MAX(profit)
FROM sales;

'>> Query with subquery <<' 

SELECT DISTINCT O1.reg_seller_id, S3.regional_seller, S1.profit AS max_OT_profit
FROM sales S1
JOIN orders O1 ON S1.order_id = O1.order_id
JOIN seller S3 ON O1.reg_seller_id = S3.reg_seller_id
WHERE profit =  
	(SELECT MAX(profit)
	FROM sales)
ORDER BY reg_seller_id;