{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['3.4.4','3.4.1'] %}

sqlitestudio:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'SQLiteStudio'
    installer: 'https://github.com/pawelsalawa/sqlitestudio/releases/download/{{ version }}/SQLiteStudio-{{ version }}-windows-x64-installer.exe'
    install_flags: '--mode unattended --install_for all'
    uninstaller: '{{ PROGRAM_FILES }}\SQLiteStudio\uninstall.exe'
    uninstall_flags: '--mode unattended'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
