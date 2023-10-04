{% set versions = [('1.26.7','{9B45D139-7451-4C93-B694-4AFDCBA4A03D}'),('1.25.9','{E254AA9E-A48A-4A92-AF75-E6FF77C1A915}')] %}

veracrypt:
{% for version, uninstall in versions %}
  '{{ version }}':
    full_name: 'VeraCrypt {{ version }}'
    installer: 'https://launchpad.net/veracrypt/trunk/{{ version }}/+download/VeraCrypt_Setup_x64_{{ version }}.msi'
    install_flags: '/qn /norestart ACCEPTLICENSE=YES'
    uninstaller: 'msiexec'
    uninstall_flags: '/x {{ uninstall }} /qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
 {% endfor %}
