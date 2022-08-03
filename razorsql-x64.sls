{% set PROGRAM_FILES = 'C:\Program Files' %}
{% set versions = [("10.0.6", "10_0_6")] %}

razorsql-x64:
{% for dot_ver, under_ver in versions %}
  '{{ dot_ver }}':
    full_name: 'RazorSQL {{ dot_ver }}'
    installer: 'https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/{{ under_ver }}/razorsql{{ under_ver }}_setup_x64.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\RazorSQL\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}

