{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set version = '4126' %}
sublime-text:
  '{{ version }}':
    full_name: 'Sublime Text'
    installer: 'https://download.sublimetext.com/sublime_text_build_{{ version }}_x64_setup.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\Sublime Text\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False