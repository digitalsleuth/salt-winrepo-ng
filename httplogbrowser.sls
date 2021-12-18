httplogbrowser:
  '4.6.0.0':
    full_name: 'HttpLogBrowser'
    installer: 'https://www.finalanalytics.com/downloads/HttpLogBrowser-Setup.exe'
    uninstaller: 'msiexec.exe'
    install_flags: '/qn /norestart'
    uninstall_flags: '/x {CAE04534-9CD6-452A-9B37-D1417BFEDBB5} /qn /norestart'
    source_hash: sha256=805a20bf88d2d8a7b25d52b48ab758e2465282cb4f0377f2dfaf73a511d197a9
    msiexec: False
    locale: en_US
    reboot: False
