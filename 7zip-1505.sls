{% set version = '15.05' %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

7zip-1505:
  '{{ version }}':
    full_name: '7-Zip {{ version }} beta x64'
    installer: 'https://phoenixnap.dl.sourceforge.net/project/sevenzip/7-Zip/15.05/7z1505-x64.exe'
    install_flags: '/S /D="{{ PROGRAM_FILES }}\7-Zip-1505"'
    uninstaller: '{{ PROGRAM_FILES }}\7-Zip-1505\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False

