{% set versions = [('6.54.02.6790', '6.54', 'bc9c8739267683214be5c872d8478c21e9dede95070b64a739df1d521c0e47bb')] %}

free-hex-editor-neo:
  {% for long_version, short_version, hash in versions %}
  '{{ long_version }}':
    full_name: 'HHD Software Free Hex Editor Neo {{ short_version }}'
    installer: https://www.hhdsoftware.com/download/free-hex-editor-neo.exe
    install_flags: -prop 'INSTALLDIR=C:\Program Files\Hex Editor Neo' -silent -machine
    uninstaller: 'https://www.hhdsoftware.com/download/free-hex-editor-neo.exe'
    uninstall_flags: '-uninstall -silent'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}

