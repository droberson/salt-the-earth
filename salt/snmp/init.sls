snmp:
  pkg.installed

snmp-mibs-downloader:
  pkg.installed:
    - require:
      - pkg: snmp

/etc/snmp/snmp.conf:
  file.comment:
    - require:
      - pkg: snmp-mibs-downloader
    - regex: ^mibs

