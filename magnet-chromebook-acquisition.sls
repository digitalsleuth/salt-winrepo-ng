{% set versions = [('1.06', 'v106')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

magnet-chromebook-acquisition:
{% for version, file_version in versions %}
  '{{ version }}':
    full_name: 'Magnet Chromebook Acquisition Assistant v1 version {{ version }}'
    installer: salt://win/repo-ng/salt-winrepo-ng/_/files/MCAA_Setup_{{ file_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Magnet Forensics\MCAAv1\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
