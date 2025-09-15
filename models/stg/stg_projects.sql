
{{ config(materialized='table',
alias='stg_projects') }}

select 
project::varchar(20) as project,
assignment_date::date as assignment_date,
labours_hours::integer as labours_hours,
current_timestamp as loaded_at
from {{ ref('raw_projects') }}