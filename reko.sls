{% set versions = [('0.12.0','99a6fb0170','{B68210A3-B0D7-42D4-B0E0-4E8A653BADBD}'),
                   ('0.11.6','58fe816db3','{A05A280B-4A30-455F-BD6B-846A135F66C2}')
] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

reko:
{% for version, hash, guid in versions %}
  '{{ version }}.0':
    full_name: 'Reko decompiler for x86-64'
    installer: 'https://github.com/uxmal/reko/releases/download/version-{{ version }}/Reko-{{ version }}-x64-{{ hash }}.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {{ guid }} /qn /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}

