{% set versions = ['1.8'] %}
{% set PROGRAM_FILES86 = "%ProgramFiles(x86)%" %}

exact-audio-copy:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Exact Audio Copy {{ version }}'
    installer: https://www.exactaudiocopy.de/eac-{{ version }}.exe
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES86 }}\Exact Audio Copy\uninst.exe'
    uninstall_flags: '/S'
    locale: en_US
    msiexec: False
  {% endfor %}
