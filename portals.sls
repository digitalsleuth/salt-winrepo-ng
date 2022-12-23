{% set versions = [('2.1.0.6', '2-1-0-6'),('2.1.0.5','2-1-0-5'),('2.1.0.4','2-1-0-4')] %}
{% set PROGRAM_FILES = "%PROGRAMFILES%" %}

portals:
  {% for version, dashes in versions %}
  '{{ version }}':
    full_name: 'Portals version {{ version }}'
    installer: https://downloads.portals-app.com/installers/{{ version }}/portals_installer_v{{ dashes }}.exe
    install_flags: '/ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Portals\unins000.exe'
    uninstall_flags: '/ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
