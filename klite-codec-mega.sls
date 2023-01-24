{% set PROGRAM_FILES = 'C:\Program Files (x86)' %}
{% set versions = [('17.1.0', '374f0696cdaf6504d32e4a08aec71558dde82aef426b9eb1fc23cff3639f3493')] %}

klite-codec-mega:
{% for version, hash in versions %}
  {% set undotted_ver = version | replace(".","") %}
  '{{ version }}':
    full_name: 'K-Lite Mega Codec Pack {{ version }}'
    installer: 'https://files3.codecguide.com/K-Lite_Codec_Pack_{{ undotted_ver }}_Mega.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\K-Lite Codec Pack\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
