{% set versions = ['3.3.0.9','3.2.1.0','3.2.0.3','3.1.0.2','3.0.3.3','3.0.2.2','2.1.0.6','2.1.0.5','2.1.0.4'] %}
{% set PROGRAM_FILES = "%PROGRAMFILES%" %}

portals:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Portals version {{ version }}'
    installer: https://downloads.portals-app.com/installers/{{ version }}/portals_installer_v{{ version | replace(".","-") }}.exe
    install_flags: '/ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Portals\unins000.exe'
    uninstall_flags: '/ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
