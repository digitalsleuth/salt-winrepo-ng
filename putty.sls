{% set versions = ['0.78','0.77'] %}
putty:
  {% for version in versions %}
  '{{ version }}.0.0':
    {% if grains['cpuarch'] == 'AMD64' %}
    {% set ver_arch = " (64-bit)" %}
    installer: 'https://the.earth.li/~sgtatham/putty/{{ version }}/w64/putty-64bit-{{ version }}-installer.msi'
    uninstaller: 'https://the.earth.li/~sgtatham/putty/{{ version }}/w64/putty-64bit-{{ version }}-installer.msi'
    {% else %}
    installer: 'https://the.earth.li/~sgtatham/putty/{{ version }}/w32/putty-{{ version }}-installer.msi'
    uninstaller: 'https://the.earth.li/~sgtatham/putty/{{ version }}/w32/putty-{{ version }}-installer.msi'
    {% endif %}
    full_name:  'PuTTY release {{ version }}{{ ver_arch | default('') }}'
    install_flags: '/qn'
    uninstall_flags: '/qn'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
