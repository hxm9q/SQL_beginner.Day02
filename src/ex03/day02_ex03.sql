WITH
    date_range AS (
        SELECT '2022-01-01'::date + generate_series(0, 9) AS missing_date
    ),
    visited_dates AS (
        SELECT DISTINCT
            visit_date
        FROM person_visits
        WHERE
            person_id IN (1, 2)
    )
SELECT dr.missing_date
FROM
    date_range dr
    LEFT JOIN visited_dates vd ON dr.missing_date = vd.visit_date
WHERE
    vd.visit_date IS NULL
ORDER BY dr.missing_date;