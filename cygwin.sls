# Install from internet -D
# Root directory: -R C:\cygwin64
# All users
# -a x86_64
# -d (no desktop icon)
# Set local package directory -l C:\standalone\cygwin
# System Proxy
# Quiet Mode -q
# Mirror choice -O -s https://mirror.csclub.uwaterloo.ca

cygwin:
  '2.909':
    full_name: 'Cygwin'
    installer: 'https://cygwin.com/setup-x86_64.exe'
    source_hash: sha256=b9219acd1241ffa4d38e19587f1ccc2854f951e451f3858efc9d2e1fe19d375c
    install_flags: '-D -R C:\cygwin64\ -d -l C:\cygwin64\ -q -O -s https://mirror.csclub.uwaterloo.ca/cygwin/'
    msiexec: False
    locale: en_US
    reboot: False
