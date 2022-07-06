{% macro limit_data_dev(date_column) %}

{% if target.name == 'default' %}
where {{date_column}} >= dateadd('day', -3, current_timestamp)
{% endif %}

{% endmacro %}