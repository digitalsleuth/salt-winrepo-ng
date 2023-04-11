{% set versions = ['2.20.1011.6893','2.19.999.6400'] %}

elcomsoft-efdd:
{% for version in versions %}
  '{{ version }}':
    full_name: 'Elcomsoft Forensic Disk Decryptor'
    installer: 'https://www.elcomsoft.com/download/efdd_setup_en.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'https://www.elcomsoft.com/download/efdd_setup_en.msi'
    uninstall_flags: '/quiet /norestart'
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}
