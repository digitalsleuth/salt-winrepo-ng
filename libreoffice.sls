{% set versions = [('24.8.4.2','24.8.4.2'),
                   ('24.2.2.1','24.2.2.1'),
                   ('7.6.2','7.6.2.1'),
                   ('7.5.2','7.5.2.2'),('7.5.2','7.5.2.1'),('7.5.1','7.5.1.2'),('7.5.0','7.5.0.3'),
                   ('7.4.5','7.4.5.1'),('7.4.4','7.4.4.2'),('7.4.3','7.4.3.2'),('7.4.2','7.4.2.3'),('7.4.0','7.4.0.3'),
                   ('7.3.5','7.3.5.2'),('7.3.4','7.3.4.2'),('7.3.3','7.3.3.2'),('7.3.2','7.3.2.2'),
                   ('7.2.6','7.2.6.2'),('7.2.5','7.2.5.2'),('7.2.4','7.2.4.1')] %}

{% set new_format = ['24.8.4.2','24.2.2.1','7.6.2','7.5.2'] %}

libreoffice:
  {% for version, fullversion in versions %}
  '{{ fullversion }}':
    full_name: 'LibreOffice {{ fullversion }}'
    {% if version not in new_format %}
    installer: 'https://downloadarchive.documentfoundation.org/libreoffice/old/{{ fullversion }}/win/x86_64/LibreOffice_{{ fullversion }}_Win_x64.msi'
    uninstaller: 'https://downloadarchive.documentfoundation.org/libreoffice/old/{{ fullversion }}/win/x86_64/LibreOffice_{{ fullversion }}_Win_x64.msi'
    {% else %}
    installer: 'https://downloadarchive.documentfoundation.org/libreoffice/old/{{ fullversion }}/win/x86_64/LibreOffice_{{ fullversion }}_Win_x86-64.msi'
    uninstaller: 'https://downloadarchive.documentfoundation.org/libreoffice/old/{{ fullversion }}/win/x86_64/LibreOffice_{{ fullversion }}_Win_x86-64.msi'
    {% endif %}
    install_flags: '/qn /norestart CREATEDESKTOPLINK=0'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
