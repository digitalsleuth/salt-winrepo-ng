{% set versions = [('6.5.0', '8820E66610AE7278921C52AD22349D0106D98AB0D0F8D6E7CC10C18E7A36B8C9'),
                   ('6.3.1', '81B108CFB111F89FEFB2695F800B246DD41EABE33A929AF7D425C0220ECBD6FC'),
                   ('6.2.1', 'FDB6A463DD71689E107358AC2D259FF5593EB79EF53E89B437059856AA163322'),
                   ('6.1.1', '9276133B8CD25EC1CFD9F4C38A2DF7436CDB9D978064D04D57BBE4CD5EFD3629'),
                   ('6.0.0', '35D49E5840A5EBB7FDAA42FC85D8E311550D396E19A7BE9957C0038DCC609D34'),
                   ('5.7.2', 'C864E1C79349800B1F02D698901F0535B56B54CCF042C3EC16CD62461734C984'),
                   ('5.7.0', '80F2D49747320D90E9E2AD71F6BBFEC34EE9A1959195F0F82C914AC765B5EB2F')] %}

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
