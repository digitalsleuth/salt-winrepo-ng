{% set versions = [('4.2.1','{1DF7D73F-B398-414D-ADE2-68034E922AEE}')] %}

archifiltre-docs:
{% for version, guid in versions %}
  '{{ version }}.0':
    full_name: 'Docs par Archifiltre'
    installer: https://github.com/SocialGouv/archifiltre-docs/releases/download/v{{ version }}/archifiltre-docs-win-x64.msi
    install_flags: '/qn /norestart ALLUSERS=1'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {{ guid }} /norestart'
    locale: en_US
    msiexec: False
    reboot: False
{% endfor %}
