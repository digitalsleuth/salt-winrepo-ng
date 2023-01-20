{% set versions = [('7.1.0-57','7.1.0.57','7.1.0','2022-12-30')] %}
{% set PROGRAM_FILES = "%ProgramFiles%" %}

imagemagick:
  {% for dl_version, version, folder, date in versions %}
  '{{ version }}':
    full_name: 'ImageMagick {{ dl_version }} Q16-HDRI (64-bit) ({{ date }})'
    installer: https://imagemagick.org/archive/binaries/ImageMagick-{{ dl_version }}-Q16-HDRI-x64-dll.exe
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /MERGETASKS=!DESKTOPICON,!RUNCODE'
    uninstaller: '{{ PROGRAM_FILES }}\ImageMagick-{{ folder }}-Q16-HDRI\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
  {% endfor %}
