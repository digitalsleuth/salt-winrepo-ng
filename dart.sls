{% set versions = ['2.0.22'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

dart:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'DART {{ version }}'
    installer: 'https://s3.amazonaws.com/aptrust.public.download/DART/DART+Setup+{{ version }}.exe'
    install_flags: '/S /allusers --no-desktop-shortcut /D={{ PROGRAM_FILES }}\DART\'
    uninstaller: '{{ PROGRAM_FILES }}\DART\Uninstall DART.exe'
    uninstall_flags: '/S /allusers'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
