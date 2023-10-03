{% set versions = [('v3.0.4','9966e3ed6693dfc42904a2aaa1b294a2cd1edd059ef795729a76956cc21cd239'),
                   ('v3.0.2','1B5A0475B0EC3CB211E3F710FA8C0A2CD5CE971475104DE91B2AEB7F865B96E6')] %}

# InnoSetup
openhashtab:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'OpenHashTab version {{ version }}'
    installer: https://github.com/namazso/OpenHashTab/releases/download/{{ version }}/OpenHashTab_setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\OpenHashTab\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
