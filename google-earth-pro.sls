{% set versions = [('7.3.6.9345','7.3.6','{F27DBA46-80E1-4858-9285-19198FFFBF3D}'), ('7.3.4.8642','7.3.4','{D9EF644E-2FAE-493B-8180-5617CC774C4F}')] %}

google-earth-pro:
{% for full_version, short_version, uninstall in versions %}
  '{{ full_version }}':
    full_name: 'Google Earth Pro'
    installer: 'https://dl.google.com/dl/earth/client/advanced/current/googleearthprowin-{{ short_version }}-x64.exe'
    uninstaller: 'msiexec.exe'
    install_flags: 'OMAHA=1'
    uninstall_flags: '/x {{ uninstall }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
