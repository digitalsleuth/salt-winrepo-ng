{% set PROGRAM_FILES = "%ProgramFiles%" %}

winmerge:
  {% for version in ['2.16.44','2.16.32','2.16.25','2.16.24','2.16.23','2.16.22','2.16.21','2.16.20','2.16.19','2.16.18','2.16.17','2.16.16','2.16.15','2.16.14'] %}
  '{{version}}':
    full_name: 'WinMerge {{version}}.0 x64'
    installer: 'https://github.com/WinMerge/winmerge/releases/download/v{{ version }}/WinMerge-{{ version }}-x64-Setup.exe'
    install_flags: '/SP- /VERYSILENT /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\WinMerge\unins000.exe'
    uninstall_flags: '/SP- /verysilent /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
