# just 32-bit x86 installer available

{% set versions = ['2.22','2.20','2.18'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

defraggler:
  {% for version in versions %}
  {% set dotless = version | replace(".","") %}
  '{{ version }}':
    full_name: 'Defraggler'
    installer: 'https://download.ccleaner.com/dfsetup{{ dotless }}.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Defraggler\uninst.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
