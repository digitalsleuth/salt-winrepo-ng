{% set versions = [('1.3.1','{D9F136C1-3691-47E3-9079-4FE9C9010201}'),
                   ('1.2.1','{D9F136C1-3691-47E3-9079-4FE9C9010201}')
] %}

clamav:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'ClamAV {{ version }}'
    installer: https://www.clamav.net/downloads/production/clamav-{{ version }}.win.x64.msi
    install_flags: '/qn /norestart'
    locale: en_US
    reboot: False
    msiexec: False
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
  {% endfor %}
