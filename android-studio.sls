{% set versions = [('2022.3','2022.3.1.20')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

android-studio:
  {% for short_version, full_version in versions %}
  '{{ short_version }}':
    full_name: 'Android Studio'
    installer: https://redirector.gvt1.com/edgedl/android/studio/install/{{ full_version }}/android-studio-{{ full_version }}-windows.exe 
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Android\Android Studio\uninstall.exe'
    uninstall_flags: '/S'
    locale: en_US
    msiexec: False
    reboot: False
  {% endfor %}
