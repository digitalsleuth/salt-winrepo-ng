{% set versions = ['5.2.6','5.2.4','5.2.3','5.2.1'] %}
{% set PROGRAM_FILES = '%ProgramFiles(x86)%' %}

resource-hacker:
  {% for version in versions %}
    '{{ version }}':
      full_name: 'Resource Hacker version {{ version }}'
      installer: http://angusj.com/resourcehacker/reshacker_setup.exe
      install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
      uninstaller: '{{ PROGRAM_FILES }}\Resource Hacker\unins000.exe'
      uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
      msiexec: False
      locale: en_US
  {% endfor %}
