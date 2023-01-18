# msiexec /X {C96B5B73-1E87-4B79-BD64-1770219EF92E} also works for uninstall

adobeair:
  latest:
    full_name: 'Adobe AIR'
    installer: 'https://airsdk.harman.com/assets/downloads/AdobeAIR.exe'
    install_flags: '-silent -eulaAccepted'
    uninstaller: 'https://airsdk.harman.com/assets/downloads/AdobeAIR.exe'
    uninstall_flags: '-uninstall'
    msiexec: False
    locale: en_US
    reboot: False
