# InnoSetup
pdfstreamdumper:
  '0.9.624':
    full_name: 'PDFStreamDumper 0.9.5xx'
    installer: https://github.com/dzzie/pdfstreamdumper/releases/download/current/PDFStreamDumper_Setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\PDFStreamDumper\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256=3297d271db055194a65f2f46fa073e2cd112c62e5b23cdedffe292ac21637599
