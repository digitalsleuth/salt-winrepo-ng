# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This software definition will only work in versions of Salt newer than
# 2015.8.2. In version 2015.8.2 we added the `use_scheduler` option which
# allowed us to launch the installer using the Windows task manager.
# This option is not available in earlier versions of Salt. So, while this
# software definition will allow you to install versions of Salt older than
# 2015.8.2 you will not be able to use pkg.install to upgrade Salt again. You
# will have to upgrade Salt through another means.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
salt-minion-py3:
  {% for version in ['3005.1-5','3005.1-4','3005.1-3','3005.1-2','3005.1-1','3005','3004.2-1','3004.2','3004.1-1','3004.1'] %}
  '{{ version }}':
    full_name: 'Salt Minion {{ version }} (Python 3)'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://repo.saltproject.io/windows/Salt-Minion-{{ version }}-Py3-AMD64-Setup.exe'
    {% else %}
    installer: 'https://repo.saltproject.io/windows/Salt-Minion-{{ version }}-Py3-x86-Setup.exe'
    {% endif %}
    {% raw %}
    # install_flags: "/S /master={{ salt['pillar.get']('salt:master', 'salt.domain.tld') }} /minion-id={{ salt['pillar.get']('salt:minion:ids:' ~ grains['host'] }}"
    {% endraw %}
    install_flags: '/S'
    uninstaller: 'C:\Program Files\Salt Project\Salt\uninst.exe'
    uninstall_flags: '/S'
    msiexec: False
    use_scheduler: True
    reboot: False
  {% endfor %}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Versions of Salt that contain CVE's have been moved to an archive at:
# archive.repo.saltstack.com/windows. The ability to install those versions
# using winrepo has been removed.
# An uninstall only definition will remain here so the packages will show up
# correctly in `pkg.list_pkgs` and to allow for removal using `pkg.remove`
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {%
      for version in [
          '3003.5-1',
          '3002.9-1',
      ]
  %}
  '{{ version }}':
    full_name: 'Salt Minion {{ version }} (Python 3)'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://repo.saltproject.io/windows/Salt-Minion-{{ version }}-Py3-AMD64-Setup.exe'
    {% else %}
    installer: 'https://repo.saltproject.io/windows/Salt-Minion-{{ version }}-Py3-x86-Setup.exe'
    {% endif %}
    {% raw %}
    # install_flags: "/S /master={{ salt['pillar.get']('salt:master', 'salt.domain.tld') }} /minion-id={{ salt['pillar.get']('salt:minion:ids:' ~ grains['host'] }}"
    {% endraw %}
    install_flags: '/S'
    uninstaller: 'C:\salt\uninst.exe'
    uninstall_flags: '/S'
    msiexec: False
    use_scheduler: True
    reboot: False
  {% endfor %}

  {%
      for version in [
          '3003.4-1',
          '3003.3',
          '3003.2',
          '3003.1',
          '3003',
          '3002.8-1',
          '3002.7',
          '3002.6',
          '3002.5',
          '3002.4',
          '3002.3',
          '3002.2',
          '3002.1',
          '3002',
      ]
  %}
  '{{ version }}':
    skip_urltest: True
    full_name: 'Salt Minion {{ version }} (Python 3)'
    uninstaller: 'C:\salt\uninst.exe'
    uninstall_flags: '/S'
    use_scheduler: True
  {% endfor %}
