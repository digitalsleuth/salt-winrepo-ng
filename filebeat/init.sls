# Software Definition File for Elasticsearch Filebeat

# Uses the following associated scripts
# - install.cmd
# - install.ps1
# - remove.cmd

{% set versions = ['8.6.0',
                   '8.5.3', '8.5.2', '8.5.1', '8.5.0',
                   '8.4.3', '8.4.2', '8.4.1', '8.4.0',
                   '8.3.3', '8.3.2', '8.3.1', '8.3.0',
                   '8.2.3', '8.2.2', '8.2.1', '8.2.0',
                   '8.1.3', '8.1.2', '8.1.1', '8.1.0',
                   '8.0.1', '8.0.0',
                   '7.17.8', '7.17.7', '7.17.6', '7.17.5', '7.17.4', '7.17.3', '7.17.2', '7.17.1', '7.17.0',
                   '7.16.3', '7.16.2', '7.16.1', '7.16.0',
                   '7.15.2', '7.15.1', '7.15.0',
                   '7.14.2', '7.14.1', '7.14.0',
                   '7.13.4', '7.13.3', '7.13.2', '7.13.1', '7.13.0',
                   '7.12.1', '7.12.0',
                   '7.11.2', '7.11.1', '7.11.0',
                   '7.10.2', '7.10.1', '7.10.0',
                   '7.9.3', '7.9.2', '7.9.1', '7.9.0',
                   '7.8.1', '7.8.0',
                   '7.7.1', '7.7.0',
                   '7.6.2', '7.6.1', '7.6.0',
                   '7.5.2', '7.5.1', '7.5.0',
                   '7.4.2', '7.4.1', '7.4.0',
                   '7.3.2', '7.3.1', '7.3.0',
                   '7.2.1', '7.2.0',
                   '7.1.1',
                   '6.8.2', '6.8.1', '6.8.0'] %}

filebeat:
{% for version in versions %}
  '{{ version }}':
    full_name: 'Filebeat {{ version }}'
    installer: 'salt://win/repo-ng/salt-winrepo-ng/_/filebeat/install.cmd'
    install_flags: {{ version }}
    uninstaller: 'salt://win/repo-ng/salt-winrepo-ng/_/filebeat/remove.cmd'
    cache_dir: True
{% endfor %}
