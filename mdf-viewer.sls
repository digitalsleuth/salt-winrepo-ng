{% set versions = ['13.0','12.0','11.0'] %}

mdf-viewer:
{% for version in versions %}
  '{{ version }}':
    full_name: 'SysTools SQL MDF Viewer version {{ version }}'
    installer: https://downloads.systoolsgroup.com/mdf-viewer.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\SysTools SQL MDF Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
