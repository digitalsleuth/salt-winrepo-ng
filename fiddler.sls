# just 32-bit x86 installer available
{% set versions = ['5.0.20242.10753','5.0.20211.51073'] %}

{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
 
fiddler:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Progress Telerik Fiddler Classic'
    installer: https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe
    install_flags: '/S /D={{ PROGRAM_FILES }}\Fiddler'
    uninstaller: '{{ PROGRAM_FILES }}\Fiddler\uninst.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
