# Uses the following associated scripts
# - install.cmd
# - install.ps1
# - remove.cmd

dcode:
  '5.5.21194.40':
    full_name: 'Digital Detective DCode v5.5'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/dcode/install.cmd'
    install_flags: '5.5.21194.40'
    uninstall_flags: /VERYSILENT /NORESTART
    uninstaller: 'salt://win/repo-ng'
    cache_dir: True
{% endfor %}
