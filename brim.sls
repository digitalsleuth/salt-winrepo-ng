{% set versions = [('0.31.0', '49E8B1AD9CA1ACEE832CCB01816277A21271CB9F50B8EBD477C6200A405F5C9B')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

brim:
  {% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Brim {{ version }}'
    installer: 'https://github.com/brimdata/brim/releases/download/v{{ version }}/Brim-Setup-{{ version }}.exe'
    install_flags: '/S /allusers /no-desktop-shortcut /D="{{ PROGRAM_FILES }}\Brim\"'
    uninstaller: '{{ PROGRAM_FILES }}\Brim\Uninstall Brim.exe'
    uninstall_flags: '/S /allusers'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
