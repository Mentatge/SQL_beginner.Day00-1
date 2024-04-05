SELECT 
    (SELECT person.name
    FROM person
    WHERE person.id = pv.person_id) AS person_name,
	(SELECT pizzeria.name
	FROM pizzeria
	WHERE pizzeria.id = pv.pizzeria_id) AS pizzeria_name  
FROM (
    SELECT person_id, pizzeria_id
    FROM person_visits 
    WHERE visit_date BETWEEN '2022-01-7' AND '2022-01-09') AS pv
ORDER BY person_name ASC, pizzeria_name DESC;
 