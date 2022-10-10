{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
veracrypt:
  '1.25.9':
    full_name: 'VeraCrypt 1.25.9'
    installer: 'https://launchpad.net/veracrypt/trunk/1.25.9/+download/VeraCrypt_Setup_x64_1.25.9.msi'
    install_flags: '/qn /norestart ACCEPTLICENSE=YES'
    uninstaller: 'msiexec'
    uninstall_flags: '/x {E254AA9E-A48A-4A92-AF75-E6FF77C1A915}'
    msiexec: True
    locale: en_US
    reboot: False
