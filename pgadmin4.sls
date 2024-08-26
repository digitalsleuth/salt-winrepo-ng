{% set versions = ['6.19','6.18','6.17','6.16','6.15','6.9','5.7','4.30'] %} 
{% set PROGRAM_FILES = "%ProgramFiles%" %}

pgadmin4:
{% for version in versions %}
  {% set major = version[0] %}
  '{{ version }}':
    full_name: 'pgAdmin 4 version {{ version }}'
    installer: 'https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v{{ version }}/windows/pgadmin4-{{ version }}-x64.exe'
    install_flags: '/SP- /VERYSILENT /NORESTART /ALLUSERS'
    uninstaller: '{{ PROGRAM_FILES }}\pgAdmin 4\v{{ major }}\unins000.exe'
    uninstall_flags: '/VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
