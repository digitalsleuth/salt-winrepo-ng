{% set versions = [('7.2.1', '7.2.1.6856', '9f9f915f4734f4ff14ed33e996c1da112695e8c6a4c7da22671c75235c346c40')] %}

ilspy:
  {% for version, subversion, hash in versions %}
  '{{ subversion }}':
    full_name: 'ILSpy'
    installer: 'https://github.com/icsharpcode/ILSpy/releases/download/v{{ version }}/ILSpy_Installer_{{ subversion}}.msi'
    uninstaller: 'msiexec.exe'
    install_flags: '/qn /norestart'
    uninstall_flags: '/x {A12FDAB1-731B-4A98-9749-D4813EA6AC74} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
