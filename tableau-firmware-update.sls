tableau-firmware-update:
  '22.2.4':
    full_name: 'Tableau Firmware Update'
    installer: 'https://mimage.opentext.com/support/ecm/tableau/setup_tableau_firmware_update_22.2.msi'
    uninstaller: 'msiexec.exe'            
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /x {684C76FB-9B97-46A5-8901-25E17210BE2A} /norestart'
    source_hash: sha256=fc2216a83a1e0b3ddd7072c62cf9f6b3e05d7b45bbebf2c0c9e1708931d1d32b
    locale: en_US
    msiexec: True
    reboot: False
