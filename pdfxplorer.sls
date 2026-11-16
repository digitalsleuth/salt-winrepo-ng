{% set versions = [('5.1.0', '{17C05C81-7B91-4F9C-A483-FEFC527228AD}')] %}

pdfxplorer:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: PDFXplorer {{ version }}
    installer: https://pdfxplorer.dev/download/PDF4DEV.Applications.PDFXplorer.{{ version }}.msi
    install_flags: '/qn /norestart'
    uninstaller: '{{ guid }}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
