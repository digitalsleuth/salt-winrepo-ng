{% set versions = ['0.31.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

brim:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Brim {{ version }}'
    installer: 'https://github.com/brimdata/brim/releases/download/v{{ version }}/Brim-Setup-{{ version }}.exe'
    install_flags: '/S /allusers /no-desktop-shortcut /D="{{ PROGRAM_FILES }}\Brim\"'
    uninstaller: '{{ PROGRAM_FILES }}\Brim\Uninstall Brim.exe'
    uninstall_flags: '/S /allusers'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
