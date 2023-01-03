{% set version = '2.5.0' %}
{% set PROGRAM_FILES = "%PROGRAMFILES%" %}

plist-editor:
  '{{ version }}':
    full_name: 'plist Editor Pro {{ version }}'
    installer: https://www.icopybot.com/plisteditor_setup.exe
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\VOW Software\plist Editor Pro\uninst.exe'
    uninstall_flags: '/S'
    locale: en_US
    msiexec: False
    reboot: False
