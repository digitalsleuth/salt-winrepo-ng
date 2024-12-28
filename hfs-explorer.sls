# Unfortunately, there is no silent uninstall

{% set versions = ['2021.10.9'] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

hfs-explorer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'HFSExplorer {{ version }}'
    installer: https://github.com/unsound/hfsexplorer/releases/download/hfsexplorer-{{ version }}/hfsexplorer-{{ version }}-setup.exe
    install_flags: /S
    uninstaller: '{{ PROGRAM_FILES }}\HFSExplorer\uninst.exe'
    uninstall_flags: /S
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}

