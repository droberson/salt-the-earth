geoip-bin:
  pkg.installed

geoip-database:
  pkg.installed:
    - require:
      - pkg: geoip-bin


