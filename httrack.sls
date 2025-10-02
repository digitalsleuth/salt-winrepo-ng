{% set versions = [('3.49.2', '3.49-2')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

httrack:
 {% for version, build in versions %}
  '{{ version }}':
    full_name: 'WinHTTrack Website Copier {{ build }} (x64)'
    installer: 'https://mirror.httrack.com/httrack_x64-{{ version }}.exe'
    install_flags: '/SP- /ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\WinHTTrack\unins000.exe'
    uninstall_flags: '/VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
