{% set versions = [("7.40.00.8622","7.40"),
                   ("7.37.00.8578","7.37"),
                   ("7.35.00.8564","7.35"),
                   ("7.31.00.8528","7.31"),
                   ("7.30.00.8482","7.30"),
                   ("7.25.03.8473","7.25"),
                   ("7.25.00.8449","7.25"),
                   ("7.21.00.8382","7.21"),
                   ("7.09.01.8132","7.09"),
                   ("7.03.00.7939","7.03"),
                   ("7.02.01.7905","7.02"),
                   ("7.01.00.7839","7.01")] %}

free-hex-editor-neo:
{% for long, short in versions %}
  '{{ long }}':
    full_name: "HHD Software Free Hex Editor Neo {{ short }}"
    installer: https://www.hhdsoftware.com/download/free-hex-editor-neo.exe
    install_flags: -silent -machine
    uninstaller: 'C:\Program Files\HHD Software\Hex Editor Neo\Setup\setup.exe'
    uninstall_flags: -uninstall -silent
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
