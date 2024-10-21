SELECT
    pizza_name,
    pizzeria.name AS pizzeria_name,
    price
FROM menu
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE
    menu.pizza_name IN (
        'mushroom pizza',
        'pepperoni pizza'
    )
ORDER BY menu.pizza_name, pizzeria.name;