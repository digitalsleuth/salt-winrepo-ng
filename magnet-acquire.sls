{% set versions = [('2.92.0.43217','2920.43217'),
                   ('2.85.0.42049','2850.42049'),
                   ('2.82.0.41575','2820.41575'),
                   ('2.74.0.39439','2740.39439'),
                   ('2.68.0.36478','2680.36478'),('2.63.0.34742','2630.34742'),('2.61.0.33597','2610.33597'),
                   ('2.59.0.32716','2590.32716'),('2.58.0.32373','2580.32373'),('2.53.0.30579','2530.30579'),
                   ('2.46.0.28200','2460.28200'),
]%}
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}

magnet-acquire:
{% for version, file_version in versions %}
  '{{ version }}':
    full_name: 'Magnet ACQUIRE'
    installer: https://prod-releases.magnetforensics.com/acquire/{{ version }}/installer/Acquirev{{ file_version }}setup.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\Magnet ACQUIRE\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
