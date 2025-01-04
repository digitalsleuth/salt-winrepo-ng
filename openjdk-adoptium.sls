{% set versions = [('21.0.5','11','{0D9BC332-ECE1-4389-98E8-4C32F04B44D9}')] %}

openjdk-adoptium:
  {% for version, subversion, guid in versions %}
  '{{ version }}.{{ subversion }}':
    full_name: 'Eclipse Temurin JDK with Hotspot {{ version }}+{{ subversion }} (x64)'
    installer: https://github.com/adoptium/temurin21-binaries/releases/download/jdk-{{ version }}%2B{{ subversion }}/OpenJDK21U-jdk_x64_windows_hotspot_{{ version }}_{{ subversion }}.msi
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    locale: en_US
    reboot: False
  {% endfor %}
