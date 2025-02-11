#HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
#Search for Version as DisplayVersion
# current = 4.0.346.1211

{% set versions = [('4.0.346.1211','e04910e25306','{1E651F8E-5C52-44E8-98E3-9BBBDF942F96}'),
                   ('4.0.287.1239','9a78c44a0e4a','{255D3602-B7E3-4110-97CC-BB86DDFA4E61}'),
                   ('4.0.280.1246','494c6e94f1dd','{CD252A8E-ED3D-4B30-9FCB-9C22C303FC75}'),
                   ('4.0.251.1164','8f185065a223','{BC46C515-A0AA-49DE-A386-81A2800F3C33}'),
                   ('4.0.238.274','9f46b98f55cf','{638F909F-F76E-4CF7-A419-A2A67D6DA2FC}'),
                   ('4.0.231.1071','70472ec6e9d6','{C1B2DF40-A756-47A2-9305-73F9FDA7F4C9}'),
                   ('4.0.200.1093','309b4e16a2e5','{736EA115-11B9-487C-BD17-8AFB1FC150ED}'),
                   ('4.0.167.1390','c3b902e471a2','{2323436C-B7B0-45FD-992E-6BB36A855807}'),
                   ('4.0.110.45','6c7deb41f209','{22845D0B-FC84-43D8-B4E8-A77478F7F226}'),
                   ('3.89.0.16','06d469d6d34d','{F254C136-13A0-4B67-A7CC-9EB469260A11}'),
                   ('3.88.0.15','16be92bc7305','{B251D7AA-86B6-451E-8BAD-691AFAD171E5}'),
                   ('3.87.0.6','2c77980b1008','{98E95AD0-540F-46D9-B671-DA4BAC52EB82}')
                  ] %}

forensic-email-collector:
  {% for version, folder_hash, uninstall_string in versions %}
  {% if version == '4.0.167.1390' %}
  '4.0.167.1391':
  {% elif version == '4.0.200.1093' %}
  '4.0.200.1094':
  {% elif version == '4.0.231.1071' %}
  '4.0.231.1072':
  {% elif version == '4.0.251.1164' %}
  '4.0.251.1165':
  {% elif version == '4.0.280.1246' %}
  '4.0.280.1247':
  {% else %}
  '{{ version }}':
  {% endif %}
    full_name: 'Forensic Email Collector'
    installer: https://storage.googleapis.com/fec-downloads/FEC/{{ version }}_{{ folder_hash }}/FECSetup_v{{ version }}.msi
    install_flags: '/qn ACCEPTEULA=1 /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ uninstall_string }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
