# FastCopy no longer stores versions prior to 5.0.0
{% set versions = [('5.0.0', '1057abaf6d3aa736c141787699f92fef68e80621836fcf28cdbc85efd80e7137')] %}

fastcopy:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'FastCopy'
    installer: https://github.com/FastCopyLab/FastCopyDist2/raw/main/FastCopy{{ version }}_installer.exe
    uninstaller: https://github.com/FastCopyLab/FastCopyDist2/raw/main/FastCopy{{ version }}_installer.exe
    install_flags: /SILENT /DIR="C:\Program Files\FastCopy" /NODESK
    uninstall_flags: '/r /SILENT'
    source_hash: sha256={{ hash }}
    locale: en_US
    reboot: False
{% endfor %}
