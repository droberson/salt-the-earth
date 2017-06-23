{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
gnuplot:
  pkg.installed
{% endif %}

