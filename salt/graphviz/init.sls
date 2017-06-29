# graphviz -- set of graph drawing tools

{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
graphviz:
  pkg.installed
{% endif %}

