'>> The below function is created to show which orders were delivered before time, on time and which of them were delayed <<'

delimiter //
CREATE FUNCTION delivery_on_time(
	realisation_time INT, ship_id CHAR(2)
)
RETURNS VARCHAR (15)
DETERMINISTIC
BEGIN
	DECLARE delivery_status VARCHAR (15);
    
    IF (realisation_time = 0 AND ship_id = 'D0') 
		OR (realisation_time = 1 AND ship_id = 'D1') 
        OR (realisation_time BETWEEN 2 AND 3 AND ship_id = 'D2')
        OR (realisation_time BETWEEN 4 AND 7 AND ship_id = 'D3') 
        THEN
		SET delivery_status = 'ON TIME';
	ELSEIF (realisation_time > 0 AND ship_id = 'D0')
		OR (realisation_time > 1 AND ship_id = 'D1') 
        OR (realisation_time > 3 AND ship_id = 'D2')
        OR (realisation_time > 7 AND ship_id = 'D3')
		THEN
		SET delivery_status = 'DELAYED';
	ELSEIF (realisation_time < 1 AND ship_id = 'D1') 
		OR (realisation_time < 2 AND ship_id = 'D2')
        OR (realisation_time < 4 AND ship_id = 'D3')
        THEN
		SET delivery_status = 'BEFORE TIME';
	END IF;
    RETURN(delivery_status);
    
END//
delimiter ;


'>> Below the selection of particular shipping mode, if delayed <<'

SELECT order_id,
	   realisation_time,
       ship_id,
       delivery_on_time(realisation_time, ship_id)
FROM
	orders
WHERE
	delivery_on_time(realisation_time, ship_id) = 'DELAYED' AND ship_id = 'D0'
ORDER BY realisation_time;