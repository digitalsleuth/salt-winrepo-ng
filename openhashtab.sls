# InnoSetup
openhashtab:
  'v3.0.1':
    full_name: 'OpenHashTab version v3.0.1'
    installer: https://github.com/namazso/OpenHashTab/releases/download/v3.0.1/OpenHashTab_setup_system.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\OpenHashTab\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256=E1CF603EA6FC081B006B18D10B619A15C29F43D3135A47A32258274132E75551
