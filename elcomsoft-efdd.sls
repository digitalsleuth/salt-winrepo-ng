{% set versions = [('2.21.1024.8145','{F1C36140-CAD1-4A57-8871-E6A2E99D80E9}')] %}

elcomsoft-efdd:
{% for version, guid in versions %}
  '{{ version }}':
    full_name: 'Elcomsoft Forensic Disk Decryptor'
    installer: 'https://www.elcomsoft.com/download/efdd_setup_en.msi'
    install_flags: '/quiet /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /quiet /norestart'
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}
