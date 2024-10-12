# HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\<SID>\Products
# ORCA - Property - ProductCode

{% set versions = [('24.3.3','24.3','{98227FE6-1EE0-4F37-B976-574C22296443}'),('23.4.3','23.4','{88BB6899-2933-435E-B550-A5C05D3BF7BA}'),('22.3.2','22.3','{DEFEA188-DF52-4A89-BED2-AC81335DC30A}')] %}

tableau-firmware-update:
{% for long_ver, short_ver, guid in versions %}
  '{{ long_ver }}':
    full_name: 'Tableau Firmware Update'
    installer: 'https://mimage.opentext.com/support/ecm/tableau/setup_tableau_firmware_update_{{ short_ver }}.msi'
    uninstaller: 'msiexec'            
    install_flags: '/qn /norestart'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    locale: en_US
    msiexec: False
    reboot: False
{% endfor %}
