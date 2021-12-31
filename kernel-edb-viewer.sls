{% set PROGRAM_FILES = 'C:\Program Files (x86)' %}

kernel-edb-viewer:
  '15.9':
    full_name: 'Kernel Exchange EDB Viewer ver 15.9'
    installer: 'https://www.nucleustechnologies.com/downloads/exchange-edb-viewer.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\Kernel Exchange EDB Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
