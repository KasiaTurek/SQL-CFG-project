'>> The Superstore Company wants to know what is the total profit per each seller. <<'

delimiter // 
CREATE PROCEDURE total_profit_per_seller()
BEGIN

	SELECT O1.reg_seller_id, S3.regional_seller, SUM(S1.profit)
	FROM sales S1
	JOIN orders O1 ON S1.order_id = O1.order_id
	JOIN seller S3 ON O1.reg_seller_id = S3.reg_seller_id
	GROUP BY reg_seller_id
	ORDER BY SUM(S1.profit) DESC;

END //
delimiter ;

CALL total_profit_per_seller();