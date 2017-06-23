{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
w3af:
  pkg.installed
{% else %}
w3af-console:
  pkg.installed
{% endif %}

