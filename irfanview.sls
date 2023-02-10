{% set versions = [('4.62', 'd9d4c5f3120a9420e2dbaf0ee8931556e161787fbc4297d5fb4e4c7616fdd668'),
                   ('4.60', 'f653d6cf6fd88a3ab44b3d41b19161b1bda5b34b853176d33a105513d832bf2c'),
                   ('4.59', '56326517adb6b6b65b690fa20da2ffb9c5ae87501e80101f5cfd2078f9225cdb')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

irfanview:
{% for version, hash in versions %}
  {% set dotless_version = version | replace(".","") %}
  '{{ version }}':
    full_name: 'IrfanView {{ version }} (64-bit)'
    installer: https://download.betanews.com/download/967963863-1/iview{{ dotless_version }}_x64_setup.exe
    install_flags: '/silent /desktop=0 /thumbs=0 /group=1 /allusers=1 /assoc=1'
    uninstaller: '{{ PROGRAM_FILES }}\IrfanView\iv_uninstall.exe'
    uninstall_flags: '/silent'
    source_hash: sha256={{ hash }}
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}

# install_flags
# folder:     destination folder; if not indicated: old IrfanView folder is used, if not found, the "Program Files" folder is used
# silent:   silent install - no prompts
# desktop:  create desktop shortcut; 0 = no, 1 = yes (default: 0)
# thumbs:   create desktop shortcut for thumbnails; 0 = no, 1 = yes (default: 0)
# group:     create group in Start Menu; 0 = no, 1 = yes (default: 0)
# allusers:  desktop/group links are for all users; 0 = current user, 1 = all users
# assoc:     if used, set file associations; 0 = none, 1 = images only, 2 = select all (default: 0)
# assocallusers:  if used, set associations for all users (Windows XP only)
# ini:      if used, set custom INI file folder (system environment variables are allowed)
