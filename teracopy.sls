{% set versions = ['3.10'] %}
teracopy:
{% for version in versions %}
  '{{ version }}':
    full_name: 'TeraCopy'
    installer: 'https://codesector.nyc3.cdn.digitaloceanspaces.com/teracopy.exe'
    install_flags: '/quiet'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /x {3B52584E-B01A-456B-A6D9-A2135F8B1E98} /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
