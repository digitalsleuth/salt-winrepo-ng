{% set versions = [('7.3.4.8642','7.3.4')] %}

google-earth-pro:
{% for full_version, short_version in versions %}
  '{{ full_version }}':
    full_name: 'Google Earth Pro'
    installer: 'https://dl.google.com/dl/earth/client/advanced/current/googleearthprowin-{{ short_version }}-x64.exe'
    uninstaller: 'msiexec.exe'
    install_flags: 'OMAHA=1'
    uninstall_flags: '/x {D9EF644E-2FAE-493B-8180-5617CC774C4F} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
