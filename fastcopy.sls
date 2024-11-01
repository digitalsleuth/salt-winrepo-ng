# FastCopy no longer stores versions prior to 5.0.0
{% set versions = ['5.0.0'] %}

fastcopy:
{% for version in versions %}
  '{{ version }}':
    full_name: 'FastCopy'
    installer: https://github.com/FastCopyLab/FastCopyDist2/raw/main/FastCopy{{ version }}_installer.exe
    uninstaller: https://github.com/FastCopyLab/FastCopyDist2/raw/main/FastCopy{{ version }}_installer.exe
    install_flags: /SILENT /DIR="C:\Program Files\FastCopy" /NODESK
    uninstall_flags: '/r /SILENT'
    locale: en_US
    reboot: False
{% endfor %}
