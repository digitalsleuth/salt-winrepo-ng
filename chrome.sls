chrome:
  latest:
    full_name: 'Google Chrome'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise64.msi'
    {% else %}
    installer: 'https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi'
    {% endif %}
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec'
    uninstall_flags: '/qn /x {495FEE67-CE5D-3455-959F-134335401C3F} /norestart'
    msiexec: False
    locale: en_US
    reboot: False
