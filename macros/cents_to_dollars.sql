{%- macro cents_to_dollars(amount, precision = 2) -%}
round( 1.0 * {{amount}} / 100, {{precision}})
{%- endmacro-%}