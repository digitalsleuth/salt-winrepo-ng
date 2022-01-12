{% set version = '1.20.9.0' %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}
vcxsrv:
  '{{ version }}':
    full_name: 'VcXsrv'
    installer: 'https://phoenixnap.dl.sourceforge.net/project/vcxsrv/vcxsrv/{{ version }}/vcxsrv-64.{{ version }}.installer.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\VcXsrv\uninstall.exe'
    uninstall_flags: '/S'
    source: sha256=d46ced705c4d8ffafac2aa312b97e3287cd57a43f4a4592c247a764c04f5d51b
    msiexec: False
    locale: en_US
    reboot: False
