{% set versions = ['4.3.1'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

dupeguru:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'dupeGuru {{ version }}'
    installer: https://github.com/arsenetar/dupeguru/releases/download/{{ version }}/dupeGuru_win64_{{ version }}.exe
    install_flags: '/S /ALLUSERS'
    uninstaller: '{{ PROGRAM_FILES }}\Hardcoded Software\dupeGuru\Uninstall.exe'
    uninstall_flags: '/S'
    locale: en_US
    reboot: False
    msiexec: False
  {% endfor %}
