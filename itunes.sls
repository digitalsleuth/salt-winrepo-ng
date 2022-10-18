itunes:
  '12.11.3.17':
    full_name: 'iTunes'
    installer: 'https://secure-appldnld.apple.com/itunes12/001-97787-20210421-F0E5A3C2-A2C9-11EB-A40B-A128318AD179/iTunes64Setup.exe'
    uninstall_flags: '/qn /norestart /x {653C59E1-B78D-4D82-9259-C14DFD9F6EFC}'
    install_flags: '/quiet /qn ALLUSERS=1 /norestart'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
