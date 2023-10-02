{% set versions = [('1.3.0', '38bb9077def7aca1ecb5c0fab00e96dc0c41543b6e6d6541295687f2bcaac1a0')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

zui:
  {% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Zui {{ version }}'
    installer: 'https://github.com/brimdata/zui/releases/download/v{{ version }}/Zui-Setup-{{ version }}.exe'
    install_flags: '/S /allusers /no-desktop-shortcut /D="{{ PROGRAM_FILES }}\Zui\"'
    uninstaller: '{{ PROGRAM_FILES }}\Zui\Uninstall Zui.exe'
    uninstall_flags: '/S /allusers'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
