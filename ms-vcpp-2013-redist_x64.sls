{% set versions = [('12.0.40664', 'https://download.visualstudio.microsoft.com/download/pr/10912041/cee5d6bca2ddbcd039da727bf4acb48a'),('12.0.30501', 'https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3')] %}

ms-vcpp-2013-redist_x64:
  {% for version, url in versions %}
  '{{ version }}.0':
    full_name: 'Microsoft Visual C++ 2013 Redistributable (x64) - {{ version }}'
    installer: '{{ url }}/vcredist_x64.exe'
    install_flags: '/quiet /norestart'
    uninstaller: '{{ url }}/vcredist_x64.exe'
    uninstall_flags: '/uninstall /quiet /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
