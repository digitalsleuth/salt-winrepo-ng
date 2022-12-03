{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['7.0.3', '7.0.2', '7.0.1', '6.0.2', '6.0.1'] %}

graphviz:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Graphviz'
    installer: 'https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/{{ version }}/windows_10_cmake_Release_graphviz-install-{{ version }}-win64.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Graphviz\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
