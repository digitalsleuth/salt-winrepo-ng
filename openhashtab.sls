{% set versions = ['v3.0.4','v3.0.2'] %}

# InnoSetup
openhashtab:
{% for version in versions %}
  '{{ version }}':
    full_name: 'OpenHashTab version {{ version }}'
    installer: https://github.com/namazso/OpenHashTab/releases/download/{{ version }}/OpenHashTab_setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\OpenHashTab\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
