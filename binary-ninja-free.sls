{% set versions = ['5.0.7486.0'] %}

binary-ninja-free:
{% for version in versions %}
  '{{ version }}':
    full_name: 'Binary Ninja (remove only)'
    installer: https://cdn.binary.ninja/installers/binaryninja_free_win64.exe
    install_flags: '/S /ALLUSERS'
    uninstaller: 'C:\Program Files\Vector35\BinaryNinja\Uninstall.exe'
    uninstall_flags: '/S /ALLUSERS'
    reboot: False
    locale: en_US
    msiexec: False
{% endfor %}
