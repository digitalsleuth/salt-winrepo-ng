# Unable to completely perform a silent uninstall at this time as it is a restriction of the software

{% set versions = ['9.5','9.4.2','9.4.1','9.4','9.3'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

treesize-pro:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'TreeSize V{{ version }}'
    installer: https://downloads.jam-software.de/treesize/TreeSize-Setup.exe
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: "{{ PROGRAM_FILES }}\\JAM Software\\TreeSize\\unins000.exe"
    uninstall_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
