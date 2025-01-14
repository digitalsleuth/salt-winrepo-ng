{% set program_files = '%ProgramFiles%' %}
{% set versions = [
        ('1.96.3', '91fbdddc47bc9c09064bf7acf133d22631cbf083'),
        ('1.82.3', 'fdb98833154679dbaa7af67a5a29fe19e55c2b73'),
        ('1.73.1', '6261075646f055b99068d3688932416f2346dd3b'),
        ('1.63.1', 'fe719cd3e5825bf14e14182fddeb88ee8daf044f'),
        ('1.50.1', 'd2e414d9e4239a252d1ab117bd7067f125afd80a'),
        ('1.49.3', '2af051012b66169dde0c4dfae3f5ef48f787ff69'),
        ('1.48.2', 'a0479759d6e9ea56afa657e454193f72aef85bd0'),
        ('1.39.1', '88f15d17dca836346e787762685a40bb5cce75a8'),
        ('1.38.1', 'b37e54c98e1a74ba89e03073e5a3761284e3ffb0'),
        ('1.37.1', 'f06011ac164ae4dc8e753a3fe7f9549844d15e35'),
        ('1.36.1', '2213894ea0415ee8c85c5eea0d0ff81ecc191529'),
    ]
%}

vscode:
  {% for version, guid in versions %}
  '{{ version }}':
    full_name: 'Microsoft Visual Studio Code'
    installer: 'https://vscode.download.prss.microsoft.com/dbazure/download/stable/{{ guid }}/VSCodeSetup-x64-{{ version }}.exe'
    uninstaller: '{{ program_files }}\Microsoft VS Code\unins000.exe'
    install_flags: '/SP- /VERYSILENT /NORESTART /MERGETASKS=!RUNCODE,ADDCONTEXTMENUFILES,ADDCONTEXTMENUFOLDERS,ADDTOPATH'
    uninstall_flags: '/VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
