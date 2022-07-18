{% set versions = [
        ('4.19.3', 'c61beb6ad0ccb6182c9af376fd74b12387f6bfac515bada249f8c9ca96f9cb72'), 
        ('4.19.2', '854BB89CFC12E3CFE844A8BFB40E6A876FBF55732088219BACE4578D7FD0C0FE')
] %}

autopsy:
  {% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Autopsy'
    installer: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-{{ version }}/autopsy-{{ version }}-64bit.msi'
    uninstaller: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-{{ version }}/autopsy-{{ version }}-64bit.msi'
    install_flags: '/quiet /norestart'
    uninstall_flags: '/quiet /norestart'
    arch: x64
    msiexec: True
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
