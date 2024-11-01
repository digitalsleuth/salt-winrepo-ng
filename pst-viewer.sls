{% set versions = ['5.0'] %}

pst-viewer:
{% for version in versions %}
  '{{ version }}':
    full_name: 'SysTools Outlook PST Viewer {{ version }}'
    installer: https://downloads.systoolsgroup.com/outlook-pst-viewer.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\SysTools Outlook PST Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
