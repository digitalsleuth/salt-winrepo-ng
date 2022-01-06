# NOTE: There is no silent installer for this package, it is only offered by
# NPcap OEM https://npcap.org/oem/
{% set version = '1.60' %}
{% set hash = '87d3624772b8272767a3a4ffcceecc3052489cd09e494a6c352dce5e5efa4070' %}

npcap:
  '{{ version }}':
    full_name: Npcap
    installer: 'https://nmap.org/npcap/dist/npcap-1.60.exe'
    install_flags:
    uninstaller: 'C:\Program Files\Npcap\Uninstall.exe'
    uninstall_flags: '/S'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
