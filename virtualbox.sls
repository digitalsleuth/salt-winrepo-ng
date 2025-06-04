# Version 5.1 and older are no longer supported by Oracle
# https://www.virtualbox.org/wiki/Download_Old_Builds

{% set source_path = 'https://download.virtualbox.org/virtualbox/' %}
{% set versions = [('7.1.10','169112','{511B16DB-434F-44AA-9281-C98FD2840119}'),
                   ('7.0.10','158379','{D989F957-5A0B-4C36-BF71-38BD1A35C2F1}'),
                   ('7.0.6', '155176','{5C50439B-4A95-4615-A77B-6D250D734303}'),
                   ('7.0.4', '154605','{AC025744-F936-446B-A128-AC42F974FCC8}'),
                   ('6.0.4', '128413','{79366295-CD6A-4467-9901-4A7DFCF90F40}'),
                   ('5.2.26', '128414','{28CBFD88-CBF3-482C-978E-DB437CCEDFC8}')] %}

virtualbox:
{% for version, build_number, guid in versions %}
  '{{ version }}':
    full_name: 'Oracle VirtualBox {{ version }}'
    installer: '{{ source_path}}{{ version }}/VirtualBox-{{ version }}-{{ build_number }}-Win.exe'
    install_flags: '--silent'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: false
    locale: en_US
    reboot: False
{% endfor %}
