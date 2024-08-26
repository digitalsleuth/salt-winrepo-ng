# InnoSetup
{% set PROGRAM_FILES = "%ProgramFiles%" %}
pdfstreamdumper:
  '0.9.634':
    full_name: 'PDFStreamDumper 0.9.5xx'
    installer: http://sandsprite.com/CodeStuff/PDFStreamDumper_Setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE /DIR="{{ PROGRAM_FILES }}\PDFStreamDumper"'
    uninstaller: '{{ PROGRAM_FILES }}\PDFStreamDumper\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256=c26068186f63dcce9cc57502be742c728110eab07570c319a0d7d10587a6e22d
