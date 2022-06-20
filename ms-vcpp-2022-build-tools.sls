# Installer version 17.2.32602.215
{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%PROGRAMFILES(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%PROGRAMFILES%" %}
{% endif %}

ms-vcpp-2022-build-tools:
  '17.2.4':
    full_name: 'Visual Studio Build Tools 2022'
    installer: https://aka.ms/vs/17/release/vs_buildtools.exe
    install_flags: '--wait --quiet --add Microsoft.VisualStudio.Workload.MSBuildTools --add Microsoft.VisualStudio.Workload.VCTools --add Microsoft.VisualStudio.Component.Windows10SDK.18362 --add Microsoft.VisualStudio.Component.VC.140 --add Microsoft.Component.VC.Runtime.UCRTSDK'
    uninstaller: https://aka.ms/vs/17/release/vs_buildtools.exe
    uninstall_flags: 'uninstall --wait --quiet --installPath "{{ PROGRAM_FILES }}\Microsoft Visual Studio\2022\BuildTools"'
    reboot: False
