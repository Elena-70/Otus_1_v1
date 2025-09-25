SELECT *
FROM {{ ref('projects_analysis') }}
where labours_hours is null