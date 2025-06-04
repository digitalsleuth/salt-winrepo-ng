# Formerly Process Hacker, now called System Informer
{% set versions = [('3.2.25011', '2103')] %}

systeminformer:
{% for version, subversion in versions %}
  '{{ version }}.{{ subversion }}':
    full_name: 'System Informer'
    installer: https://github.com/winsiderss/systeminformer/releases/download/v{{ version }}.{{ subversion }}/systeminformer-{{ version }}-release-setup.exe
    install_flags: '-install -silent'
    uninstaller: 'C:\Program Files\SystemInformer\systeminformer-setup.exe'
    uninstall_flags: '-uninstall -silent'
    msiexec: False    
    locale: en_US
    reboot: False
{% endfor %}
    
