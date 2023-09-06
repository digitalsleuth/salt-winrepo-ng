{% set versions = ['0.72.0','0.64.1'] %}

ms-powertoys:
{% for version in versions %}
  '{{ version }}':
    full_name: 'PowerToys (Preview) x64'
    installer: 'https://github.com/microsoft/PowerToys/releases/download/v{{ version }}/PowerToysSetup-{{ version }}-x64.exe'
    install_flags: '/S'
    uninstaller: 'https://github.com/microsoft/PowerToys/releases/download/v{{ version }}/PowerToysSetup-{{ version }}-x64.exe'
    uninstall_flags: '/uninstall /s'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
