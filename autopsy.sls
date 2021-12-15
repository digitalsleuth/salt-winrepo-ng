autopsy:
  '4.19.2':
    full_name: 'Autopsy'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-64bit.msi'
    uninstaller: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-64bit.msi'
    {% else %}
    installer: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-32bit.msi'
    uninstaller: 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-32bit.msi'
    {% endif %}
    install_flags: '/quiet /norestart'
    uninstall_flags: '/quiet /norestart'
    msiexec: True
    locale: en_US
    reboot: False
