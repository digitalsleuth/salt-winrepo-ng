{% set EXE_VERSIONS = [('3.10.4', '3.10.4150.0'),
                       ('3.10.3', '3.10.3150.0'),
                       ('3.10.2', '3.10.2150.0'),
                       ('3.10.1', '3.10.1150.0'),
                       ('3.10.0', '3.10.150.0'),
                       ('3.9.9', '3.9.9150.0'),
                       ('3.9.8', '3.9.8150.0'),
                       ('3.9.7', '3.9.7150.0'),
                       ('3.9.6', '3.9.6150.0'),
                       ('3.9.5', '3.9.5150.0'),
                       ('3.9.4', '3.9.4150.0'),
                       ('3.9.3', '3.9.3150.0'),
                       ('3.9.2', '3.9.2150.0'),
                       ('3.9.1', '3.9.1150.0'),
                       ('3.9.0', '3.9.150.0'),
                       ('3.8.9', '3.8.9150.0'),
                       ('3.8.8', '3.8.8150.0'),
                       ('3.8.7', '3.8.7150.0'),
                       ('3.8.6', '3.8.6150.0'),
                       ('3.8.5', '3.8.5150.0'),
                       ('3.8.4', '3.8.4150.0'),
                       ('3.8.3', '3.8.3150.0'),
                       ('3.8.2', '3.8.2150.0'),
                       ('3.8.1', '3.8.1150.0'),
                       ('3.8.0', '3.8.150.0'),
                       ('3.7.4', '3.7.4150.0'),
                       ('3.7.3', '3.7.3150.0'),
                       ('3.7.2', '3.7.2150.0'),
                       ('3.7.1', '3.7.1150.0'),
                       ('3.7.0', '3.7.150.0'),
                       ('3.6.8', '3.6.8150.0'),
                       ('3.6.6', '3.6.6150.0'),
                       ('3.5.4', '3.5.4150.0'),
                       ('3.5.2', '3.5.2150.0'),
                       ('3.5.1', '3.5.1150.0')] %}
{% set MSI_VERSIONS = [('3.4.4', '3.4.16789'),
                       ('3.4.3', '3.4.3150'),
                       ('3.4.2', '3.4.2150'),
                       ('3.4.1', '3.4.1150'),
                       ('3.3.3', '3.3.3150')] %}
python3_x86:
  {% for VER, RAW_VER in EXE_VERSIONS %}
  '{{ RAW_VER }}':
    full_name: 'Python {{ VER }} (32-bit)'
    installer: 'https://www.python.org/ftp/python/{{ VER }}/python-{{ VER }}.exe'
    install_flags: '/quiet InstallAllUsers=1 InstallLauncherAllUsers=1 Include_pip=1 AssociateFiles=1'
    uninstaller: 'https://www.python.org/ftp/python/{{ VER }}/python-{{ VER }}.exe'
    uninstall_flags: '/quiet /uninstall'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
  {% for VER, RAW_VER in MSI_VERSIONS %}
  '{{ RAW_VER }}':
    full_name: 'Python {{ VER }} (32-bit)'
    installer: 'https://www.python.org/ftp/python/{{ VER }}/python-{{ VER }}.msi'
    install_flags: '/qn ALLUSERS=1 /norestart'
    uninstaller: 'https://www.python.org/ftp/python/{{ VER }}/python-{{ VER }}.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
