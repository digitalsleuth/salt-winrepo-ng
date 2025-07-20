{% set versions = [('5', '25.0.0', '{917F8684-287F-4D43-A130-5DCF5A3D4CCE}'),
                   ('5', '24.0.0', '{886EB2F5-783D-4301-B3A0-BFD577A03FF1}')] %}

duplicate-cleaner:
  {% for version, subversion, guid in versions %}
  '{{ version }}.{{ subversion }}':
    full_name: 'Duplicate Cleaner Pro {{ version }}.{{ subversion }}'
    installer: https://www.digitalvolcano.co.uk/download/DuplicateCleaner-Setup-{{ version }}.msi
    install_flags: '/qn ALLUSERS=1 /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
