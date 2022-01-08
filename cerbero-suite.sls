{% set versions = [('5.2.0', '8897B7CC510167970C782BA9403DBBB565A3077867650A2E1D8767E2D3E63E33')] %}

cerbero-suite:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Cerbero Suite {{ version }}'
    installer: https://store.cerbero.io/static/downloads/csuite/cerbero_suite_5.2.0_x64_setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\Cerbero Suite\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
