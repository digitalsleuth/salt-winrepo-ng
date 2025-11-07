# InnoSetup
{% set PROGRAM_FILES = "%ProgramFiles%" %}
pdfstreamdumper:
  '0.9.634':
    full_name: 'PDFStreamDumper 0.9.5xx'
    installer: https://sandsprite.com/CodeStuff/PDFStreamDumper_Setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE /DIR="{{ PROGRAM_FILES }}\PDFStreamDumper"'
    uninstaller: '{{ PROGRAM_FILES }}\PDFStreamDumper\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
