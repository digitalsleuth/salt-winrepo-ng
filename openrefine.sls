{% set versions = ['3.8.7'] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

openrefine:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'OpenRefine v{{ version }}'
    installer: https://github.com/OpenRefine/OpenRefine/releases/download/{{ version }}/openrefine-win-with-java-installer-{{ version }}.exe
    install_flags: '/VERYSILENT /ALLUSERS /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\\OpenRefine\\unins000.exe'
    uninstall_flags: '/SP- /VERYSILENT /NORESTART'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
