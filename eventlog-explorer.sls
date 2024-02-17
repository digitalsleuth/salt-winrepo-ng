{% set versions = ['5.5','5.4'] %}
{% set PROGRAM_FILES = '%ProgramFiles(x86)%' %}

eventlog-explorer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Event Log Explorer Standard Edition {{ version }}'
    installer: https://eventlogxp.com/download/elex_setup.exe
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Event Log Explorer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
