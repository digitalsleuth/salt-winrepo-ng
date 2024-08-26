{% set versions = ['2.8.8'] %}

{% for version in versions %}
joplin:
  '{{ version }}':
    full_name: 'Joplin {{ version }}'
    installer: https://github.com/laurent22/joplin/releases/download/v{{ version }}/Joplin-Setup-{{ version }}.exe
    install_flags: '/allusers /S --no-desktop-shortcut'
    uninstaller: 'C:\Program Files\Joplin\Uninstall Joplin.exe'
    uninstall_flags: '/S'
    msiexec: False
    reboot: False
    locale: en_US

{% endfor %}
