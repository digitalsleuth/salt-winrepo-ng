{% set versions = [('2.1.1', '{AFE3CAE7-0DF4-4A1A-89B2-967770CB1FEF}')] %}

windirstat:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'WinDirStat'
    installer: https://github.com/windirstat/windirstat/releases/download/release/v{{ version }}/WinDirStat-x64.msi
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
