{% set versions = [('3.1.1','{F433DCF5-E78F-4D65-B376-2794A016A17C}'),('3.0.5',''),('3.0.4',''),('3.0.2','')] %}

# InnoSetup
openhashtab:
{% for version, guid in versions %}
  '{{ version }}':
  {% if version.startswith('3.0') %}
    full_name: 'OpenHashTab version {{ version }}'
    installer: https://github.com/namazso/OpenHashTab/releases/download/v{{ version }}/OpenHashTab_setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\OpenHashTab\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% else %}
    full_name: 'OpenHashTab'
    installer: https://github.com/namazso/OpenHashTab/releases/download/{{ version }}/OpenHashTab_Machine_x64.msi
    install_flags: '/qn /norestart'
    uninstaller: '{{ guid }}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endif %}
{% endfor %}
