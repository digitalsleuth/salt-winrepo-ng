{% set versions = [('5.4.2', '804adf5c4921ff3f21216d022e318384532d5ba2e20f3d1d8294b38359ae6b58'),
                   ('5.3.0', 'E1D61DEAFAFD247FAB2A625BDFED1E09E41C859B39FFB824F2E20603478C9D66'),
                   ('5.2.0', '8897B7CC510167970C782BA9403DBBB565A3077867650A2E1D8767E2D3E63E33')] %}

cerbero-suite:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Cerbero Suite {{ version }}'
    installer: https://store.cerbero.io/static/downloads/csuite/cerbero_suite_{{ version }}_x64_setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files\Cerbero Suite\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
