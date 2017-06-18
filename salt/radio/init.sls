{%- from "vars.jinja" import vars with context %}

{% if vars.useradio == True %}
include:
  - chirp
{% endif %}
