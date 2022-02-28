vcforpython27:
  '9.0.1.30729':
    full_name: 'Microsoft Visual C++ Compiler Package for Python 2.7'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/files/VCForPython27.msi'
    install_flags: '/qn ALLUSERS=1 /norestart'
    uninstaller: 'salt://win/repo-ng/salt-winrepo-ng/files/VCForPython27.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
