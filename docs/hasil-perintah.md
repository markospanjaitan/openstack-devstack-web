# Hasil Perintah OpenStack

Hasil perintah `openstack` yang dijalankan pada 27 Oktober 2026, diringkas dari keluaran terminal.
Alamat Tailscale tidak dicantumkan.

## Instance (`openstack server list`)

Setelah `openstack server start`, semua instance berstatus **ACTIVE**.

| Nama | Status | Jaringan `private` | Floating IP | Image | Flavor |
| --- | --- | --- | --- | --- | --- |
| web-1 | ACTIVE | 10.0.0.8 | 172.24.4.49 | ubuntu-24.04 | web.mini |
| web-2 | ACTIVE | 10.0.0.20 | 172.24.4.239 | ubuntu-24.04 | web.mini |
| vm-1 | ACTIVE | 10.0.0.24 | - | cirros-0.6.3-x86_64-disk | m1.tiny |
| vm-2 | ACTIVE | 10.0.0.38 | - | cirros-0.6.3-x86_64-disk | m1.tiny |

Sebelum dinyalakan, keempatnya berstatus **SHUTOFF**.

## Jaringan (`openstack network list`)

`shared`, `private`, dan `public`.

## Flavor kustom (`openstack flavor list`)

| Nama | RAM | Disk | vCPU |
| --- | --- | --- | --- |
| web.mini | 1024 MB | 5 GB | 1 |

Flavor lain adalah bawaan DevStack (`m1.tiny`, `m1.small`, dan seterusnya).

## Image (`openstack image list`)

| Nama | Status |
| --- | --- |
| cirros-0.6.3-x86_64-disk | active |
| ubuntu-24.04 | active |
