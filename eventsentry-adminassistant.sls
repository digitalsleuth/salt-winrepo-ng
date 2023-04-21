{% set versions = ['2.7.1.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

eventsentry-adminassistant:
{% for version in versions %}
  '{{ version }}':
    full_name: 'EventSentry Admin Assistant'
    installer: 'https://www.eventsentry.com/downloads/adminassistant/eventsentryadminassistant_v{{ version | replace(".","_") }}_windows_x64_setup.exe'
    install_flags: '--mode unattended'
    uninstaller: '{{ PROGRAM_FILES }}\EventSentryAdminAssistant\uninstall.exe'
    uninstall_flags: '--mode unattended'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
