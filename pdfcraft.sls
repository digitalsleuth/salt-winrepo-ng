{% set versions = [('0.14.0', '{39F7F98F-3A8C-43B4-B6C3-778FB442B040}')] %}

pdfcraft:
{% for version, guid in versions %}
  '{{ version }}':
    full_name: 'PdfCraft'
    installer: 'https://github.com/storytold/pdfcraft/releases/download/v{{ version }}/pdfcraft-{{ version }}-windows-x64.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}

