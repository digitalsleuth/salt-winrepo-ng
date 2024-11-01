wsl2-update:
  '5.10.16':
    full_name: 'Windows Subsystem for Linux Update'
    installer: 'https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi'              
    uninstaller: 'https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi'            
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    locale: en_US
    msiexec: True
    reboot: False
