{% set versions = [('9.0.30729.6161','5/d/8/5d8c65cb-c849-4025-8e95-c3966cafd8ae','{5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4}'),
                   ('9.0.21022', 'd/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19','{350AA351-21FA-3270-8B7A-835434E766AD}')] %}

ms-vcpp-2008-redist_x64:
{% for version, url, guid in versions %}
  '{{ version }}':
    full_name: 'Microsoft Visual C++ 2008 Redistributable - x64 {{ version }}'
    installer: 'https://download.microsoft.com/download/{{ url }}/vcredist_x64.exe'
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {{ guid }} /norestart'
    msiexec: False
    locale: en_US
    reboot: False

{% endfor %}
