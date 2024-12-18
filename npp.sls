{% set PROGRAM_FILES = "%ProgramFiles%" %}
npp:
  {% for version in ['8.7.4','8.7.3','8.7.2','8.7.1','8.7',
                     '8.6.9','8.6.8','8.6.7','8.6.5','8.6.4','8.6.3','8.6.2','8.6',
                     '8.5.8','8.5.7','8.5.6','8.5.4','8.5.3','8.5.2','8.5.1','8.5',
                     '8.4.9','8.4.8','8.4.7','8.4.6','8.4.5','8.4.4','8.4.2','8.4.1','8.4',
                     '8.3.3','8.3.1',
                     '8.2',
                     '8.1.9.3',
                     '7.9.5','7.9.4','7.9.3','7.9.2','7.9.1','7.9'] %}
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
