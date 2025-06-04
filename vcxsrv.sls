{% set versions = ['21.1.16.1','21.1.13.0','21.1.10.0','1.20.14.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}
vcxsrv:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'VcXsrv'
    {% if version == '1.20.14.0' %}
    installer: 'https://versaweb.dl.sourceforge.net/project/vcxsrv/vcxsrv/{{ version }}/vcxsrv-64.{{ version }}.installer.exe'
    {% elif version == '21.1.16.1' %}
    installer: 'https://github.com/marchaesen/vcxsrv/releases/download/{{ version }}/vcxsrv-64.{{ version }}.installer.exe'
    {% else %}
    installer: 'https://github.com/marchaesen/vcxsrv/releases/download/{{ version.split(".")[:-1] | join(".") }}/vcxsrv-64.{{ version }}.installer.exe'
    {% endif %} 
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\VcXsrv\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
