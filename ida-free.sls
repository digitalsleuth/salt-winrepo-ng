{% set versions = ['8.3','8.2','8.1'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

ida-free:
{% for version in versions %}
  '{{ version }}':
    full_name: 'IDA Freeware {{ version }}'
    installer: 'https://out7.hex-rays.com/files/idafree{{ version|replace(".","") }}_windows.exe'
    install_flags: '--mode unattended'
    uninstaller: '{{ PROGRAM_FILES }}\IDA Freeware {{ version }}\uninstall.exe'
    uninstall_flags: '--mode unattended'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
