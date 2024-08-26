{% set versions = [('5.0', '012599f3a3abeca988964dbab47b1c3fb31cfe164d6bf724d406859d785ddab2')] %}

pst-viewer:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'SysTools Outlook PST Viewer {{ version }}'
    installer: https://downloads.systoolsgroup.com/outlook-pst-viewer.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\SysTools Outlook PST Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
