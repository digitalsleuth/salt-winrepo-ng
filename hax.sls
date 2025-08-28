{% set versions = ['1.1.6','1.1.4'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

hax:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Hax'
    installer: https://thefreetoolproject.eu/hax/Hax-{{ version }}-win64.exe
    install_flags: '/S /VERYSILENT /NORESTART /ALLUSERS'
    uninstaller: '{{ PROGRAM_FILES }}\Hax\Uninstall.exe'
    uninstall_flags: '/S'
    locale: en_US
    reboot: False
    msiexec: False
  {% endfor %}
