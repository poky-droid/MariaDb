# MariaDb
# MariaDB Auto Installer (Ubuntu/Debian)

Script sederhana berbasis Bash untuk menginstal dan mengkonfigurasi MariaDB secara otomatis di Ubuntu/Debian.

---

## 🚀 Fitur

* Install MariaDB Server
* Enable & start service otomatis
* Setup password root
* Hardening dasar (hapus user anonim, test DB, dll)
* Siap digunakan untuk development maupun server kecil

---

## 📦 Requirements

* OS: Ubuntu / Debian
* Akses: `sudo` / root
* Koneksi internet

---

## ⚙️ Cara Penggunaan

### 1. Clone Repository

```bash
git https://github.com/poky-droid/MariaDb.git
cd MariaDb
```

### 2. Beri Permission

```bash
chmod +x install_mariadb.sh
```

### 3. Jalankan Script

```bash
./install_mariadb.sh
```

---

## 🔐 Custom Password Root (Opsional)

Secara default password root:

```
root123
```

Untuk mengganti tanpa edit file:

```bash
MYSQL_ROOT_PASSWORD=123456 ./install_mariadb.sh
```

---

## 🔑 Login ke MariaDB

```bash
mysql -u root -p
```

---

## ⚠️ Catatan Penting

* Jangan gunakan password default di production
* Untuk keamanan tambahan, jalankan:

```bash
sudo mysql_secure_installation
```

* Script ini cocok untuk fresh install server

---

## 🧠 Use Case

* Setup cepat database untuk Laravel
* Development environment
* Server LXC ringan

---

