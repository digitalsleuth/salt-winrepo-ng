# Software Definition File for KsDumper 11

# Uses the following associated scripts
# - install.cmd
# - install.ps1
# - remove.cmd

{% set versions = ['1.0'] %}

ksdumper11:
{% for version in versions %}
  '{{ version }}':
    full_name: 'KsDumper 11 {{ version }}'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/_/ksdumper11/install.cmd'
    install_flags: {{ version }}
    uninstaller: 'salt://win/repo-ng/salt-winrepo-ng/_/ksdumper11/remove.cmd'
    cache_dir: True
{% endfor %}
