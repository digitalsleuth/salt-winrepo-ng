# Version 7.3.01
{% set PROGRAM_FILES = 'C:\Program Files' %}

active-disk-editor:
  '7':
    full_name: 'Active@ Disk Editor 7'
    installer: 'https://www.disk-editor.org/download/diskeditor-freeware.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\LSoft Technologies\Active@ Disk Editor\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
