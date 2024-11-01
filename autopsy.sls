{% set versions = ['4.21.0','4.20.0','4.19.3','4.19.2'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

autopsy:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Autopsy'
    installer: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-{{ version }}/autopsy-{{ version }}-64bit.msi'
    uninstaller: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-{{ version }}/autopsy-{{ version }}-64bit.msi'
    install_flags: 'APPDIR="{{ PROGRAM_FILES}}\Autopsy\" /quiet /norestart'
    uninstall_flags: '/quiet /norestart'
    arch: x64
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}
