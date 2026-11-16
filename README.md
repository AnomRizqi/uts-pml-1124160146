# UTS Pemrograman Mobile – Aplikasi Profil Mahasiswa

Aplikasi Profil Mahasiswa merupakan aplikasi Android yang dibuat menggunakan Flutter dan Dart sebagai bagian dari Ujian Tengah Semester (UTS) mata kuliah Pemrograman Mobile.

Aplikasi ini dibuat untuk menampilkan informasi pribadi mahasiswa serta menyediakan beberapa fitur seperti login, edit profil, halaman About, dan pengaturan tema gelap.

## Identitas Mahasiswa

| Keterangan | Data |
|---|---|
| Nama | Anom Rizqi |
| NIM | 1124160146 |
| Program Studi | Teknik Informatika |
| Kelas | TI SE1 |
| Mata Kuliah | Pemrograman Mobile |
| Framework | Flutter |
| Bahasa Pemrograman | Dart |

## Fitur Aplikasi

Berikut beberapa fitur yang tersedia di dalam aplikasi:

1. **Login** – Halaman untuk masuk ke aplikasi menggunakan username dan password.
2. **Profil Mahasiswa** – Menampilkan foto, nama, NIM, program studi, kelas, dan informasi kontak.
3. **Edit Profil** – Mengubah informasi seperti nama, email, nomor HP, GitHub, dan bio.
4. **About** – Menampilkan informasi hobi, keahlian, dan riwayat pendidikan.
5. **Dark Mode** – Mengubah tampilan aplikasi dari tema terang ke tema gelap.
6. **Bottom Navigation** – Memudahkan pengguna berpindah antara halaman Profil dan About.
7. **Drawer Menu** – Menyediakan navigasi tambahan dan pengaturan aplikasi.
8. **Logout** – Keluar dari halaman utama dan kembali ke halaman login.

## Teknologi yang Digunakan

- Flutter
- Dart
- Material Design 3
- Visual Studio Code
- Android SDK

## Struktur Folder

```text
soal2_profil_app/
│
├── assets/
│   └── images/
│       └── foto_profil
│
├── lib/
│   ├── main.dart
│   │
│   ├── models/
│   │   └── profile.dart
│   │
│   ├── screens/
│   │   ├── login_page.dart
│   │   ├── profile_page.dart
│   │   ├── edit_profile_page.dart
│   │   └── about_page.dart
│   │
│   └── widgets/
│
├── android/
├── test/
├── pubspec.yaml
└── README.md
```

## Tampilan Aplikasi

### 1. Halaman Login
Menampilkan form login untuk masuk ke aplikasi.

![Login Page](screenshots/login.png)

### 2. Halaman Profil
Menampilkan informasi pribadi dan kontak mahasiswa.

![Profile Page](screenshots/profile.png)

### 3. Halaman Edit Profil
Digunakan untuk mengubah informasi profil mahasiswa.

![Edit Profile](screenshots/edit-profile.png)

### 4. Halaman About
Menampilkan hobi, keahlian, dan riwayat pendidikan.

![About Page](screenshots/about.png)

### 5. Dark Mode
Menampilkan aplikasi dengan tema gelap.

![Dark Mode](screenshots/dark-mode.png)

## Informasi Login

Gunakan akun berikut untuk masuk ke aplikasi:

| Keterangan | Akun |
|---|---|
| Username | anom |
| Password | 123456 |

**Catatan:** Login masih menggunakan data yang ditentukan langsung di dalam kode program dan belum terhubung dengan database.

## Cara Menjalankan Aplikasi

Pastikan Flutter dan Android SDK sudah terpasang di komputer.

1. Clone repository:

```bash
git clone LINK_REPOSITORY_GITHUB
```

2. Masuk ke folder project:

```bash
cd uts-pml-1124160146/soal2_profil_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Jalankan aplikasi:

```bash
flutter run
```

## Download APK

Aplikasi juga tersedia dalam bentuk APK yang bisa diunduh melalui GitHub Releases.

**Download APK:** [Klik di sini](LINK_GITHUB_RELEASES)

## Video Presentasi

Video presentasi UTS Pemrograman Mobile dapat dilihat melalui link berikut:

**YouTube:** [Klik di sini](LINK_VIDEO_YOUTUBE)

## Repository

Source code aplikasi dapat dilihat melalui repository GitHub berikut:

**GitHub:** [uts-pml-1124160146](LINK_REPOSITORY_GITHUB)

---

Dibuat oleh **Anom Rizqi**  
NIM **1124160146**  
Program Studi Teknik Informatika  
UTS Pemrograman Mobile – 2026
