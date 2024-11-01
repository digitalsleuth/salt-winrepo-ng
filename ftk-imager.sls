{% set version = '4.7.0.19' %}
ftk-imager:
  '{{ version }}':
    full_name: 'AccessData FTK Imager'
    installer: 'https://ad-exe.s3.amazonaws.com/Imgr/AccessData_FTK_Imager_{{ version }}.exe'
    uninstaller: 'https://ad-exe.s3.amazonaws.com/Imgr/AccessData_FTK_Imager_{{ version }}.exe'
    install_flags: '/s /v/qn'
    uninstall_flags: '/x /s /v/qn'
    arch: x64
    msiexec: False
    locale: en_US
    reboot: False
