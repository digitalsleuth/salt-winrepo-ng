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
    source_hash: sha256=f81ae34252f9dac08bfee6c4bce5fca99daf0e5fd17a0bc76637d6cbd1c2e875
