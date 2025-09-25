{{ config(materialized='view') }}


select 
project,
sum(labours_hours) as labours_hours
from {{ ref('stg_projects') }}
group by project
