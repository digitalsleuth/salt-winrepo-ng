{% set versions = [('1.06', 'v106', '9beb3829430836f50ebcdae9fd4f13ae51a41d7900f5e60263960c49a32c11b1')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

magnet-chromebook-acquisition:
{% for version, file_version, hash in versions %}
  '{{ version }}':
    full_name: 'Magnet Chromebook Acquisition Assistant v1 version {{ version }}'
    installer: https://storage.googleapis.com/mfi-files/free_tools/MCAA/MCAA_Setup_{{ file_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Magnet Forensics\MCAAv1\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
