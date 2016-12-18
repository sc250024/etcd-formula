# -*- coding: utf-8 -*-
# vim: ft=yaml

{% from "etcd/map.jinja" import etcd_settings with context -%}

include:
  - etcd.install

etcd-{{ grains['init'] }}-override:
  file.managed:
    - name: {{ etcd_settings.init_override_file }}
    - source: salt://etcd/files/etcd.override.static.jinja
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
    - watch_in:
        service: etcd-service

