{% set version = '1.20.14.0' %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}
vcxsrv:
  '{{ version }}':
    full_name: 'VcXsrv'
    installer: 'https://versaweb.dl.sourceforge.net/project/vcxsrv/vcxsrv/{{ version }}/vcxsrv-64.{{ version }}.installer.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\VcXsrv\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
