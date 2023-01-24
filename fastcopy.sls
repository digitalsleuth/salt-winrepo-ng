{% set versions = [('4.2.1', 'd2ab5d9b42d151ce4f6a28566bb6ca0851fb93027fe7fdad4b6ca6176a64a490'),
                   ('4.2.0', '7EEE0426EFB0BBABF5B0F1D49FAB5C3E4C3A80C1917EE19839C96E16D0396452'),
                   ('4.1.8', '8C58BBB7BA3D75B5FF9DF32A741F75FAF584A255AC4A1A2073EA9914AF18D2FA'),
                   ('4.1.7', '683E1EB788EF37AF31E521F432B457DF737EDD09D507298C581F24DD6D9ED34D')
                  ] %}

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

