-- Model fails if it returns results
SELECT *
FROM {{ ref('vamovo_transform') }}
WHERE total_distance > 1000000
