{% set versions = ['15.0.0'] %}

ffdec:
{% for version in versions %}
  '{{ version }}':
    full_name: 'JPEXS Free Flash Decompiler'
    installer: https://github.com/jindrapetrik/jpexs-decompiler/releases/download/version{{ version }}/ffdec_{{ version }}_setup.exe
    install_flags: '/S'
    uninstaller: 'C:\Program Files (x86)\FFDec\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
