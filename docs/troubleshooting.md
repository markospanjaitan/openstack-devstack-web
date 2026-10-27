# Troubleshooting

## 1. Horizon tidak bisa dibuka (`ERR_CONNECTION_TIMED_OUT`)

- **Gejala:** dashboard Horizon tidak terbuka di browser dan muncul `ERR_CONNECTION_TIMED_OUT`.
- **Penyebab:** IP VM berganti, sehingga alamat lama tidak lagi dipakai.
- **Perbaikan:** memakai IP Tailscale untuk semua layanan DevStack, bukan IP lokal yang lama.

## 2. Perintah `openstack` gagal: `Missing value auth-url required`

- **Gejala:** perintah seperti `openstack server list` menghasilkan
  `Missing value auth-url required for auth plugin password`.
- **Penyebab:** kredensial OpenStack belum dimuat di sesi terminal.
- **Perbaikan:** muat kredensial dari `openrc` milik DevStack, lalu ulangi perintah.

```bash
source /opt/stack/devstack/openrc admin demo
openstack server list
```

Kredensial hanya berlaku di sesi terminal itu, jadi perintah `source` diulang setiap membuka sesi baru.

## 3. Semua instance berstatus SHUTOFF

- **Gejala:** `openstack server list` menampilkan semua instance `SHUTOFF`.
- **Perbaikan:** nyalakan lagi, lalu periksa statusnya.

```bash
openstack server start web-1 web-2 vm-1 vm-2
sleep 30
openstack server list
```

Skrip yang sama ada di [`scripts/nyalakan-instance.sh`](../scripts/nyalakan-instance.sh).
