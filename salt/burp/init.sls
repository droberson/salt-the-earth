{%- from "vars.jinja" import vars with context %}

{% if vars.usegui %}
burp:
  cmd.run:
    - name:  curl https://portswigger.net/DownloadUpdate.ashx?Product=Free -o /usr/local/bin/burpsuite_free.jar
    - creates: /usr/local/bin/burpsuite_free.jar
    - require:
      - pkg: java-common
  file.managed:
    - name: /usr/local/bin/burp
    - source: salt://burp/burp.sh
    - user: root
    - group: root
    - mode: 755
{% endif %}

