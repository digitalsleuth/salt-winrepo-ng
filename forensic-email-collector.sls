{% set versions = [('4.0.110.45','6c7deb41f209','{22845D0B-FC84-43D8-B4E8-A77478F7F226}'),
                   ('3.89.0.16','06d469d6d34d','{F254C136-13A0-4B67-A7CC-9EB469260A11}'),
                   ('3.88.0.15','16be92bc7305','{B251D7AA-86B6-451E-8BAD-691AFAD171E5}'),
                   ('3.87.0.6','2c77980b1008','{98E95AD0-540F-46D9-B671-DA4BAC52EB82}')
                  ] %}

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
