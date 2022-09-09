# Version 14.0.0.0
{% set PROGRAM_FILES = 'C:\Program Files' %}

ntfs-data-recovery:
  '14':
    full_name: 'NTFS Data Recovery 14'
    installer: 'https://www.ntfs.com/downloads/NtfsRecoveryToolkit.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\LSoft Technologies\NTFS Data Recovery\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
