{{ config(materialized='view') }}

select 
project,
sum (labours_hours) as labours_hours,
from {{ ref('raw_projects') }}
group by project