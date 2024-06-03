{% set versions = [('2.74.0.39439','2740.39439','31f1cda096b8761d4cb0af6b2978b24574bd685ffe235b3e8e607e0c0a22b0cf'),
                   ('2.68.0.36478','2680.36478','9e8f1573fbd28b27b4e88e502a19d2b59d91fa15ccb371b1312d4ce2e4ca82fa'),
                   ('2.63.0.34742','2630.34742','4a464e4b1ddb007da86fea4b72e2ff2527def0918c2016a722327f130cd2f7b2'),
                   ('2.61.0.33597','2610.33597','4be703f7c91e1e1f724a85fd6c46377125e041cd447a3a776e06666a52c243f4'),
                   ('2.59.0.32716','2590.32716','46d05294524c8fc4bcc65c14e961713c1293f5db4bc5460008b3f591e5d3e96c'),
                   ('2.58.0.32373','2580.32373','5b7142742fe593b2becd9d185f91890ff3b2c6b4301723054b48f8ad735f2252'),
                   ('2.53.0.30579','2530.30579','C7CF2C51FC82CE661E474DDB858591DE22FE4409FCED391A08927F5F5C833B3B'),
                   ('2.46.0.28200','2460.28200','65d24e583c5ca70281e366a5b374c25bb9360663990011d758ec2e8fae32a129')] %}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

magnet-acquire:
{% for version, file_version, hash in versions %}
  '{{ version }}':
    full_name: 'Magnet ACQUIRE'
    installer: https://prod-releases.magnetforensics.com/acquire/{{ version }}/installer/Acquirev{{ file_version }}setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Magnet ACQUIRE\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
    source_hash: sha256={{ hash }}
{% endfor %}
