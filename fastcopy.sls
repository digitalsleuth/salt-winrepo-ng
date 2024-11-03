# FastCopy no longer stores versions prior to 5.0.0
{% set versions = ['5.8.0',
                   '5.7.15','5.7.14','5.7.12','5.7.11','5.7.10','5.7.9','5.7.8','5.7.7','5.7.5','5.7.4','5.7.3','5.7.2','5.7.1',
                   '5.6.0',
                   '5.5.0',
                   '5.4.3','5.4.2','5.4.1','5.4.0',
                   '5.3.1','5.3.0',
                   '5.2.6','5.2.5','5.2.4','5.2.3','5.2.2','5.2.1','5.2.0',
                   '5.1.1','5.1.0',
                   '5.0.5','5.0.4','5.0.3','5.0.2','5.0.1','5.0.0',
] %}

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
