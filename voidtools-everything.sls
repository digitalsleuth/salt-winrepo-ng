{% set versions = ['1.4.1.1027','1.4.1.1026','1.4.1.1024','1.4.1.1022','1.4.1.1005','1.4.1.986'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

voidtools-everything:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Everything {{ version }} (x64)'
    installer: https://www.voidtools.com/Everything-{{ version }}.x64-Setup.exe
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Everything\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
