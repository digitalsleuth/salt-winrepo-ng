{% set versions = [('1.0', '7066ae3934821553f8db00d5d012f8937c85006d4b230735f9890cff79c461b2')] %}

ntfs-log-analyzer:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'SysTools NTFS Log Analyzer {{ version }}'
    installer: https://downloads.systoolsgroup.com/ntfs-log-analyzer.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\SysTools NTFS Log Analyzer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMGSBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
