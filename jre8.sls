# http://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html
{% set versions = {'8.0':['4310.10','3910.13','3610.9']} %}

jre8:
{% for major, subversions in versions.items() %}
{% for minor in subversions %}
{% set minor_main = minor[:3] %}
  '{{ major }}.{{ minor }}':
    full_name: 'Java 8 Update {{ minor_main }} (64-bit)'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/_/files/jre-8u{{ minor_main }}-windows-x64.exe'
    install_flags: '/s REBOOT=Suppress SPONSORS=0 REMOVEOUTOFDATEJRES=1 AUTO_UPDATE=Disable'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {71324AE4-039E-4CA4-87B4-2F64180{{ minor_main }}F0} /norestart'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
{% endfor %}
