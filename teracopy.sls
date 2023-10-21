{% set versions = [('3.12','{814A9D93-2A41-4A6A-AD60-36651434AF1F}'),('3.10','{3B52584E-B01A-456B-A6D9-A2135F8B1E98}')] %}

teracopy:
{% for version, uninstall in versions %}
  '{{ version }}':
    full_name: 'TeraCopy'
    installer: 'https://codesector.nyc3.cdn.digitaloceanspaces.com/teracopy.exe'
    install_flags: '/quiet'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /x {{ uninstall }} /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
