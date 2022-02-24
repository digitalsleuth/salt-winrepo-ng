{% set versions = [('2.46.0.28200','v2460.28200','65d24e583c5ca70281e366a5b374c25bb9360663990011d758ec2e8fae32a129')] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

magnet-acquire:
{% for version, file_version, hash in versions %}
  '{{ version }}':
    full_name: 'Magnet ACQUIRE'
    installer: https://prod-releases.magnetforensics.com/acquire/{{ version }}/installer/Acquire{{ file_version }}setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Magnet ACQUIRE\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
