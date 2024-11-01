{% if grains['cpuarch'] == 'AMD64' %}
 {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
 {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
{% set url = "https://download.jetbrains.com/python" %}
{% set versions = [('2022.3.1','223.8214.51'),
                   ('2022.3','223.7571.203'),
                   ('2022.2.4','222.4459.20'),
                   ('2022.2.3','222.4345.23'),
                   ('2022.2.2','222.4167.33'),
                   ('2022.2.1','222.3739.56'),
                   ('2022.2','222.3345.131'),
                   ('2022.1.4','221.6008.17'),
                   ('2022.1.3','221.5921.27'),
                   ('2022.1.2','221.5787.24'),
                   ('2022.1.1','221.5591.52'),
                   ('2022.1','221.5080.212')] %}

pycharm-community:
  {% for version, build in versions %}
  '{{ build }}':
    installer: '{{ url }}/pycharm-community-{{ version }}.exe'
    full_name: 'PyCharm Community Edition {{ version }}'
    install_flags: '/S /CONFIG=C:\ProgramData\Salt Project\Salt\var\cache\salt\minion\files\base\win\repo-ng\salt-winrepo-ng\_\pycharm-community\silent.config'
    cache_file: salt://win/repo-ng/salt-winrepo-ng/_/pycharm-community/silent.config
    uninstaller: '{{ PROGRAM_FILES }}\JetBrains\PyCharm Community Edition {{ version }}\bin\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    reboot: False
  {% endfor %}
