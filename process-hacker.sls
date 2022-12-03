# Has been taken over by https://github.com/winsiderss/systeminformer, but current version is still the one below
{% set versions = [('2.39.0.124', '2.39 (r124)', '28042dd4a92a0033b8f1d419b9e989c5b8e32d1d2d881f5c8251d58ce35b9063' )] %}

process-hacker:
{% for version, rel_version, hash in versions %}
  '{{ version }}':
    full_name: 'Process Hacker {{ rel_version }}'
    installer: https://github.com/processhacker/processhacker/releases/download/v2.39/processhacker-2.39-setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\Process Hacker 2\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False    
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
    
