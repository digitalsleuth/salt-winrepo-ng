# Short URL for installer: https://aka.ms/vs/17/release/vs_community.exe
{% set versions = [('17.7.5', '8bee1b10-0767-416b-a3c0-d658a719947b', 'ec86fed16b3a3eb9ee0e5a4286d5edc6cdcecaf90c10833bc4ab9668d5bf9cdc'),
                   ('17.7.1', 'cda788db-d262-4261-ac9e-064293a93399', '1ca4e457b7ecf0a5a04e5eb8eedd93b93f641ea6306e66ca5432911043a71369'),
                   ('17.6.4', '33081bfc-10f1-42d4-8f5a-df6709b8b105', '0b11ab6a0bc941b3968f666ac9ae26e257758ae8ae408bbe3118a341ac8816f3'),
                   ('17.5.4', '50042acc-a12d-4dfe-a272-b109b15b7cd6', '7d5d17810a78ef3598e755c943a94273e47ce0345a231c48f00b48d213256094'),
                   ('17.0.4', '99fe5fea-e07c-4e6e-87ef-32a88c6ec393', '50c2572bd77051812ef5c9d59393f57708f994dc8f31b82c89a735712fdff26a')
                  ] %}

vs-community-2022:
  {% for version, guid, hash in versions %}
  '{{ version }}':
    full_name: Visual Studio Community 2022
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
    source_hash: sha256={{ hash }}
    reboot: False
    locale: en_US
{% endfor %}
