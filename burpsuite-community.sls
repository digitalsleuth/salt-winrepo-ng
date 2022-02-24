{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = [('2022.1.1', 'dae860e788f493f3503ee86b09d8e9d19b98135e683bb00c6e548629f8ec3e51')] %}

burpsuite-community:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Burp Suite Community Edition {{ version }}'
    installer: 'https://portswigger-cdn.net/burp/releases/download?product=community&version={{ version }}&type=WindowsX64'
    install_flags: '-q'
    uninstaller: '{{ PROGRAM_FILES }}\BurpSuiteCommunity\uninstall.exe'
    uninstall_flags: '-q'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
