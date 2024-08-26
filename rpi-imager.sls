{% set versions = ['1.7.4.1','1.7.4'] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

rpi-imager:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Raspberry Pi Imager'
    installer: 'https://github.com/raspberrypi/rpi-imager/releases/download/v{{ version }}/imager-{{ version }}.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Raspberry Pi Imager\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
