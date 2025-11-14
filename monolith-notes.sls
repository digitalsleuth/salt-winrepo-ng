{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['2.0.2','2.0.0','1.0.2','1.0.1'] %}

monolith-notes:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Monolith Notes {{ version }}'
    installer: 'https://monolith-cloud.nyc3.cdn.digitaloceanspaces.com/updates/notes/Monolith%20Notes%20Setup.exe'
    install_flags: '/S /D="{{ PROGRAM_FILES }}\Monolith Notes"'
    uninstaller: '{{ PROGRAM_FILES }}\Monolith Notes\Uninstall Monolith Notes.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
