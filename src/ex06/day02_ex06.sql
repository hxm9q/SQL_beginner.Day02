SELECT menu.pizza_name, pizzeria.name
FROM
    person_order po
    JOIN menu ON po.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE
    po.person_id IN (
        SELECT id
        FROM person
        WHERE
            name IN ('Denis', 'Anna')
    )
ORDER BY menu.pizza_name, pizzeria.name;