{% set versions = [('2.9.3', '{30CA2173-D51B-4B78-B89C-7F384EBDB728}'),
                   ('2.1.1', '{AFE3CAE7-0DF4-4A1A-89B2-967770CB1FEF}')] %}

windirstat:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'WinDirStat {{ version }}'
    installer: https://github.com/windirstat/windirstat/releases/download/release/v{{ version }}/WinDirStat-x64.msi
    install_flags: '/qn /norestart'
    uninstaller: '{{ guid }}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
