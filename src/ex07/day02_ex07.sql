SELECT pizzeria.name
FROM person_visits pv
    JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
WHERE
    pv.person_id = (
        SELECT id
        FROM person
        WHERE
            name = 'Dmitriy'
    )
    AND pv.visit_date = '2022-01-08'
    AND pizzeria.id IN (
        SELECT pizzeria.id
        FROM menu
        WHERE
            price < 800
    );