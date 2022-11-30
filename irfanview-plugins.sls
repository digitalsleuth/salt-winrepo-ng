{% set versions = [('460', '4.60', '2b5c2e165ea676546a4edeee3b856923eb9a16a9ddbc679fe3995ddebf856f9e'),
                   ('459', '4.59', '7742d47f49293f885c42d6b566d2d55335b79d454a024bff3ee113dd8b8bb41c')] %}

irfanview-plugins:
{% for url_version, dotted_version, hash in versions %}
  '{{ dotted_version }}':
    full_name: 'Irfanview Plugins {{ dotted_version }}'
    installer: https://download.betanews.com/download/1099412658-1/iview{{ url_version }}_plugins_x64_setup.exe
    install_flags: '/silent'
    uninstaller: ''
    uninstall_flags: ''
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
