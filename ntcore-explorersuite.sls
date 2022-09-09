# InnoSetup
ntcore-explorersuite:
  'IV':
    full_name: 'Explorer Suite IV'
    installer: https://ntcore.com/files/ExplorerSuite.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\NTCore\Explorer Suite\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
