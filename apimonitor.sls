apimonitor:
  '2.13.0':
    full_name: 'API Monitor v2 (Alpha)'
    installer: salt://win/repo-ng/salt-winrepo-ng/files/api-monitor-v2r13-setup-x64.exe
    install_flags: '/v"/qn /norestart"'
    uninstaller: salt://win/repo-ng/salt-winrepo-ng/files/api-monitor-v2r13-setup-x64.exe
    uninstall_flags: '/x /v"/qn /norestart"'
    msiexec: False
    locale: en_US
    reboot: False
