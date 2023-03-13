nuix-evidence-mover:
  '6.02.10059':
    full_name: 'Nuix Evidence Mover'
    installer: salt://win/repo-ng/salt-winrepo-ng/files/nuix_evidence_mover_6.2.1.msi
    install_flags: '/qn /norestart'
    uninstaller: salt://win/repo-ng/salt-winrepo-ng/files/nuix_evidence_mover_6.2.1.msi
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
