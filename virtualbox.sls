# Version 5.1 and older are no longer supported by Oracle
# https://www.virtualbox.org/wiki/Download_Old_Builds

{% set source_path = 'https://download.virtualbox.org/virtualbox/' %}

virtualbox:
{% for version, build_number in [('7.0.6', '155176')] %}
  '{{ version }}':
    full_name: 'Oracle VM VirtualBox {{ version }}'
    installer: '{{ source_path}}{{ version }}/VirtualBox-{{ version }}-{{ build_number }}-Win.exe'
    install_flags: '--silent'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {5C50439B-4A95-4615-A77B-6D250D734303} /norestart'
    msiexec: false
    locale: en_US
    reboot: False
{% endfor %}

{% for version, build_number in [('7.0.4', '154605')] %}
  '{{ version }}':
    full_name: 'Oracle VM VirtualBox {{ version }}'
    installer: '{{ source_path}}{{ version }}/VirtualBox-{{ version }}-{{ build_number }}-Win.exe'
    install_flags: '--silent'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {AC025744-F936-446B-A128-AC42F974FCC8} /norestart'
    msiexec: false
    locale: en_US
    reboot: False
{% endfor %}

{% for version, build_number in [('6.0.4', '128413')] %}
  '{{ version }}':
    full_name: 'Oracle VM VirtualBox {{ version }}'
    installer: '{{ source_path }}{{ version }}/VirtualBox-{{ version }}-{{ build_number }}-Win.exe'
    install_flags: '--silent'
    uninstaller: 'msiexec.exe'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstall_flags: '/qn /x {79366295-CD6A-4467-9901-4A7DFCF90F40} /norestart'
    {% else %}
    uninstall_flags: '/qn /x {9694DB45-EBEE-403A-8EA7-72A54DD4F307} /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}

{% for version, build_number in [('5.2.26', '128414')] %}
  '{{ version }}':
    full_name: 'Oracle VM VirtualBox {{ version }}'
    installer: '{{ source_path }}{{ version }}/VirtualBox-{{ version }}-{{ build_number }}-Win.exe'
    install_flags: '--silent'
    uninstaller: 'msiexec.exe'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstall_flags: '/qn /x {28CBFD88-CBF3-482C-978E-DB437CCEDFC8} /norestart'
    {% else %}
    uninstall_flags: '/qn /x {9AC23935-389E-440B-856A-748A8893D2E4} /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
