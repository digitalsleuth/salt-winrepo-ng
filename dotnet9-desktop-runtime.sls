{% set versions = [('9.0.5','34816')] %}

dotnet9-desktop-runtime:
  {% for version, subversion in versions %}
  '{{ version }}.{{ subversion }}':
    full_name: 'Microsoft Windows Desktop Runtime - {{ version }} (x64)'
    installer: 'https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/{{ version }}/windowsdesktop-runtime-{{ version }}-win-x64.exe'
    install_flags: '/quiet /norestart'
    uninstaller: 'https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/{{ version }}/windowsdesktop-runtime-{{ version }}-win-x64.exe'
    uninstall_flags: '/uninstall /quiet /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
