{% set versions = [('12.12.10.1','042-32480-20230911-CC326CC1-E6C1-4F7C-A717-18493F59FE2E','{7184CA74-6FCD-4BAE-A8A9-79ED80E53CE6}'),
                   ('12.12.8.2','032-43416-20230329-5563B273-069B-4902-8997-39A886456E7B','{C15AE61F-A124-494D-AA6A-117FD0A0A66C}'),
                   ('12.11.3.17','001-97787-20210421-F0E5A3C2-A2C9-11EB-A40B-A128318AD179','{653C59E1-B78D-4D82-9259-C14DFD9F6EFC}')] %}

itunes:
{% for version, dl_guid, uninstall_guid in versions %}
  '{{ version }}':
    full_name: 'iTunes'
    installer: 'https://secure-appldnld.apple.com/itunes12/{{ dl_guid }}/iTunes64Setup.exe'
    install_flags: '/quiet /qn ALLUSERS=1 /norestart'
    uninstall_flags: '/qn /norestart /x {{ uninstall_guid }}'
    uninstaller: 'msiexec.exe'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
