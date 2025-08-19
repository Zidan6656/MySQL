# Mini Project MySQL: Sistem Informasi Rumah Sakit / Hospital Information System

**Bahasa Indonesia | English below**

---

## Deskripsi

Ini adalah mini project basis data MySQL untuk simulasi sistem informasi rumah sakit.  
Proyek ini berisi struktur database, data contoh, prosedur, dan trigger yang dapat digunakan untuk pembelajaran atau portofolio.

---

## Description (English)

This is a MySQL database mini project simulating a hospital information system.  
The project contains database structure, sample data, procedures, and triggers for learning or portfolio purposes.

---

## Fitur Database

- Tabel data **administrator**, **dokter**, **pasien**, **obat**, dan relasi terkait  
- Prosedur untuk simulasi transaksi database  
- Trigger untuk stok obat setiap transaksi  
- Contoh data (dummy data) di beberapa tabel

---

## Database Features (English)

- Tables for **administrator**, **doctor**, **patient**, **medicine**, and related relations  
- Procedures for database transaction simulation  
- Triggers for updating medicine stock after each transaction  
- Example (dummy) data in several tables

---

## File

- `rumahsakit.sql` : File SQL hasil export dari phpMyAdmin. Berisi seluruh struktur tabel, prosedur, trigger, relasi, dan data contoh.

---

## File (English)

- `rumahsakit.sql` : SQL file exported from phpMyAdmin. Contains all table structures, procedures, triggers, relations, and sample data.

---

## Cara Menggunakan

1. **Siapkan MySQL & phpMyAdmin**  
   Pastikan MySQL dan phpMyAdmin sudah terinstall di komputer kamu.

2. **Import File SQL**  
   - Login ke phpMyAdmin  
   - Buat database baru, misal: `rumahsakit`  
   - Pilih database tersebut, lalu klik menu **Import**  
   - Pilih file `rumahsakit.sql` lalu klik **Go**

3. **Cek Struktur & Data**  
   Setelah import, cek tabel-tabel dan data sudah masuk ke database.

---

## How to Use (English)

1. **Prepare MySQL & phpMyAdmin**  
   Make sure you have MySQL and phpMyAdmin installed on your computer.

2. **Import SQL File**  
   - Log in to phpMyAdmin  
   - Create a new database, e.g.: `rumahsakit`  
   - Select the database, then click the **Import** menu  
   - Choose the `rumahsakit.sql` file and click **Go**

3. **Check Tables & Data**  
   After import, check that tables and sample data are available in the database.

---

## Daftar Tabel Utama

| Nama Tabel        | Deskripsi Singkat                                  |
|-------------------|----------------------------------------------------|
| administrator     | Data admin rumah sakit                             |
| dokter            | Data dokter                                        |
| pasien            | Data pasien                                        |
| obat              | Data obat yang tersedia                            |
| pasien_dokter     | Relasi pasien dengan dokter & resep                |
| transaksi_obat    | Data transaksi pembelian obat oleh pasien          |
| daftar            | Relasi pendaftaran pasien ke admin                 |
| dokter_admin      | Relasi dokter dan admin                            |

---

## Main Tables (English)

| Table Name        | Description                                        |
|-------------------|----------------------------------------------------|
| administrator     | Hospital admin data                                 |
| dokter            | Doctor data                                         |
| pasien            | Patient data                                        |
| obat              | Available medicines data                            |
| pasien_dokter     | Relation between patients and doctors & prescriptions|
| transaksi_obat    | Patients' medicine purchase transactions            |
| daftar            | Patient registration to admin                       |
| dokter_admin      | Doctor and admin relation                           |

---

## Prosedur & Trigger

- **Prosedur:**  
  Terdapat contoh prosedur transaksi untuk memasukkan dan mengupdate data pasien.

- **Trigger:**  
  Terdapat trigger otomatis mengurangi stok obat setiap ada transaksi obat.

---

## Procedures & Triggers (English)

- **Procedures:**  
  Contains example procedures for inserting and updating patient data.

- **Trigger:**  
  Automatic trigger for reducing medicine stock after each transaction.

---

## Video Tutorial / dokumentasi

Kamu bisa menonton penjelasan lengkap dan dokumentasi pembuatan database ini di YouTube:


[![Tonton Video Dokumentasi](https://img.youtube.com/vi/D5M8y6vJb5w/0.jpg)](https://www.youtube.com/watch?v=D5M8y6vJb5w)

---

## Video Tutorial / documentation (English)

You can watch a complete explanation and documentation of the creation of this database on YouTube:


[![Watch Documentary Video](https://img.youtube.com/vi/D5M8y6vJb5w/0.jpg)](https://www.youtube.com/watch?v=D5M8y6vJb5w)
---

## Catatan

- Project ini hanya contoh sederhana untuk pembelajaran database.
- Kamu bisa mengembangkan/memodifikasi sesuai kebutuhan.

---

## Notes (English)

- This project is a simple example for learning database concepts.
- You can further develop or modify it as needed.

---

> **Author:** Zidan6656  
> **Sumber/Source:** Mandiri, tugas kuliah/pribadi / Self-made, college/personal project  
> **Lisensi/License:** Bebas digunakan untuk pembelajaran / Free to use for learning purposes
