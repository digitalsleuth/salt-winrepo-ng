{% set versions = [('2.59.0.32716','v2590.32716','46d05294524c8fc4bcc65c14e961713c1293f5db4bc5460008b3f591e5d3e96c'),
                   ('2.58.0.32373','v2580.32373','5b7142742fe593b2becd9d185f91890ff3b2c6b4301723054b48f8ad735f2252'),
                   ('2.53.0.30579','v2530.30579','C7CF2C51FC82CE661E474DDB858591DE22FE4409FCED391A08927F5F5C833B3B'),
                   ('2.46.0.28200','v2460.28200','65d24e583c5ca70281e366a5b374c25bb9360663990011d758ec2e8fae32a129')] %}
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
