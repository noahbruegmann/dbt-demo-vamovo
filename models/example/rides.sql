-- Pivots athlete activities to one row
SELECT {{ dbt_utils.star(from=ref('vamovo_transform')), except=['activity_type'] }},
       total_distance/activity_count distance_per_ride
FROM {{ ref('vamovo_transform') }}
WHERE activity_type = 'Ride'
