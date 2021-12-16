# Uses the following associated scripts
# - install.cmd
# - install.ps1

{% set password = 'forensics' %}
{% set version = '3.0.1' %}

flare-vm:
  '{{ version }}':
    full_name: 'FLARE-VM'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/flare-vm/install.cmd'
    install_flags: {{ password }}
    cache_dir: True
