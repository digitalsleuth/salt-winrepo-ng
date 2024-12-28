{% set versions = [('5.0.4', '30422')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

beyond-compare:
 {% for version, build in versions %}
  '{{ version }}':
    full_name: 'Beyond Compare {{ version }}'
    installer: 'https://www.scootersoftware.com/files/BCompare-{{ version }}.{{ build }}.exe'
    install_flags: '/SP- /ALLUSERS /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Beyond Compare 5\unins000.exe'
    uninstall_flags: '/VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
