WITH
    Parameteres AS (
        SELECT age, gender, name
        FROM person
        WHERE
            age > 25
            AND gender = 'female'
    )
SELECT name
FROM Parameteres
ORDER BY name;