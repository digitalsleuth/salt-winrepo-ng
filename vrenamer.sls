{% set versions = ['1.6.1'] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

vrenamer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'vRenamer version {{ version }}'
    installer: https://phoenixnap.dl.sourceforge.net/project/vrenamer/{{ version }}/vRenamer_{{ version | replace(".","") }}_setup.exe?viasf=1
    install_flags: '/SP- /VERYSILENT /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: "{{ PROGRAM_FILES }}\\vRenamer\\unins000.exe"
    uninstall_flags: '/SP- /VERYSILENT /NORESTART'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
