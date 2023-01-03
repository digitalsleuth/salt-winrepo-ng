{% set version = '8.1.4' %}
{% set PROGRAM_FILES = "%PROGRAMFILES%" %}

softperfect-networkscanner:
  '{{ version }}':
    full_name: 'SoftPerfect Network Scanner version {{ version }}'
    installer: https://www.softperfect.com/download/files/netscan_setup.exe
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\SoftPerfect Network Scanner\unins000.exe'
    uninstall_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    locale: en_US
    msiexec: False
    reboot: False

