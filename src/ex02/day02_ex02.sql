SELECT
    COALESCE(p.name, '-') AS person_name,
    pv.visit_date,
    COALESCE(pz.name, '-') AS pizzeria_name
FROM (
        SELECT DISTINCT
            *
        FROM person_visits
        WHERE
            visit_date BETWEEN '2022-01-01' AND '2022-01-03'
    ) AS pv
    FULL JOIN person p ON pv.person_id = p.id
    FULL JOIN pizzeria pz ON pv.pizzeria_id = pz.id
ORDER BY
    person_name ASC,
    visit_date ASC,
    pizzeria_name ASC;