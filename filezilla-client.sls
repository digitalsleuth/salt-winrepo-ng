{% set PROGRAM_FILES = "%ProgramFiles%" %}

filezilla-client:
  {% for version in ['3.68.1', '3.68.0', '3.67.1', '3.67.0', '3.66.5', '3.66.4', '3.66.1', '3.66.0', '3.65.0', '3.64.0', '3.63.2.1', '3.63.1', '3.63.0', '3.62.2', '3.62.1', '3.62.0', '3.61.0', '3.60.2', '3.60.1', '3.60.0',
                     '3.59.0', '3.58.0', '3.57.0', '3.56.0', '3.55.1', '3.55.0', '3.54.1', '3.54.0', '3.53.0', '3.52.0', '3.51.0', 
                     '3.47.1', '3.47.0', '3.46.3', '3.46.2', '3.46.1', '3.46.0', '3.45.1', '3.45.0', '3.44.2', '3.44.1', '3.44.0', '3.43.0', '3.42.1', '3.42.0', '3.41.2', '3.41.1', '3.41.0', '3.40.0',
                     '3.39.0', '3.38.1', '3.38.0', '3.37.4', '3.37.3', '3.37.1', '3.37.0', '3.36.0', '3.35.2', '3.35.1', '3.35.0', '3.34.0', '3.33.0', '3.32.0', '3.31.0', '3.30.0',
                     '3.29.0', '3.28.0', '3.27.1', '3.27.0.1', '3.27.0', '3.26.2', '3.26.1', '3.26.0', '3.25.2', '3.25.1', '3.25.0', '3.24.1', '3.24.0', '3.23.0.2', '3.23.0.1', '3.23.0', '3.22.2.2', '3.22.2.1', '3.22.2', '3.22.1', '3.22.0', '3.21.0', '3.20.1', '3.20.0',
                     '3.19.0', '3.18.0', '3.17.0.1', '3.17.0', '3.16.1', '3.16.0'] %}
  '{{ version }}':
    full_name: 'FileZilla {{ version }}'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/_/files/FileZilla_{{ version }}_win64-setup.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\FileZilla FTP Client\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}