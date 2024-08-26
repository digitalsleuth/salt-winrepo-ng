{% set versions = [('4.1.13','{D86F0E67-2C02-4DFF-A46A-6871BA809A51}'),
                   ('4.1.7','{A09D951F-4BA3-4383-97B3-D1B91835E779}'),
                   ('4.1.2','{E6AD67BB-1C33-4AB3-A387-E0D48137AB70}'),
                   ('4.1.1','{9395F41D-0F80-432E-9A59-B8E477E7E163}')
                  ] %}

openoffice:
  {% for version, GUID in versions %}
  '{{ version }}':
    full_name: 'OpenOffice {{ version }}'
    installer: 'https://downloads.sourceforge.net/project/openofficeorg.mirror/{{ version }}/binaries/en-US/Apache_OpenOffice_{{ version }}_Win_x86_install_en-US.exe'
    install_flags: '/S'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {{ GUID }} /norestart'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}

#
# for other languages replace the two occurrences of 'en-US'
# in the download URL with your local two or four letter code below:
#
# 'el', 'en-GB', 'es', 'eu', 'ca',
# 'ca-XR', 'ca-XV', 'cs', 'ru', 'zh-CN',
# 'zh-TW', 'vi', 'ta', 'th', 'tr', 'sk',
# 'sl', 'sr', 'sv', 'pl', 'pt', 'pt-BR',
# 'nb', 'nl', 'lt', 'km', 'ko', 'ja',
# 'it', 'he', 'hi', 'hu', 'gd', 'gl',
# 'fi', 'fr', 'da', 'de', 'bg', 'ast'
#
