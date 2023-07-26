{% set versions = [('7.15','b64a4a5cbea66d5791e38ba0395a93161bde79b0950a0886f4cdc47cec46d8c0'),
                   ('7.12','a2ce137a3ccf55fafe4ce958eb84fff570926afc2c956cc75ac770a4246a4a12'),
                   ('7.11','e9f503afc201aeae1d29b6f5e9910bb67654addd041cfb3f68c62354749158e1'),
                   ('7.10','5e7424871021ee8b71f82002e4c2841f22abeedb55c453d12716f191f97d7ecd'),
                   ('7.08','af333db610501b166ada2ba51029862659fcee89351fde87d5a5ee5cb9eb0bb9'),
                   ('7.06','9bf8df53113c858ea9b8a4abf9ffa92350244fb62fae3f56ceaaae5d41d4e478'),
                   ('7.05','0F05A22FEFF7840769AFD50189A4E5502D78CDB2862BB7EBB642D9D5533BC8E1'),
                   ('7.04','3fd9748ab00dc0c75ce4b20bce208bbdb05b89f7216641c49dfad0a99bb4a405'),
                   ('7.02','8A3C27585F3283D8C640D2AFA9716B4C88B571BB7AC8374C19B6278BAABEB41F'),
                   ('6.21','3512DFDC7BEEFEFCA6144FD923CBEE02E35A0A8EE3F9BCB28EE2C47D7C902D30')] %}

pst-walker:
{% for version, hash in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'PST Walker {{ version }}'
    installer: https://downloads.pstwalker.com/pstwalker{{ dotless_version }}.exe
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: 'C:\Program Files (x86)\PST Walker\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
