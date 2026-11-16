{% set versions = [('2.3.1.1000','{9A7325EA-D3C9-0203-0001-250928162350}'),
                   ('2.3.0.1000','{9A7325EA-D3C9-0203-0000-250419162816}'),
                   ('2.0.6.1000','{9A7325EA-D3C9-0200-0006-221002114833}'),
] %}

dokany:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'Dokan Library {{ version }} (x64)'
    installer: https://github.com/dokan-dev/dokany/releases/download/v{{ version }}/Dokan_x64.msi
    install_flags: '/qn /norestart'
    uninstaller: '{{ guid }}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  {% endfor %}
