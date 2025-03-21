{% set versions = [('6.0.36','34217','f6b6c5dc-e02d-4738-9559-296e938dabcb','b66d365729359df8e8ea131197715076'),
                   ('6.0.7','31422','dc0e0e83-0115-4518-8b6a-590ed594f38a','65b63e41f6a80decb37fa3c5af79a53d')] %}

dotnet6-desktop-runtime:
  {% for version, subversion, guid, hash in versions %}
  '{{ version}}.{{ subversion }}':
    full_name: 'Microsoft Windows Desktop Runtime - {{ version }} (x64)'
    installer: 'https://download.visualstudio.microsoft.com/download/pr/{{ guid }}/{{ hash }}/windowsdesktop-runtime-{{ version }}-win-x64.exe'
    install_flags: '/quiet /norestart'
    uninstaller: 'https://download.visualstudio.microsoft.com/download/pr/{{ guid }}/{{ hash }}/windowsdesktop-runtime-{{ version }}-win-x64.exe'
    uninstall_flags: '/uninstall /quiet /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
