{% set versions = ['1.18.0','1.3.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

zui:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Zui {{ version }}'
    installer: 'https://github.com/brimdata/zui/releases/download/v{{ version }}/Zui-Setup-{{ version }}.exe'
    install_flags: '/S /allusers /no-desktop-shortcut /D="{{ PROGRAM_FILES }}\Zui\"'
    uninstaller: '{{ PROGRAM_FILES }}\Zui\Uninstall Zui.exe'
    uninstall_flags: '/S /allusers'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
