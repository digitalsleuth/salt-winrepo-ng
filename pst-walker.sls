{% set versions = [('7.08','af333db610501b166ada2ba51029862659fcee89351fde87d5a5ee5cb9eb0bb9'),
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
