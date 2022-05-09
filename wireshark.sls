# Wireshark is a program used for packet sniffing and analysis.
# See https://www.wireshark.org/
# IMPORTANT: Wireshark requires the NPCAP driver for 3.x to be installed. 
# This driver is NOT be installed automatically except for the paid OEM/enterprise version. 
# This installation routine only installs Wireshark.

{% set versions = [
  '3.6.5', '3.6.2', '3.6.1', '3.6.0', 
  '3.2.2', '3.2.1', '3.2.0',
  '3.1.1', '3.1.0',
  '3.0.9', '3.0.8', '3.0.7', '3.0.6', '3.0.5', '3.0.4', '3.0.3', '3.0.2', '3.0.1', '3.0.0'
] %}

wireshark:
  {% for version in versions %}
  '{{ version }}.0':
    full_name: 'Wireshark {{ version }} 64-bit'
    installer:   'https://1.na.dl.wireshark.org/win64/all-versions/Wireshark-win64-{{ version }}.exe'
    uninstaller: 'https://1.na.dl.wireshark.org/win64/all-versions/Wireshark-win64-{{ version }}.exe'
    install_flags:   '/S /EXTRACOMPONENTS=sshdump,udpdump,ciscodump,androiddump,randpktdump'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
