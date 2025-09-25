{{ config(materialized='table') }}


select 
project,
{{ categorize_labours_hours('labours_hours')}} as labours_hours_category
from {{ ref('raw_projects') }}
