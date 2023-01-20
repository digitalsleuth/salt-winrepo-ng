{% set versions = [('1.7.2','1.7.2rc1','1.7.2.p1','Hurricane Ridge')] %}
{% set PROGRAM_FILES = '%ProgramFiles%' %}

rekall:
  {% for version, rc_version, subversion, name in versions %}
  {% set dotName = name | replace(" ",".") %}
  '{{ version }}':
    full_name: 'Rekall v{{ version }} {{ name }}'
    installer: https://github.com/google/rekall/releases/download/{{ rc_version }}/Rekall_{{ subversion }}_{{ dotName }}_x64.exe
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Rekall\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
