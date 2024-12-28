{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['4.06'] %}

advanced-renamer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Advanced Renamer'
    installer: 'https://www.advancedrenamer.com/down/win/advanced_renamer_setup_{{ version | replace(".", "_") }}.exe'
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Advanced Renamer\unins000.exe'
    uninstall_flags: '/VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
