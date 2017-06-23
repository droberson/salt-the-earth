{%- from "vars.jinja" import vars with contect %}

{% if vars.usegui == True %}
feh:
  pkg.installed
{% endif %}
