# TODO:
# - rtlsdr
# - gqrx (includes gnuradio)
# - hackrf stuff

{%- from "vars.jinja" import vars with context %}

{% if vars.useradio == True %}
include:
  - chirp
  - minimodem
  - rtl-sdr
  - gqrx-sdr
{% endif %}
