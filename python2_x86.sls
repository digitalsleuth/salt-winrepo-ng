python2_x86:
  {% for minor in range(1, 19) %}
  {% set version = '2.7.' ~ minor %}
  {% set full_version = version ~ '150' %}

  '{{ full_version }}':
    full_name: 'Python {{ version }}'
    installer: 'https://www.python.org/ftp/python/{{ version }}/python-{{ version }}.msi'
    install_flags: '/qn /norestart ALLUSERS=1 ADDLOCAL=Extensions,pip_feature'
    uninstaller: 'https://www.python.org/ftp/python/{{ version }}/python-{{ version }}.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
