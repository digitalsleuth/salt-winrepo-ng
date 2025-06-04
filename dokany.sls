{% set versions = [('2.3.0.1000','{9A7325EA-D3C9-0203-0000-250419162816}'),
                   ('2.0.6.1000','{9A7325EA-D3C9-0200-0006-221002114833}'),
] %}

dokany:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'Dokan Library {{ version }} (x64)'
    installer: https://github.com/dokan-dev/dokany/releases/download/v{{ version }}/Dokan_x64.msi
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: False
    reboot: False
  {% endfor %}
