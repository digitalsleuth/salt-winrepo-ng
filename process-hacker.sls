# Has been taken over by https://github.com/winsiderss/systeminformer, but current version is still the one below
{% set versions = [('2.39.0.124', '2.39 (r124)')] %}

process-hacker:
{% for version, rel_version in versions %}
  '{{ version }}':
    full_name: 'Process Hacker {{ rel_version }}'
    installer: https://github.com/winsiderss/systeminformer/releases/download/v2.39/processhacker-2.39-setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\Process Hacker 2\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False    
    locale: en_US
    reboot: False
{% endfor %}
    
