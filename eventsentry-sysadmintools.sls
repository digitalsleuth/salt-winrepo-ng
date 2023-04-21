{% set versions = ['2.8.5.1'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

eventsentry-sysadmintools:
{% for version in versions %}
  '{{ version }}':
    full_name: 'EventSentry SysAdmin Tools'
    installer: 'https://www.eventsentry.com/downloads/sysadmintools/essysadmintools_v{{ version | replace(".","_") }}_windows_setup.exe'
    install_flags: '--mode unattended'
    uninstaller: '{{ PROGRAM_FILES }}\essysadmintools\uninstall.exe'
    uninstall_flags: '--mode unattended'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
