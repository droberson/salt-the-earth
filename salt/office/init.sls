{%- from "vars.jinja" import vars with context %}

{% if vars.useoffice == True %}
include:
  - anki
  - libreoffice
  - xpdf
{% endif %}

