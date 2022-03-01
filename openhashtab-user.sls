# InnoSetup
openhashtab-user:
  'v3.0.1':
    full_name: 'OpenHashTab version v3.0.1'
    installer: https://github.com/namazso/OpenHashTab/releases/download/v3.0.1/OpenHashTab_setup_user.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '%AppData%\Local\Programs\OpenHashTab\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256=39F777E93CEB205FB008C936555A13D9A9AEEF46E2BDC77B128F1366CB026DF0
