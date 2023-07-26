{% set versions = ['v3.1'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

osfmount:
{% for version in versions %}
  '{{ version }}':
    full_name: 'OSFMount'
    installer: https://www.osforensics.com/downloads/osfmount.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\OpenHashTab\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
