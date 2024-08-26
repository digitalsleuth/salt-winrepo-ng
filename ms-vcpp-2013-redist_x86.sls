{% set versions = [('12.0.40664','https://download.visualstudio.microsoft.com/download/pr/10912113/5da66ddebb0ad32ebd4b922fd82e8e25'),('12.0.30501','https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3')] %}

ms-vcpp-2013-redist_x86:
  {% for version, url in versions %}
  '{{ version }}.0':
    full_name: 'Microsoft Visual C++ 2013 Redistributable (x86) - {{ version }}'
    installer: '{{ url }}/vcredist_x86.exe'
    install_flags: '/quiet /norestart'
    uninstaller: '{{ url }}/vcredist_x86.exe'
    uninstall_flags: '/uninstall /quiet /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
