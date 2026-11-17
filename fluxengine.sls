{% set versions = [('26.11.24131','{4F72BD18-F632-344A-82DF-CC0D5431D72A}'),
                   ('26.10.35640','{4C446793-780F-3EF1-A404-BEB56A47C8E7}')] %}

fluxengine:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'fluxengine'
    installer: https://github.com/davidgiven/fluxengine/releases/download/dev/fluxengine-X64.msi
    install_flags: '/qn  /norestart'
    uninstaller: '{{ guid }}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
