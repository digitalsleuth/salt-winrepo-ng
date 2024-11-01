# NOTE: There is no silent installer for this package, it is only offered by
# NPcap OEM https://npcap.org/oem/
{% set version = '1.60' %}

npcap:
  '{{ version }}':
    full_name: Npcap
    installer: 'https://nmap.org/npcap/dist/npcap-1.60.exe'
    install_flags:
    uninstaller: 'C:\Program Files\Npcap\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
