{% set versions = ['5.5'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

isobuster:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'IsoBuster [64bit]'
    installer: https://www.isobuster.com/downloads/isobuster/isobuster_install_64bit.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Smart Projects\IsoBuster\Uninst\unins000.exe'
    uninstall_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!RUNCODE'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
