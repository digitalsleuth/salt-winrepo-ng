{% set PROGRAM_FILES = "%ProgramFiles%" %}
npp:
  {% for version in ['8.4.2','8.4.1','8.4','8.3.3','8.3.1','8.2','8.1.9.3','7.9.5','7.9.4','7.9.3','7.9.2','7.9.1','7.9'] %}
  '{{ version }}':
    full_name: 'Notepad++ (64-bit x64)'
    installer: 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v{{ version }}/npp.{{ version }}.Installer.x64.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Notepad++\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
