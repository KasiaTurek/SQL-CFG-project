'>> The Superstore Company wants to know what is the total seller profit in the particular year <<'

SELECT O1.reg_seller_id, S3.regional_seller, SUM(S1.profit), YEAR(O1.order_date)
FROM sales S1
JOIN orders O1 ON S1.order_id = O1.order_id
JOIN seller S3 ON O1.reg_seller_id = S3.reg_seller_id
WHERE YEAR(O1.order_date) = 2017
GROUP BY YEAR(order_date), reg_seller_id
ORDER BY SUM(S1.profit) DESC;