# just 32-bit x86 installer available
# Gimp installs into %ProgramFiles on either cpu arch
gimp:
  {% for major_version, version, minor_version in [('2.10', '2.10.38', '-1'),
                                                   ('2.10', '2.10.30', ''),
                                                   ('2.10', '2.10.22', ''),
                                                   ('2.10', '2.10.4', '-2'),
                                                   ('2.8', '2.8.22', ''),
                                                   ('2.8', '2.8.16', '-6'),
                                                   ('2.8', '2.8.14', '-1')] %}
  '{{ version }}':
    full_name: 'GIMP {{ version }}{{ minor_version }}'
    installer: 'https://download.gimp.org/mirror/pub/gimp/v{{ major_version }}/windows/gimp-{{ version }}-setup{{ minor_version }}.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '%ProgramFiles%\Gimp 2\uninst\unins000.exe'
    uninstall_flags: '/SP- /VERYSILENT /NORESTART'
    msiexec: False
    locale: en_US
    restart: False
  {% endfor %}
