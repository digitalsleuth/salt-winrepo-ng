{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['4.0.0'] %}

letos:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Letos version {{ version }}'
    installer: 'https://github.com/pawelsalawa/letos/releases/download/{{ version }}/Letos-{{ version }}-windows-x64-setup.exe'
    install_flags: '/VERYSILENT /ALLUSERS /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Letos\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
