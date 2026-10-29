{% set versions = [
  '0.102.3001.0',
  '0.100.2','0.100.0',
  '0.91.1',
  '0.86.0','0.85.1','0.85.0','0.84.1','0.84.0','0.83.0','0.82.1','0.82.0','0.81.1','0.80.1','0.80.0',
  '0.79.0','0.78.0','0.77.0','0.76.2','0.76.1','0.76.0','0.75.1','0.75.0','0.74.1','0.72.0',
  '0.64.1',
] %}

ms-powertoys:
{% for version in versions %}
  '{{ version }}':
  {% set version_split = version.split(".") %}
  {% if version_split | length == 4 %}
    {% set tag = ".".join(version_split[:3]) %}
  {% else %}
    {% set tag = version %}
  {% endif %}
    full_name: 'PowerToys (Preview) x64'
    installer: 'https://github.com/microsoft/PowerToys/releases/download/v{{ tag }}/PowerToysSetup-{{ version }}-x64.exe'
    install_flags: '/S'
    uninstaller: 'https://github.com/microsoft/PowerToys/releases/download/v{{ tag }}/PowerToysSetup-{{ version }}-x64.exe'
    uninstall_flags: '/uninstall /s'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
