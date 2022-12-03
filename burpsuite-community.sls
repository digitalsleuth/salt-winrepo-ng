{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = [('2022.11.2', '7ab4387b226b63241a7eef35db8491d5b413d84462819ec5e69af80045a736b4'),
                   ('2022.3', '7f82e54bf11a160973c0e492a6c0a1d6f14e2dbdd048232fb058dea12c1b013d'),
                   ('2022.2.4', '3de69537fc9acb97775b0b4e15b825782708150c20f8ef06f920a086fca54fda'),
                   ('2022.2.3', '121cf96a79c9e4751736451985ef14047ee01a7ca5d3a618753438d82d1f1180'),
                   ('2022.2.2', 'ed94a3c0b1763d2f7d3d626276c72c4b77fd59372c8e370d00dd212b2d2c8c1d'),
                   ('2022.2.1', '91ea62ee203d3b22f2159295475f13c1084e84010837e86252d319e03180db08'),
                   ('2022.2', '60e16e0d0136e181cf35b82e370dc662cc878897c4dbdceb394b77660e237125'),
                   ('2022.1.1', 'dae860e788f493f3503ee86b09d8e9d19b98135e683bb00c6e548629f8ec3e51')] %}

burpsuite-community:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Burp Suite Community Edition {{ version }}'
    installer: 'https://portswigger-cdn.net/burp/releases/download?product=community&version={{ version }}&type=WindowsX64'
    install_flags: '-q'
    uninstaller: '{{ PROGRAM_FILES }}\BurpSuiteCommunity\uninstall.exe'
    uninstall_flags: '-q'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
