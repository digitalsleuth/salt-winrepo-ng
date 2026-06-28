# Short URL for installer: https://aka.ms/vs/stable/vs_community.exe
{% set versions = [('18.7.1','4c1645e2-fb0d-4889-a6b9-3fb6fd3a782f','4ef523a7c5be6b6bb2fb76329009cd7b03377a88730228d9b7639fc8114f496b')
                  ] %}

vs-community-2026:
  {% for version, guid, hash in versions %}
  '{{ version }}':
    full_name: Visual Studio Community 2026
    installer: https://download.visualstudio.microsoft.com/download/pr/{{ guid }}/{{ hash }}/vs_Community.exe
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
    reboot: False
    locale: en_US
{% endfor %}
