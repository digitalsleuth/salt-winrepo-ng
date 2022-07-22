# Short URL for installer: https://aka.ms/vs/17/release/vs_community.exe
{% set versions = [
        ('17.0.4', '50c2572bd77051812ef5c9d59393f57708f994dc8f31b82c89a735712fdff26a')
] %}

vs-community-2022:
  {% for version, hash in versions %}
  '{{ version }}':
    full_name: Visual Studio Community 2022
    installer: https://download.visualstudio.microsoft.com/download/pr/99fe5fea-e07c-4e6e-87ef-32a88c6ec393/{{ hash }}/vs_Community.exe
    install_flags:
      --quiet
      --norestart
      --wait
    uninstaller: {{
      [ salt.environ.get('ProgramFiles(x86)') if salt.grains.get('cpuarch') == 'AMD64' else
        salt.environ.get('ProgramFiles')
      , 'Microsoft Visual Studio'
      , 'Installer'
      , 'vs_installer.exe'
      ]|join('\\')|yaml_encode }}
    uninstall_flags:
      /uninstall
      --force
      --quiet
      --norestart
    source_hash: sha256={{ hash }}
    reboot: False
    locale: en_US
{% endfor %}
