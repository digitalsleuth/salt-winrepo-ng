{% set versions = ['5.3.7','5.3.6'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

powergrep:
  {% for version in versions %}
  'DEMO {{ version }}':
    full_name: 'PowerGREP 5 DEMO {{ version }}'
    installer: https://download.jgsoft.com/powergrep/SetupPowerGREPDemo.exe
    install_flags: /S
    uninstaller: '{{ PROGRAM_FILES }}\Just Great Software\PowerGREP 5\UnDeploy64.exe'
    uninstall_flags: /S
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
