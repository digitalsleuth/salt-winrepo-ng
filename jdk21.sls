{% set versions = [('21.0.7','{E4AD9691-F2C7-5AC4-8795-3330B2AB4CC3}'),
                   ('21.0.1','{75B0E1AE-DC20-5AC0-A358-61B0256DADBE}'),
] %}

jdk21:
{% for version, guid in versions %}
  '{{ version }}.0':
    full_name: 'Java(TM) SE Development Kit {{ version }} (64-bit)'
    installer: https://download.oracle.com/java/21/archive/jdk-{{ version }}_windows-x64_bin.exe
    install_flags: '/s'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
