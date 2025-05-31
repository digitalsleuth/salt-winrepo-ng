{% set versions = ['25.2.4.1','25.2.3.2','25.2.3.1','25.2.2.2','25.2.2.1','25.2.1.2','25.2.1.1','25.2.0.3','25.2.0.2','25.2.0.1',
                   '24.8.7.2','24.8.7.1','24.8.6.2','24.8.6.1','24.8.5.2','24.8.5.1','24.8.4.2','24.2.2.1'
] %}

libreoffice:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'LibreOffice {{ version }}'
    installer: 'https://downloadarchive.documentfoundation.org/libreoffice/old/{{ version }}/win/x86_64/LibreOffice_{{ version }}_Win_x86-64.msi'
    uninstaller: 'https://downloadarchive.documentfoundation.org/libreoffice/old/{{ version }}/win/x86_64/LibreOffice_{{ version }}_Win_x86-64.msi'
    install_flags: '/qn /norestart CREATEDESKTOPLINK=0'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
