{% set versions = ['4.72','4.62','4.60','4.59'] %}

irfanview-plugins:
{% for version in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'IrfanView Plugins {{ version }}'
    installer: https://download.betanews.com/download/1099412658-1/iview{{ dotless_version }}_plugins_x64_setup.exe
    install_flags: '/silent'
    uninstaller: ''
    uninstall_flags: ''
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
