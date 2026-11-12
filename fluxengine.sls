{% set versions = [('26.10.35640','{4C446793-780F-3EF1-A404-BEB56A47C8E7}')] %}

fluxengine:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'fluxengine'
    installer: https://github.com/davidgiven/fluxengine/releases/download/dev/fluxengine-X64.msi
    install_flags: '/qn  /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
