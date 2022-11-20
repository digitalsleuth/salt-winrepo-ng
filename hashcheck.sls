hashcheck:
  '2.4.0.55':
    full_name: 'HashCheck Shell Extension'
    installer: 'https://github.com/gurnec/HashCheck/releases/download/v2.4.0/HashCheckSetup-v2.4.0.exe'
    install_flags: '/S'
    uninstaller: 'regsvr32.exe'
    uninstall_flags: '/i /u /s "C:\Windows\System32\ShellExt\HashCheck.dll" && del C:\Windows\System32\ShellExt\HashCheck.dll'
    msiexec: False
    locale: en_US
    reboot: False
