{% set versions = ['4.35','4.34','4.33','4.32','4.31','4.30','4.29','4.28','4.27','4.26','4.25','4.24','4.23','4.22','4.19','4.15','4.12','4.11','4.10'] %}

msg-viewer:
{% for version in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'MSG Viewer {{ version }}'
    installer: https://downloads.pstwalker.com/msgviewer{{ dotless_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\MSG Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
