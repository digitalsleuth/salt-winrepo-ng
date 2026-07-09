# Silent uninstall not possible due to custom code in the uninstaller

{% set versions = ['3.0.0'] %}
{% set PROGRAM_FILES = "%PROGRAMFILES%" %}

backup2fs:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Backup2FS'
    installer: https://github.com/eichbaumj/Backup2FS/releases/download/v{{ version }}/Backup2FS_Setup_{{ version }}_x64.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Backup2FS\unins000.exe'
    uninstall_flags: '/SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES'
    locale: en_US
    reboot: False
  {% endfor %}
