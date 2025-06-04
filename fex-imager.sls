{% set versions = ['2.2.1.306','2.2.1.304','2.2.1.283'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

fex-imager:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'FEX Imager'
    installer: https://download.getdata.com/support/fex/fi/FEX-Imager-(v{{ version }}).exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\GetData\FEX Imager\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    locale: 'en_US'
    msiexec: False
    reboot: False
  {% endfor %}
