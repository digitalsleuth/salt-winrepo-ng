{% set versions = ['9.1.2.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

wing-python-ide:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Wing Personal {{ version }}'
    installer: https://wingware.com/pub/wing-personal/{{ version }}/wing-personal-{{ version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Wing Personal {{ version[0] }}\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
