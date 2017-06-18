{%- from "vars.jinja" import vars with context %}

{% if vars.uselatex == True %}
texlive-latex-base:
  pkg.installed

texlive-latex-extra:
  pkg.installed:
    - require:
      - pkg: texlive-latex-base

texlive-latex-recommended:
  pkg.installed:
    - require:
      - pkg: texlive-latex-base
{% endif %}
