{% set versions = [('4.62', '29542a9229a36e4e7be5a9b2a3a433632ddc06e40fe2324ad7317b0679b389dc'),
                   ('4.60', '2b5c2e165ea676546a4edeee3b856923eb9a16a9ddbc679fe3995ddebf856f9e'),
                   ('4.59', '7742d47f49293f885c42d6b566d2d55335b79d454a024bff3ee113dd8b8bb41c')] %}

irfanview-plugins:
{% for version, hash in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'Irfanview Plugins {{ version }}'
    installer: https://download.betanews.com/download/1099412658-1/iview{{ dotless_version }}_plugins_x64_setup.exe
    install_flags: '/silent'
    uninstaller: ''
    uninstall_flags: ''
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
