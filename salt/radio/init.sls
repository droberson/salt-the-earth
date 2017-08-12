# TODO:
# - rtlsdr repo/ppa
# - gqrx (includes gnuradio) repo/ppa
# - hackrf stuff

{%- from "vars.jinja" import vars with context %}

{% if vars.useradio == True %}
include:
  - chirp
  - minimodem
  - rtl-sdr
  - gqrx-sdr
{% endif %}
