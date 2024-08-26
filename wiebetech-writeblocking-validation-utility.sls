{% set versions = [('2.1.0.7', '2022.07.19', '64b019581c9f7c934fc86bd507224c411028e3fe1a0349b3536b04f0785d06e1')] %}

# InnoSetup
wiebetech-writeblocking-validation-utility:
{% for version, date, hash in versions %}
  '{{ version }}':
    full_name: 'WiebeTech WriteBlocking Validation Utility {{ version }}'
    installer: https://wiebetech.com/downloads/1337/WbValUtil-{{ version }}-({{ date }})-x64.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\CDSG\WriteBlocking Validation Utility\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
