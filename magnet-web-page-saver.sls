{% set versions = [('3.40', 'v340')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

magnet-web-page-saver:
{% for version, file_version in versions %}
  '{{ version }}':
    full_name: 'Magnet Web Page Saver v3 version {{ version }}'
    installer: https://storage.googleapis.com/mfi-files/free_tools/WPS/MagnetWebPageSaver_Setup_{{ file_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Magnet Forensics\WebPageSaverV3\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
