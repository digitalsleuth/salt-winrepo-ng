{% set program_files = '%ProgramFiles%' %}
{% set current_version = '1.63.1' %}
{% set current_guid = 'fe719cd3e5825bf14e14182fddeb88ee8daf044f' %}
{% set VERSIONS = (
        ('1.63.1', 'fe719cd3e5825bf14e14182fddeb88ee8daf044f'),
        ('1.50.1', 'd2e414d9e4239a252d1ab117bd7067f125afd80a'),
        ('1.49.3', '2af051012b66169dde0c4dfae3f5ef48f787ff69'),
        ('1.48.2', 'a0479759d6e9ea56afa657e454193f72aef85bd0'),
        ('1.39.1', '88f15d17dca836346e787762685a40bb5cce75a8'),
        ('1.38.1', 'b37e54c98e1a74ba89e03073e5a3761284e3ffb0'),
        ('1.37.1', 'f06011ac164ae4dc8e753a3fe7f9549844d15e35'),
        ('1.36.1', '2213894ea0415ee8c85c5eea0d0ff81ecc191529'),
    )
%}

vscode:
  '{{ current_version }}':
    full_name: 'Microsoft Visual Studio Code'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://az764295.vo.msecnd.net/stable/{{ current_guid }}/VSCodeSetup-x64-{{ current_version }}.exe'
{% else %}
    installer: 'https://az764295.vo.msecnd.net/stable/{{ current_guid }}/VSCodeSetup-ia32-{{ current_version }}.exe'
{% endif %}
    uninstaller: '{{ program_files }}\Microsoft VS Code\unins000.exe'
    install_flags: '/SP- /VERYSILENT /NORESTART /MERGETASKS=!RUNCODE,ADDCONTEXTMENUFILES,ADDCONTEXTMENUFOLDERS,ADDTOPATH'
    uninstall_flags: '/VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
