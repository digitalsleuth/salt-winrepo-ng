{% set version_data = {
                        '14.51.36247': {
                                         '0': '6ad63323-a427-4c58-8464-9f1f19f62359/F0BAB33A302B3CDB2E11113760D016F54FD3D2632C65BA7834FAC4F0ABD7F1A3'
                                       },
                        '14.11.25325': {
                                         '0': '11100229/78c1e864d806e36f6035d80a0e80399e'
                                       }
                      }
%}
ms-vcpp-2017-redist_x86:
{% for major_version in version_data %}
{% for minor_version in version_data[major_version] %}
{% set subpath = version_data[major_version][minor_version] %}
   '{{ major_version }}.{{ minor_version }}':
      full_name: 'Microsoft Visual C++ v14 Redistributable (x86) - {{ major_version }}'
      installer: 'https://download.visualstudio.microsoft.com/download/pr/{{ subpath }}/VC_redist.x86.exe'
      install_flags: '/quiet /norestart'
      uninstaller: 'https://download.visualstudio.microsoft.com/download/pr/{{ subpath }}/VC_redist.x86.exe'
      uninstall_flags: '/uninstall /quiet /norestart'
      msiexec: False
      reboot: False
{% endfor %}
{% endfor %}
