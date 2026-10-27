#!/bin/bash
# Memeriksa kondisi OpenStack: instance, jaringan, flavor, dan image.
# Jalankan setelah memuat kredensial:
#   source /opt/stack/devstack/openrc admin demo

set -e

echo "== Instance =="
openstack server list

echo "== Jaringan =="
openstack network list

echo "== Flavor =="
openstack flavor list

echo "== Image =="
openstack image list
