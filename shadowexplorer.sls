# InnoSetup
shadowexplorer:
  '0.9.462.0':
    full_name: 'ShadowExplorer 0.9'
    installer: https://www.shadowexplorer.com/uploads/ShadowExplorer-0.9-setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\ShadowExplorer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
