{% set versions = ['2025.1.2'] %}

dotpeek:
{% for version in versions %}
  {{ version }}:
    full_name: 'JetBrains dotPeek {{ version }}'
    installer: https://download.jetbrains.com/resharper/dotUltimate.{{ version }}/JetBrains.dotPeek.{{ version }}.web.exe
    install_flags: '/SpecificProductNames=dotPeek /Silent=True /PerMachine=True'
    uninstaller: https://download.jetbrains.com/resharper/dotUltimate.{{ version }}/JetBrains.dotPeek.{{ version }}.web.exe
    uninstall_flags: '/SpecificProductNamesToRemove=dotPeek /Silent=True /PerMachine=True'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
