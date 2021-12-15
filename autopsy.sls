autopsy:
  '4.19.2':
    full_name: 'Autopsy'
    installer: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-64bit.msi'
    uninstaller: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-64bit.msi'
    install_flags: '/quiet /norestart'
    uninstall_flags: '/quiet /norestart'
    arch: x64
    msiexec: True
    locale: en_US
    reboot: False
