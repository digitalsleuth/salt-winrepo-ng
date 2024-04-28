{% set versions = ['4.27.30.0'] %}

ibackup-viewer:
{% for version in versions %}
  '{{ version }}':
    full_name: 'iBackup Viewer {{ version }}'
    installer: https://www.imactools.com/download/iBackupViewerSetup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /ALLUSERS /NOCLOSEAPPLICATIONS /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\iMacTools\iBackup Viewer\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
