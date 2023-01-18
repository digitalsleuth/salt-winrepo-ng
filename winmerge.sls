{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}

winmerge:
  {% for version in ['2.16.16','2.16.14','2.16.12','2.16.10','2.16.8','2.16.6','2.16.4','2.16.2','2.16.0','2.14.0'] %}
  '{{version}}':
    full_name: 'WinMerge {{version}}'
    installer: 'https://downloads.sourceforge.net/project/winmerge/stable/{{version}}/WinMerge-{{version}}-Setup.exe'
    install_flags: '/SP- /verysilent /norestart'
    uninstaller: '{{ PROGRAM_FILES }}\WinMerge\unins000.exe'
    uninstall_flags: '/SP- /verysilent /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
