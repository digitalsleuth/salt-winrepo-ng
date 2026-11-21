{% set versions = [('11.1.4','{6456391F-FAF4-3C0C-8030-CA58007663A4}')] %}

epadd:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'epadd'
    installer: https://github.com/ePADD/epadd/releases/download/v{{ version }}/epadd-{{ version }}-windows-x86_64.msi
    install_flags: 'ALLUSERS=1 /qn  /norestart'
    uninstaller: '{{ guid }}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
