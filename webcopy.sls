{% set versions = ['1.9.1.872'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

webcopy:
 {% for version in versions %}
  '{{ version }}':
    full_name: 'Cyotek WebCopy version {{ version }}'
    installer: 'https://www.cyotek.com/downloads/get/setup-cyowcopy-{{ version }}-x64.exe'
    install_flags: '/SP- /ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Cyotek\WebCopy\unins000.exe'
    uninstall_flags: '/SP- /SUPPRESSMSGBOXES /VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
