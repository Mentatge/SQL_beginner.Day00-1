SELECT
    (SELECT NAME 
    FROM person
    WHERE person_order.person_id = id) AS "NAME",
	(SELECT NAME = 'Denis'
	 FROM person
	 WHERE person_order.person_id = id) AS "check_name"
	
	
FROM person_order
WHERE (menu_id = 13 OR menu_id = 18 OR menu_id = 14) AND order_date = '2022-01-07';