{% set versions = ['5.6.8.4572'] %}

forensic-explorer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Forensic Explorer v5'
    installer: https://download.getdata.com/support/fex/v5/ForensicExplorer-64bit-(v{{ version }}).exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\GetData\Forensic Explorer v5\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
