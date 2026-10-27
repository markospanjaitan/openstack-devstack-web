# ☁️ OpenStack DevStack — Membuat Instance Web

![OpenStack](https://img.shields.io/badge/OPENSTACK-DEVSTACK-ED1944?style=for-the-badge&logo=openstack&logoColor=white)
![VMware](https://img.shields.io/badge/VMWARE-VIRTUALISASI-607078?style=for-the-badge&logo=vmware&logoColor=white)
![Tailscale](https://img.shields.io/badge/TAILSCALE-AKSES%20JARAK%20JAUH-242424?style=for-the-badge&logo=tailscale&logoColor=white)

> Membangun cloud pribadi dengan OpenStack (DevStack) di VMware, lalu meluncurkan instance lewat dashboard Horizon.

**Author:** Markos Panjaitan
**Status:** 🚧 Dalam pengerjaan

Proyek ini bagian dari [jalur belajar System Administrator](https://github.com/markospanjaitan) saya.

---

## 📷 Screenshot

| Login Horizon | Ringkasan Proyek | Luncurkan Instance |
| :---: | :---: | :---: |
| <img src="images/01-login-horizon.png" width="300"> | <img src="images/02-ringkasan-proyek.png" width="300"> | <img src="images/03-luncurkan-instance.png" width="300"> |

| Daftar Instance | Konsol vm-1 | Halaman Web |
| :---: | :---: | :---: |
| <img src="images/04-daftar-instance.png" width="300"> | <img src="images/05-konsol-vm-1.png" width="300"> | <img src="images/06-halaman-web.png" width="300"> |

---

## 🧩 Ringkasan

| Komponen | Keterangan |
| --- | --- |
| Platform | OpenStack lewat DevStack, dijalankan di VMware |
| Dashboard | Horizon (proyek `demo`) |
| Image | `cirros-0.6.3-x86_64-disk` (QCOW2, 20,69 MB) |
| Flavor | `m1.tiny` |
| Instance | `vm-1` dan `vm-2` |
| Key pair | `kunci1` |
| Akses jarak jauh | Tailscale |

## 🛠️ Yang dikerjakan

1. Memasang OpenStack dengan DevStack di VMware.
2. Membuka dashboard Horizon dan memeriksa kuota proyek `demo` (10 instance, 20 vCPU, 50 GB RAM).
3. Meluncurkan `vm-1` dan `vm-2` dari image CirrOS dengan flavor `m1.tiny` dan key pair `kunci1`.
4. Memeriksa konsol `vm-1`: proses boot selesai dan prompt login muncul.

> Tangkapan layar daftar instance diambil saat keduanya masih berstatus *Build*.

## 🐞 Masalah yang ditemui

| Masalah | Penyebab | Perbaikan |
| --- | --- | --- |
| Horizon tidak bisa dibuka (`ERR_CONNECTION_TIMED_OUT`) | IP VM berganti, sehingga alamat lama tidak lagi dipakai | Memakai IP Tailscale untuk semua layanan DevStack |

## 🔒 Catatan keamanan

- Password, token, dan file `local.conf` tidak diunggah ke repo ini.
- Alamat IP host pada tangkapan layar sudah disamarkan.
