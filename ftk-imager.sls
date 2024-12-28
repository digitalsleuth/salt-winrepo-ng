{% set versions = ['4.7.3.81','4.7.0.19'] %}

ftk-imager:
  {% for version in versions %}
  '{{ version }}':
    {% if version == '4.7.3.81' %}
    full_name: 'Exterro FTK Imager'
    installer: 'https://d1kpmuwb7gvu1i.cloudfront.net/Imgr/{{ version }}%20Release/Exterro_FTK_Imager_%28x64%29-{{ version }}.exe'
    uninstaller: 'https://d1kpmuwb7gvu1i.cloudfront.net/Imgr/{{ version }}%20Release/Exterro_FTK_Imager_%28x64%29-{{ version }}.exe'
    {% else %}
    full_name: 'AccessData FTK Imager'
    installer: 'https://ad-exe.s3.amazonaws.com/Imgr/AccessData_FTK_Imager_{{ version }}.exe'
    uninstaller: 'https://ad-exe.s3.amazonaws.com/Imgr/AccessData_FTK_Imager_{{ version }}.exe'
    {% endif %}
    install_flags: '/s /v/qn'
    uninstall_flags: '/x /s /v/qn'
    arch: x64
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
