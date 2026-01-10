{% set PROGRAM_FILES = 'C:\Program Files (x86)' %}

kernel-edb-viewer:
  '25.0':
    full_name: 'Kernel for Exchange Server ver 25.0'
    installer: 'https://www.nucleustechnologies.com/downloads/exchange-edb-viewer.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Kernel Exchange EDB Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
