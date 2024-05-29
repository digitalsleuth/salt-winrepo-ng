{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['2024.4.4',
                   '2023.10.1.2',
                   '2022.11.2', '2022.3', '2022.2.4', '2022.2.3', '2022.2.2', '2022.2.1', '2022.2', '2022.1.1'
] %}

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
