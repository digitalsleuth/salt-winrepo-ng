{% set versions = [('2026.1.0.4992', 2026 v1'),('2025.4.0.4899','2025 v4'),('2025.2.1.4623','2025 v2'),('2025.1.0.4433','2025 v1'),('2024.4.0.4328','2024 v4'),('2024.2.0.4023','2024 v2'),('2024.1.0.3859','2024 v1'),
                   ('2023.4.0.3789','2023 v4'),('2023.3.1.3695','2023 v3'),('2023.3.0.3644','2023 v3'),('2023.2.1.3577','2023 v2'),('2023.2.0.3511','2023 v2'),('2023.1.1.3432','2023 v1'),('2023.1.0.3371','2023 v1'),
                   ('2022.3.1.3215','2022 v3'),('2022.3.0.3158','2022 v2')
                  ] %}

passware-encryption-analyzer:
  {% for version, display_name in versions %}
  '{{ version }}':
    full_name: 'Passware Encryption Analyzer {{ display_name }} (64-bit)'
    installer: 'https://demo.passware.com/files/PasswareEncryptionAnalyzer_64bit_Setup.msi'
    install_flags: 'DESKTOP_SHORTCUT="" /qn /norestart'
    uninstaller: 'https://demo.passware.com/files/PasswareEncryptionAnalyzer_64bit_Setup.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}
