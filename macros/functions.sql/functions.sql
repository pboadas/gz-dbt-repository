{% macro  margin_percent (A,B)  %}
ROUND(SAFE_DIVIDE({{A}}-{{B}},{{A}}),2)
{% endmacro %}

{% macro  evolution (A,B)  %}
ROUND(SAFE_DIVIDE({{A}}-{{B}},{{B}}),2)
{% endmacro %}

