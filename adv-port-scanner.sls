# it can be manually downloaded from:
# http://www.advanced-port-scanner.com
# a product of: www.radmin.com

{% set versions = [('2.5','2.5.3869','{D6943E39-4F7F-4DD3-83EF-B6F22151A259}'),('2.5','2.5.3680','{76773275-7196-4B20-B3C6-27EDA624C053}')] %}

adv-port-scanner:
  {% for pkgname, version, guid in versions %}
  '{{ version }}':
    full_name: 'Advanced Port Scanner {{ pkgname }}'
    installer: 'https://download.advanced-ip-scanner.com/download/files/Advanced_Port_Scanner_{{ version }}.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- & taskkill /F /T /IM advanced_port_scanner.exe & exit 0'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /noreboot /x {{ guid }}'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
