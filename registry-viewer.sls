{% set version = '2.0.0' %}
registry-viewer:
  '2.0.0.7':
    full_name: 'AccessData Registry Viewer'
    installer: 'https://d1kpmuwb7gvu1i.cloudfront.net/AccessData_Registry_Viewer_{{ version }}.exe'
    uninstaller: 'https://d1kpmuwb7gvu1i.cloudfront.net/AccessData_Registry_Viewer_{{ version }}.exe'
    install_flags: '/s /v/qn'
    uninstall_flags: '/x /s /v/qn'
    arch: x64
    msiexec: False
    locale: en_US
    reboot: False
