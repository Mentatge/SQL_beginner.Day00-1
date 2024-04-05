SELECT DISTINCT person_id
FROM person_visits
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id 
WHERE visit_date BETWEEN '2022-01-06' AND '2022-01-09' OR pizzeria_id = 2 
ORDER BY person_id DESC;