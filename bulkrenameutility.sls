{% set PROGRAM_FILES = "%ProgramFiles%" %}

bulkrenameutility:
  {% for version in ['4.0.0.5','4.0.0.4','4.0.0.3','4.0.0.2','3.4.4.0','3.0.0.1'] %}
  '{{ version }}':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Bulk Rename Utility {{ version }} (64-bit)'
    {% else %}
    full_name: 'Bulk Rename Utility {{ version }} (32-bit)'
    {% endif %}
    installer: 'https://www.bulkrenameutility.co.uk/Downloads/BRU_setup.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Bulk Rename Utility\unins000.exe'
    uninstall_flags: '/VERYSILENT  /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
 
