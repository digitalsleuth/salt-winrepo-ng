#Nullsoft nsis
{% set versions = ['0.64.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

rehex:
{% for version in versions %}
  'Version {{ version }}':
    full_name: "Reverse Engineers' Hex Editor"
    installer: https://github.com/solemnwarning/rehex/releases/download/{{ version }}/rehex-{{ version }}-win-setup.exe
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\REHex\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
