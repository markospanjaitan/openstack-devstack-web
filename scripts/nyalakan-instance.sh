#!/bin/bash
# Menyalakan semua instance setelah VM DevStack dihidupkan ulang
# (instance berstatus SHUTOFF), lalu menampilkan statusnya.
# Jalankan setelah memuat kredensial:
#   source /opt/stack/devstack/openrc admin demo

set -e

openstack server start web-1 web-2 vm-1 vm-2
sleep 30
openstack server list
