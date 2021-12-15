# Uses the following associated scripts
# - install.cmd
# - install.ps1
# - remove.cmd
{% set install_path = '%ProgramFiles(x86)%\Digital Detective\DCode v5' %}
{% set version = '5.5.21194.40' %}

dcode:
  '{{ version }}':
    full_name: 'Digital Detective DCode v5.5'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/dcode/install.cmd'
    install_flags: {{ version }}
    uninstall_flags: /VERYSILENT /NORESTART
    uninstaller: '{{ install_path }}\unins000.exe'
    cache_dir: True

