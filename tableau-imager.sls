tableau-imager:
  '20.3.3':
    full_name: 'Tableau Imager'
    installer: 'https://mimage.opentext.com/support/ecm/tableau/setup_tableau_imager_20.3.msi'              
    uninstaller: 'msiexec.exe'            
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /x {A003F71D-D7EC-42C5-9F7D-E9A558CAB667} /norestart'
    locale: en_US
    msiexec: True
    reboot: False
