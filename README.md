### [Outfit Online Shop]

**Deskripsi:**

Aplikasi website ini adalah platform e-commerce yang khusus dirancang untuk penjualan pakaian dan aksesoris selain itu Website ini juga menyajikan berbagai fitur, mulai dari fitur register, admin Panel, hingga Manajemen Produk melalui Admin

**Fitur Utama:**

- Pencarian dan Penelusuran Produk:
Pengguna dapat dengan mudah mencari produk berdasarkan kategori, merek, atau kriteria lainnya.
- Detail Produk:
Setiap produk memiliki halaman detail yang mencakup informasi rinci, termasuk deskripsi, harga, dan stok.
- Autentikasi Pengguna:
Terdapat fitur login dan register yang memungkinkan pengguna membuat dan mengelola akun mereka.
-Area Admin:
Halaman admin memberikan kontrol penuh terhadap produk dan pengguna. Admin dapat melakukan operasi CRUD pada produk, serta melihat daftar pengguna terdaftar.

**Teknologi yang Digunakan:**

Backend:
-Framework: Laravel
-Database: MySQL
-Bahasa Pemrograman: PHP

-Frontend:
-HTML
-CSS
-JavaScript
-Blade (Laravel)
-open-admin.org

### Cara Menjalankan Proyek

**Langkah-langkah:**

1. **Clone Repository:**
   ```bash
   [git clone https://github.com/username/nama-repository.git](https://github.com/BramantioSYahrulAlam/OnlineShop-interview.git)
   ```

2. **Masuk ke Direktori:**
   ```bash
   cd nama-repository
   ```

3. **Instal Dependencies:**
   ```bash
   composer install
   ```

4. **Setup Environment:**
   - Duplikat file `.env.example` menjadi `.env`
     atau bisa menjalankan perintah:
cp .env.example .env
     
   - Konfigurasi database didalam file .env
     Ubah DB_DATABASE menjadi : tokoonline
     
   - Buat Database di PhpmyAdmin dengan penamaan 'tokoonline'
     lalu buka database yang baru di buat dan import database yang bernama 'tokoonline.sql' yang berada di file paling luar di folder ini



5. **Generate Kunci Aplikasi:**
   ```bash
   php artisan key:generate
   ```


6. **Jalankan Server Pembangunan:**
   ```bash
   php artisan serve
   ```

lalu klik link url yang mengarah ke website



### Laporan Masalah (Issue)

1. Masalah yang terjadi adalah ketika login sebagai admin, dan memasukan email dan password admin, ketika submit terkadang diarahkan kembali ke halaman login user
   Solusi:
   Klik dan login kembali login sebagai admin dan akan langsung diarahkan ke dashboard admin
2.Login admin di halaman User. Website ini awalnya dirancang dengan multiple login yang di sorting melalui role nya apakah admin atau user, maka akan diarahkan ke tujuan nya masing masing,
  Karena Tools dari open-admin.org juga menyediakan halaman login admin maka ketika login admin di halaman login user maka akan di arahkan juga ke halaman login admin bawaan dari tools jadi 
  ketika diarahkan maka masukan saja kembali username dan password, dan ketika sudah submit di arahkan ke rute yang tidak sesuai semisal ke home, klik logout dan klik ke login admin
3.Jika terjadi masalah saat ekstraksi project pastikan PHP berada di versi 7.4 atau versi lebih baru

### Daftar yang telah terdaftar sebagai User dan Admin (Issue)
Akun User: user@gmail.com
Password: user123

Jika ingin menggunakan akunn lain maka harus register terlebih dahulu

Akun Admin: admin
password: admin
