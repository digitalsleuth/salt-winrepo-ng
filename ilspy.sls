{% set versions = [('9.1', '9.1.0.7988', '{A12FDAB1-731B-4A98-9749-D4815E96A1E0}'),
                   ('8.1.1', '8.1.1.7464', '{A12FDAB1-731B-4A98-9749-D4813EA6AC74}'),
] %}

ilspy:
  {% for version, subversion, uninstall in versions %}
  '{{ subversion }}':
    full_name: 'ILSpy'
    installer: 'https://github.com/icsharpcode/ILSpy/releases/download/v{{ version }}/ILSpy_Installer_{{ subversion }}-x64.msi'
    uninstaller: 'msiexec.exe'
    install_flags: '/qn ALLUSERS=1 /norestart'
    uninstall_flags: '/x {{ uninstall }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
