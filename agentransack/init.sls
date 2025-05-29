# Software Definition File for Agent Ransack

# Uses the following associated scripts
# - install.cmd
# - install.ps1
# Uninstall Guids : HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\02E7983691E4E8040A070A8150EE2089\InstallProperties

{% set versions = [('9.3.3517.1','3517','{D7761C10-041F-4F94-A112-AF3C4A4C89CC}'),
                   ('9.2.3435.1','3435','{63897E20-4E19-408E-A070-A01805EE0298}'),
                   ('9.2.3434.1','3434','{C6A2DC15-7A79-4FE4-90B1-AAE00F96EA1B}'),
                   ('9.2.3406.1','3406','{6F40EA5D-AE1B-4F5C-A092-C7AAF0716BEB}'),
                   ('9.0.3349.1','3349','{AA12330A-346E-4E81-ADE6-4BCB691A5FFB}')] %}

agentransack:
{% for version, subversion, uninstall in versions %}
  '{{ version }}':
    full_name: 'Agent Ransack'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/_/agentransack/install.cmd'
    install_flags: {{ subversion }}
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ uninstall }} /qn /norestart'
    locale: en_US
    msiexec: False
    reboot: False
    cache_dir: True
{% endfor %}
