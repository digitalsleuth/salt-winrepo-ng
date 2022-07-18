wsl2-update:
  '5.10.16':
    full_name: 'Windows Subsystem for Linux Update'
    installer: 'https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi'              
    uninstaller: 'https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi'            
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    source_hash: sha256=4d09c776c8d45f70a202281d18e19be1118f53159b0c217a5274a31ce18525fe
    locale: en_US
    msiexec: True
    reboot: False
