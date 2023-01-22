fileinsight:
  '3.0':
    full_name: 'FileInsight'
    installer: salt://win/repo-ng/salt-winrepo-ng/files/fileinsight.msi
    install_flags: '/qn /norestart'
    uninstaller: salt://win/repo-ng/salt-winrepo-ng/files/fileinsight.msi
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
