{% set versions = ['1.0'] %}

ntfs-log-analyzer:
{% for version in versions %}
  '{{ version }}':
    full_name: 'SysTools NTFS Log Analyzer {{ version }}'
    installer: https://downloads.systoolsgroup.com/ntfs-log-analyzer.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\SysTools NTFS Log Analyzer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMGSBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
