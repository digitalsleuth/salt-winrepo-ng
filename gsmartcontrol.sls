{% set versions = ['1.1.4','1.1.3'] %}

gsmartcontrol:
{% for version in versions %}
  '{{ version }}':
    full_name: 'GSmartControl'
    installer: https://github.com/ashaduri/gsmartcontrol/releases/download/v{{ version }}/gsmartcontrol-{{ version }}-win64.exe
    install_flags: '/S'
    uninstaller: 'C:\Program Files\GSmartControl\gsmartcontrol_uninst.exe'
    uninstall_flags: '/S'
    locale: en_US
    msiexec: False
    reboot: False
{% endfor %}
