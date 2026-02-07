# InnoSetup
{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set version = "0.9.634" %}
pdfstreamdumper:
  '{{ version }}':
    full_name: 'PDFStreamDumper 0.9.5xx'
    installer: salt://win/repo-ng/salt-winrepo-ng/_/files/PDFStreamDumper_Setup_{{ version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE /DIR="{{ PROGRAM_FILES }}\PDFStreamDumper"'
    uninstaller: '{{ PROGRAM_FILES }}\PDFStreamDumper\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
