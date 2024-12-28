{% set versions = ['88.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

mkvtoolnix:
  {% for version in versions %}
  '{{ version }}.0':
    full_name: 'MKVToolNix {{ version }}.0 (64-bit)'
    installer: https://mkvtoolnix.download/windows/releases/{{ version }}/mkvtoolnix-64-bit-{{ version }}-setup.exe
    install_flags: /S
    uninstaller: "{{ PROGRAM_FILES }}\\MKVToolNix\\uninst.exe"
    uninstall_flags: /S
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
