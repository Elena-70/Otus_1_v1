{% macro categorize_labours_hours(labours_hours_column) %}
    CASE
        WHEN {{ labours_hours_column }} < 3 THEN 'small'
        ELSE 'medium'
    END
{% endmacro %}