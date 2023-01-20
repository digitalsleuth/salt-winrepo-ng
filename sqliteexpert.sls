{% set versions = ['5.4.35.580'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

sqlite-expert:
  {% for version in versions %}
  {% set major = version[0] %}
  '{{ version }}':
    full_name: 'SQLite Expert Personal {{ version }}'
    installer: 'https://www.sqliteexpert.com/v{{ major }}/SQLiteExpertPersSetup64.exe'
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\SQLite Expert\Personal {{ major }}\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}

