{% set versions = ['4.6.3.0','4.6.2.0','4.6.1.0','4.6.0.0'] %}

httplogbrowser:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'HttpLogBrowser'
    installer: 'https://www.finalanalytics.com/downloads/HttpLogBrowser-Setup.exe'
    uninstaller: 'msiexec.exe'
    install_flags: '/qn /norestart'
    uninstall_flags: '/x {CAE04534-9CD6-452A-9B37-D1417BFEDBB5} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
