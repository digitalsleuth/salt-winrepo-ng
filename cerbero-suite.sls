{% set versions = [('5.7.0', '80F2D49747320D90E9E2AD71F6BBFEC34EE9A1959195F0F82C914AC765B5EB2F')] %}

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
