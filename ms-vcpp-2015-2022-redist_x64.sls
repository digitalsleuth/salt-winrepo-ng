{% set versions = [('14.34.31931','bcb0cef1-f8cb-4311-8a5c-650a5b694eab/2257B3FBE3C7559DE8B31170155A433FAF5B83829E67C589D5674FF086B868B9')] %}

ms-vcpp-2015-2022-redist_x64:
  {% for version, guids in versions %}
  '{{ version }}':
    full_name: 'Microsoft Visual C++ 2015-2022 Redistributable (x64) - {{ version }}'
    installer: 'https://download.visualstudio.microsoft.com/download/pr/{{ guids }}/VC_redist.x64.exe'
    install_flags: '/quiet /norestart'
    uninstaller: 'https://download.visualstudio.microsoft.com/download/pr/{{ guids }}/VC_redist.x64.exe'
    uninstall_flags: '/uninstall /quiet /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
