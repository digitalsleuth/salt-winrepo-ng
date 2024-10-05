{% set versions = [('2.1.1.0','2024.05.14','1395'),('2.1.0.7', '2022.07.19','1337')] %}

# InnoSetup
wiebetech-writeblocking-validation-utility:
{% for version, date, sub_folder in versions %}
  '{{ version }}':
    full_name: 'WiebeTech WriteBlocking Validation Utility {{ version }}'
    installer: https://wiebetech.com/downloads/{{ sub_folder }}/WbValUtil-{{ version }}-({{ date }})-x64.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\CDSG\WriteBlocking Validation Utility\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
