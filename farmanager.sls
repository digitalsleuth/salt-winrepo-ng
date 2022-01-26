{% set versions = [('3.0.5956.2725', '3.0.5956', '582cfff50e4b12e63129102e0f50d08e9dc441c459cc5864bbfe33e621c00e81', '181132a7f167f7f2b4f74ca30089633822d91be5')] %}

farmanager:
  {% for long_version, short_version, hash, commit in versions %}
  '{{ short_version }}':
    full_name: 'Far Manager 3 (x64)'
    installer: https://github.com/FarGroup/FarManager/releases/download/ci/v{{ long_version }}/Far.x64.{{ long_version }}.{{ commit }}.msi
    install_flags: /quiet /norestart
    uninstaller: https://github.com/FarGroup/FarManager/releases/download/ci/v{{ long_version }}/Far.x64.{{ long_version }}.{{ commit }}.msi
    uninstall_flags: /quiet /norestart
    locale: en_US
    msiexec: True
    reboot: False
    source_hash: sha256={{ hash }}
  {% endfor %}
