{% set versions = ['7.22','7.21','7.20','7.19','7.17','7.15','7.12','7.11','7.10','7.08','7.06','7.05','7.04','7.02','6.21'] %}

pst-walker:
{% for version in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'PST Walker {{ version }}'
    installer: https://downloads.pstwalker.com/pstwalker{{ dotless_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\PST Walker\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
