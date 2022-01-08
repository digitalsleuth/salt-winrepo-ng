{% set versions = [('15.0.0', '6bc511014726f657ee59d43fdcea083ff5f128b85a7abf30535b92d91d2d264c')] %}

ffdec:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'JPEXS Free Flash Decompiler'
    installer: https://github.com/jindrapetrik/jpexs-decompiler/releases/download/version{{ version }}/ffdec_{{ version }}_setup.exe
    install_flags: '/S'
    uninstaller: 'C:\Program Files (x86)\FFDec\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
