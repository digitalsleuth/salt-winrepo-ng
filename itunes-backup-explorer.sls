{% set versions = [('1.7', '{1775ACB1-6D62-3C64-BF6A-D59F8AFFF461}'] %}

itunes-backup-explorer:
{% for version, guid in versions %}
  '{{ version }}':
    full_name: 'iTunes Backup Explorer'
    installer: https://github.com/MaxiHuHe04/iTunes-Backup-Explorer/releases/download/v{{ version }}/iTunes_Backup_Explorer-{{ version }}_win_x64.msi
    install_flags: '/qn /norestart ALLUSERS=1 INSTALLDIR="C:\Program Files\iTunes Backup Explorer"'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    locale: en_US
    reboot: False
{% endfor %}
