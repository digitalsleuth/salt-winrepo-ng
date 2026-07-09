{% set versions = [('11.0.31','11','11','{3A98EA53-9623-4E69-86A1-CCE092B746BD}')] %}

openjre-adoptium:
  {% for version, major, subversion, guid in versions %}
  '{{ version }}.{{ subversion }}':
    full_name: 'Eclipse Temurin JRE with Hotspot {{ version }}+{{ subversion }} (x64)'
    installer: https://github.com/adoptium/temurin{{ major }}-binaries/releases/download/jdk-{{ version }}%2B{{ subversion }}/OpenJDK{{ major }}U-jre_x64_windows_hotspot_{{ version }}_{{ subversion }}.msi
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    locale: en_US
    reboot: False
  {% endfor %}
