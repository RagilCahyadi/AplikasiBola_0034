# Quest 1 AplikasiBola_0034

**Rahmansyah Ragil Cahyadi** (3012310034) **IF-5B**

## Mobile Programming Universitas Internasional Semen Indonesia 2025
Lecturer : **Moch. Nurul Indra Al Fauzan**

## 🎯 Fitur Utama

### 1. **Autentikasi**
- **Login Screen**: Pengguna dapat login dengan email dan password
  - Validasi email (harus mengandung @gmail.com)
  - Validasi password (minimal 6 karakter)
  - Toggle visibility password
  - Link navigasi ke halaman register

- **Register Screen**: Pendaftaran akun baru
  - Input: Nama, Alamat, No. Telepon, Email, Password, Konfirmasi Password
  - Pilihan jenis kelamin (Laki-laki/Perempuan)
  - Validasi lengkap untuk setiap field
  - Link navigasi kembali ke login

### 2. **Home Screen**
- **Top Navigation Bar**: Menampilkan logo aplikasi dan judul "Persib App"
- **Jadwal Pertandingan**: Menampilkan informasi match (tim, tanggal, waktu, lokasi)
- **Menu Utama**: 
  - 👤 Player
  - 📅 Jadwal
  - 📊 Klasemen
  - 🛍️ Merchandise
- **Berita Terbaru**: Daftar berita dan update terkini

### 3. **Manajemen Pemain**
- **Tambah Pemain Baru**: Form lengkap dengan validasi
  - Nama Pemain (tidak boleh kosong)
  - Posisi (Penyerang, Gelandang, Bek, Kiper)
  - Nomor Punggung (angka, 1-99)
  - Kewarganegaraan (text)
  - Usia Pemain (10-50 tahun)
  - Tinggi Badan (dalam cm, konversi otomatis ke meter)
  - Jenis Kelamin (Laki-laki/Perempuan - wajib dipilih)

- **Detail Data Pemain**: Menampilkan informasi pemain dengan format rapi
  - Semua data ditampilkan dalam format yang mudah dibaca
  - Tinggi otomatis dikonversi ke meter (cm ÷ 100)

## 📋 Validasi Form

### Login & Register
- ✅ Email validation (format & domain @gmail.com)
- ✅ Password strength (minimal 6 karakter)
- ✅ Field required validation
- ✅ Konfirmasi password matching

### Tambah Pemain
- ✅ Nama: tidak boleh kosong
- ✅ Posisi: harus sesuai pilihan (Penyerang, Gelandang, Bek, Kiper)
- ✅ Nomor Punggung: hanya angka, tidak boleh kosong
- ✅ Kewarganegaraan: tidak boleh kosong
- ✅ Usia: 10-50 tahun
- ✅ Tinggi: hanya angka (dalam cm)
- ✅ Jenis Kelamin: wajib dipilih salah satu

## 🎨 Desain & UI
- **Material Design** dengan Flutter
- **Responsive Layout** untuk berbagai ukuran layar
- **Custom Navigation** dengan proper back button handling
- **Form Validation** dengan error messages yang jelas
- **SingleChildScrollView** untuk menangani keyboard popup

## 📱 Demo Penggunaan

https://github.com/RagilCahyadi/AplikasiBola_0034/blob/main/assets/videos/AplikasiBola_0034.webm

### Alur Penggunaan:
1. **Splash/Login** → Masukkan email & password
2. **Home Screen** → Lihat jadwal & menu utama
3. **Tambah Pemain** → Isi form dengan data pemain
4. **Detail Pemain** → Lihat informasi pemain yang telah ditambahkan

## 🛠️ Tech Stack
- **Framework**: Flutter
- **Language**: Dart
- **State Management**: setState
- **Navigation**: Navigator
- **Form Validation**: FormField & TextFormField

## 📦 Struktur Folder
```
lib/
├── main.dart                    # Entry point aplikasi
├── login_screen.dart            # Screen login
├── register_screen.dart         # Screen registrasi
├── home_screen.dart             # Screen utama
├── addplayer_screen.dart        # Screen tambah pemain
└── player_detail_screen.dart    # Screen detail pemain
```

## 🚀 Cara Menjalankan

```bash
# Clone repository
git clone <repository-url>

# Install dependencies
flutter pub get

# Run aplikasi
flutter run
```
