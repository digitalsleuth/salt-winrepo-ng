{% set versions = [('17.0.9','{7CD8D9DB-19F2-57B0-8F04-99DA5B3C62D4}')] %}

jdk17:
{% for version, guid in versions %}
  '{{ version }}.0':
    full_name: 'Java(TM) SE Development Kit {{ version }} (64-bit)'
    installer: https://download.oracle.com/java/17/archive/jdk-{{ version }}_windows-x64_bin.exe
    install_flags: '/s'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
