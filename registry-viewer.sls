{% set version = '2.0.0' %}
registry-viewer:
  '2.0.0.7':
    full_name: 'AccessData Registry Viewer'
    installer: 'https://ad-exe.s3.amazonaws.com/AccessData_Registry_Viewer_{{ version }}.exe'
    uninstaller: 'https://ad-exe.s3.amazonaws.com/AccessData_Registry_Viewer_{{ version }}.exe'
    install_flags: '/s /v/qn'
    uninstall_flags: '/x /s /v/qn'
    arch: x64
    source_hash: sha256=df911e882ebc4c00eff08dcc944e617d827e7237593e2620e1fc0792169777b4
    msiexec: False
    locale: en_US
    reboot: False
