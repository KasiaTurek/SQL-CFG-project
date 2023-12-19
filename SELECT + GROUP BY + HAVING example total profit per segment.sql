'>> The below query is showing the total profit earned by the indicated customer segment. <<'

SELECT S2.segment_id, S2.segment, SUM(S1.profit) AS segment_profit
FROM sales S1
JOIN customers C1 ON S1.customer_id = C1.customer_id
JOIN segment S2 ON C1.segment_id = S2.segment_id
GROUP BY segment_id 
HAVING segment_id = 1;