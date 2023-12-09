{% set versions = ['0.5.0'] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

exif-extractor:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'ExifExtractor {{ version }}'
    installer: https://s3.amazonaws.com/cf.exif-extractor/ExifExtractor+Setup+{{ version }}.exe
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\ExifExtractor\Uninstall ExifExtractor.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
