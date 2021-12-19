{% set version='7.2.4' %}

libreoffice:
  '{{ version }}.1':
    full_name: 'LibreOffice {{ version }}.1'
    installer: 'https://download.documentfoundation.org/libreoffice/stable/{{ version }}/win/x86_64/LibreOffice_{{ version }}_Win_x64.msi'
    uninstaller: 'https://download.documentfoundation.org/libreoffice/stable/{{ version }}/win/x86_64/LibreOffice_{{ version }}_Win_x64.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
