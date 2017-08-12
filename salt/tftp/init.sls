tftp:
  pkg.installed

tftpd-hpa:
  pkg.installed:
    - name: tftpd-hpa
  service.disabled:
    - name: tftpd-hpa
