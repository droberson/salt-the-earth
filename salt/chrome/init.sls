# chrome -- Google Chrome web browser

{%- from "vars.jinja" import vars with context %}

{% if vars.usegui == True %}
google-chrome-repo:
  pkgrepo.managed:
    - human_name: Google Chrome Repo
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - file: /etc/apt/sources.list.d/google-chrome.list
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub

google-talk-repo:
  pkgrepo.managed:
    - human_name: GoogleTalk Plugin Repo
    - name: deb http://dl.google.com/linux/talkplugin/deb/ stable main
    - file: /etc/apt/sources.list.d/google-talkplugin.list
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub

chrome:
  pkg.installed:
    - pkgs:
      - google-chrome-stable
      - google-talkplugin
    - require:
      - pkgrepo: google-talk-repo
      - pkgrepo: google-chrome-repo
{% endif %}

