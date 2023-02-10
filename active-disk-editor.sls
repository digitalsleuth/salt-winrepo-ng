{% set PROGRAM_FILES = 'C:\Program Files' %}
{% set versions = ['23','7'] %}

active-disk-editor:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Active@ Disk Editor {{ version }}'
    installer: 'https://www.disk-editor.org/download/diskeditor-freeware.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\LSoft Technologies\Active@ Disk Editor\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
