{% set versions = ['4.31'] %}

# InnoSetup
wiztree:
{% for version in versions %}
  '{{ version }}':
    full_name: 'WizTree v{{ version }}'
    installer: https://diskanalyzer.com/files/wiztree_{{ version | replace('.','_') }}_setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\WizTree\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
