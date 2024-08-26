# it can be manually downloaded from:
# http://www.advanced-ip-scanner.com
# a product of: www.radmin.com

{% set versions = [('2.5.1','2.5.4594.1','{C8511AEB-814C-4D6F-AA45-44035EAD563B}'),('2.5.1','2.5.3784','{FC77CBC1-A83E-4FB4-905C-7467DE6871C4}')] %}

adv-ip-scanner:
  {% for pkgname, version, guid in versions %}
  '{{ version }}':
    full_name: 'Advanced IP Scanner {{ pkgname }}'
    installer: 'https://download.advanced-ip-scanner.com/download/files//Advanced_IP_Scanner_{{ version }}.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- & taskkill /F /T /IM advanced_ip_scanner.exe & exit 0'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /noreboot /x {{ guid }}'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
