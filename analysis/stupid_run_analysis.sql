select *
from {{ ref('vamovo_transform') }}  
WHERE activity_type = 'Run'
