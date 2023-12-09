{% set versions = ['7.1.2.1945'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

mount-image-pro:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Mount Image Pro'
    installer: https://download.getdata.com/support/mip/MountImagePro-(v{{ version }}).exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\GetData\Mount Image Pro v{{ version[0] }}\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
