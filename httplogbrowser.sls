{% set versions = [('4.6.2.0', 'D5AC49BB17C0FF594FC96F5FD6729C93B5DE6AF694F6837DC5D7980EFC81BCD4'),
                   ('4.6.1.0', 'b0be7f490cd6b58057b439648c61f9cc4da93e47ae1cca65be3babd4b124d1eb'),
                   ('4.6.0.0', '805a20bf88d2d8a7b25d52b48ab758e2465282cb4f0377f2dfaf73a511d197a9')
                  ] %}

httplogbrowser:
  {% for version, hash in versions %}
  '{{ version }}':
    full_name: 'HttpLogBrowser'
    installer: 'https://www.finalanalytics.com/downloads/HttpLogBrowser-Setup.exe'
    uninstaller: 'msiexec.exe'
    install_flags: '/qn /norestart'
    uninstall_flags: '/x {CAE04534-9CD6-452A-9B37-D1417BFEDBB5} /qn /norestart'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
