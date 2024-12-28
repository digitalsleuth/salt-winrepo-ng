# Unfortunately, uninstall is not silent at this time

{% set versions = ['5.4.4'] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

karens-directory-printer:
  {% for version in versions %}
  '{{ version }}':
    full_name: "Karen's Directory Printer {{ version }}.0"
    installer: https://www.karenware.com/d/Karens-Directory-Printer-v{{ version }}-Setup.exe
    install_flags: /S
    uninstaller: "{{ PROGRAM_FILES }}\\Karen's Power Tools\\Directory Printer\\uninstall.exe"
    uninstall_flags: /S
    locale: en_US
    reboot: False
    msiexec: False
  {% endfor %}

