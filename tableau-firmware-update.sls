tableau-firmware-update:
  '22.3.2':
    full_name: 'Tableau Firmware Update'
    installer: 'https://mimage.opentext.com/support/ecm/tableau/setup_tableau_firmware_update_22.3.msi'
    uninstaller: 'msiexec'            
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /x {684C76FB-9B97-46A5-8901-25E17210BE2A} /norestart'
    source_hash: sha256=72da20b80e25ff34d43c44e7f2844707cf21863d5524885a7cfdff1e2a9f7edf
    locale: en_US
    msiexec: True
    reboot: False
