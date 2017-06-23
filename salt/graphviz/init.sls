{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
graphviz:
  pkg.installed
{% endif %}

