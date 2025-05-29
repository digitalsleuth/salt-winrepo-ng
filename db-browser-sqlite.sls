# Uninstall Key - HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\_GUID_\InstallProperties

{% set versions = [
                   ('3.13.1','3.13.1','{541AE182-7C1D-426C-8155-4867303B75A4}'),
                   ('3.13.0','3.13.99','{84FA58C5-3D4A-4BDB-8901-467DD1B78E60}'),
] %}

db-browser-sqlite:
{% for version, display_version, guid in versions %}
  '{{ display_version }}':
    full_name: 'DB Browser for SQLite'
    installer: 'https://download.sqlitebrowser.org/DB.Browser.for.SQLite-v{{ version }}-win64.msi'
    install_flags: 'SHORTCUT_SQLITE_PROGRAMMENU=1 SHORTCUT_SQLCIPHER_PROGRAMMENU=1 /quiet /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x{{ guid }} /qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}
