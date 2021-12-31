{% set PROGRAM_FILES = 'C:\Program Files (x86)' %}

kernel-pst-viewer:
  '20.3':
    full_name: 'Kernel Outlook PST Viewer ver 20.3'
    installer: 'https://www.nucleustechnologies.com/downloads/freekernelpstviewer.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\Kernel Outlook PST Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
