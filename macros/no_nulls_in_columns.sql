-- macros/no_nulls_in_columns.sql
-- purpose:
-- it takes model name as input to the macro function and find out is there any
-- null value in any columns
{% macro no_nulls_in_columns(model) %}
  SELECT * FROM {{ model }} WHERE
  {% for col in adapter.get_columns_in_relation(model) -%}
    {{ col.column }} IS NULL OR
  {% endfor %}
  FALSE
{% endmacro %}