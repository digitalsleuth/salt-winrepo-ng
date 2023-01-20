# Software Definition File for Agent Ransack

# Uses the following associated scripts
# - install.cmd
# - install.ps1

{% set versions = [('9.0.3349.1','3349')] %}

agentransack:
{% for version, subversion in versions %}
  '{{ version }}':
    full_name: 'Agent Ransack'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/agentransack/install.cmd'
    install_flags: {{ subversion }}
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {AA12330A-346E-4E81-ADE6-4BCB691A5FFB} /qn /norestart'
    locale: en_US
    msiexec: False
    reboot: False
    cache_dir: True
{% endfor %}
