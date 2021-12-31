{% set PROGRAM_FILES = 'C:\Program Files (x86)' %}

kernel-ost-viewer:
  '21.1':
    full_name: 'Kernel OST Viewer ver 21.1'
    installer: 'https://www.nucleustechnologies.com/downloads/freekernelostviewer.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\Kernel OST Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
