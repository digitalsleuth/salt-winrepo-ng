{% set versions = [('9.0.30729.6161','5/d/8/5d8c65cb-c849-4025-8e95-c3966cafd8ae','{9BE518E6-ECC6-35A9-88E4-87755C07200F}'),
                   ('9.0.21022', '1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140','{FF66E9F6-83E7-3A3E-AF14-8DE9A809A6A4}')] %}

ms-vcpp-2008-redist_x86:
{% for version, url, guid in versions %}
  '{{ version }}':
    full_name: 'Microsoft Visual C++ 2008 Redistributable - x86 {{ version }}'
    installer: 'https://download.microsoft.com/download/{{ url }}/vcredist_x86.exe'
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {{ guid }} /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
