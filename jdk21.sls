{% set versions = [('21.0.1','690bf651c3cd59a17975c804c5f31a9f177d4b70a9de5c6aeed0598f5dc91bff','{75B0E1AE-DC20-5AC0-A358-61B0256DADBE}')] %}

jdk21:
{% for version, hash, guid in versions %}
  '{{ version }}.0':
    full_name: 'Java(TM) SE Development Kit {{ version }} (64-bit)'
    installer: https://download.oracle.com/java/21/archive/jdk-{{ version }}_windows-x64_bin.exe
    install_flags: '/s'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
