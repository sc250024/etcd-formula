# -*- coding: utf-8 -*-
# vim: ft=yaml

python-etcd:
  pip.installed

etcd-salt-conf:
  file.managed:
    - name: /etc/salt/master.d/etcd.conf
    - source: salt://etcd/files/salt/etcd.conf.jinja
    - template: jinja

#restart salt master

