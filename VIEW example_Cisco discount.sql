USE superstore_usa;

'>> The Cisco company wants to give a discount to customers who have already purchased their products once. 
	The below view shows which customer ordered Cisco products, to send them an email with the granting of a discount <<'

CREATE OR REPLACE VIEW vw_sales_cisco AS
    SELECT 
        S1.customer_id,
        C1.first_name,
        C1.last_name,
        C1.email,
        P1.product_name
    FROM
        sales S1
	JOIN
		customers C1 ON S1.customer_id = C1.customer_id
	JOIN
		products P1 ON S1.product_id = P1.product_id
    WHERE
        product_name LIKE '%cisco%' 
	ORDER BY
		S1.customer_id
	WITH CHECK OPTION;

'>> Select all in view <<'

SELECT *
FROM vw_sales_cisco;

'>> As some of the customers may order more than one product I wanted to show the unique e-mail address for each one of them: <<'

SELECT DISTINCT(customer_id), 
		first_name,
        last_name,
        email
FROM vw_sales_cisco
ORDER BY last_name;