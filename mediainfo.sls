{% set versions = ['24.12'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

mediainfo:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'MediaInfo {{ version }}'
    installer: https://mediaarea.net/download/binary/mediainfo-gui/{{ version }}/MediaInfo_GUI_{{ version }}_Windows.exe
    install_flags: /S
    uninstaller: '{{ PROGRAM_FILES}}\MediaInfo\uninst.exe'
    uninstall_flags: /S
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
