Oracle Database
===============

Ansible Role to install and configure Oracle Database.

Requirements
------------

Download installers defined in *files* directory depending on your [release].

Role Variables
--------------

- **version**: 11g # supported versions: [11g]
- **release**: 11.2.0.4 # supported releases: [11.2.0.4]
- **edition**: SE # supported editions: [SE,EE]

Dependencies
------------

None.

Example Playbook
----------------

    - name: oracle database 11g (11.2.0.4)
      hosts: 127.0.0.1

      roles:
        - role: oracle-database
          version: 11g
          release: 11.2.0.4
          edition: SE

License
-------

MIT

Author Information
------------------

[http://jeqo.github.io/](http://jeqo.github.io/)
