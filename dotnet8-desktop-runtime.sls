{% set versions = [('8.0.11','34221','27bcdd70-ce64-4049-ba24-2b14f9267729','d4a435e55182ce5424a7204c2cf2b3ea')] %}

dotnet8-desktop-runtime:
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
