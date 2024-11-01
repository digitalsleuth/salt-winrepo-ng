# Install from internet -D
# Root directory: -R C:\cygwin64
# All users
# -a x86_64
# -d (no desktop icon)
# Set local package directory -l C:\standalone\cygwin
# System Proxy
# Quiet Mode -q
# Mirror choice -O -s https://mirror.csclub.uwaterloo.ca
{% set versions = ['2.912','2.909'] %}
cygwin:
{% for version, hash in versions %}
  '{{ version }}':
    full_name: 'Cygwin'
    installer: 'https://cygwin.com/setup-x86_64.exe'
    install_flags: '-D -R C:\cygwin64\ -d -l C:\cygwin64\ -q -O -s https://mirror.csclub.uwaterloo.ca/cygwin/'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
