{% set versions = [('3.87.0.6','2c77980b1008','{98E95AD0-540F-46D9-B671-DA4BAC52EB82}')] %}

forensic-email-collector:
  {% for version, folder_hash, uninstall_string in versions %}
  '{{ version }}':
    full_name: 'Forensic Email Collector'
    installer: https://storage.googleapis.com/fec-downloads/FEC/{{ version }}_{{ folder_hash }}/FECSetup_v{{ version }}.msi
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ uninstall_string }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
