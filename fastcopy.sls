{% set versions = [('4.1.7', '683E1EB788EF37AF31E521F432B457DF737EDD09D507298C581F24DD6D9ED34D')] %}

fastcopy:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'FastCopy'
    installer: https://github.com/FastCopyLab/FastCopyDist/raw/main/FastCopy{{ version }}_installer.exe
    uninstaller: https://github.com/FastCopyLab/FastCopyDist/raw/main/FastCopy{{ version }}_installer.exe
    install_flags: /SILENT /DIR="C:\Program Files\FastCopy" /NODESK
    uninstall_flags: '/r /SILENT'
    source_hash: sha256={{ hash }}
    locale: en_US
    reboot: False
{% endfor %}

