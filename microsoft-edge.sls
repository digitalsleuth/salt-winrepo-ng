{% set PROGRAM_FILES86 = "%ProgramFiles(x86)%" %}
{% set versions = [('109.0.1518.55','dd75b458-0c26-4cf6-a4e2-8972f78ecea6'),
                   ('109.0.1518.52','fe137e50-cbf8-4641-9108-a7d3b019dbc5'),
                   ('109.0.1518.49','4f01769a-4103-4746-9702-3c310a7d348b')] %}

microsoft-edge:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'Microsoft Edge'
    installer: 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/{{ guid }}/MicrosoftEdgeEnterpriseX64.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {9658DE46-016C-3C7C-BA34-ADC0DA959790} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
