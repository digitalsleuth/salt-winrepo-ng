{% set versions = [('11.0', 'abaefb4e37fb02e6fafb875cf73a8f8411adc71e6872af570d877d525eacde87')] %}

mdf-viewer:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'SysTools SQL MDF Viewer version 11.0'
    installer: https://downloads.systoolsgroup.com/mdf-viewer.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\SysTools SQL MDF Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
