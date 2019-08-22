SELECT athlete_id,
       activity_type,
       COUNT(*) activity_count, 
       SUM(distance) total_distance
FROM {{ source('public','promote_activity') }}
GROUP BY athlete_id, activity_type
