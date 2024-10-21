SELECT name
FROM
    person p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
WHERE
    p.gender = 'female'
GROUP BY
    p.id,
    p.name
HAVING
    COUNT(
        DISTINCT CASE
            WHEN m.pizza_name = 'pepperoni pizza' THEN 1
        END
    ) > 0
    AND COUNT(
        DISTINCT CASE
            WHEN m.pizza_name = 'cheese pizza' THEN 1
        END
    ) > 0
ORDER BY name;