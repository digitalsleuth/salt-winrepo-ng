{% set versions = [('4.11','d8d33babd7e171e96694318989ff768cbbd08c9fc3429bda61daa087fa211a6e'),
                   ('4.10','c2fccc0c6b9104d2e23266b911565b5ff5c1b32a594421069de03000686e21ad')] %}

msg-viewer:
{% for version, hash in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'MSG Viewer {{ version }}'
    installer: https://downloads.pstwalker.com/msgviewer{{ dotless_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\MSG Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
