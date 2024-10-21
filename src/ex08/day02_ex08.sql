SELECT name
FROM
    person p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu ON po.menu_id = menu.id
WHERE
    p.address IN ('Moscow', 'Samara')
    AND p.gender = 'male'
    AND menu.pizza_name IN (
        'pepperoni pizza',
        'mushroom pizza'
    )
ORDER BY p.name DESC;