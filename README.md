# 🏥 Mini Project MySQL: Sistem Informasi Rumah Sakit / Hospital Information System

> **English version: see below**

---

**Author:** Zidan6656  
**Source:** Self-made, college/personal project  
**License:** Free to use for learning purposes  

---

## 📖 Table of Contents
- [Deskripsi (Bahasa Indonesia)](#-deskripsi-bahasa-indonesia)
- [Description (English)](#-description-english)
- [Fitur Database](#-fitur-database--database-features)
- [File](#-file)
- [Cara Menggunakan / How to Use](#-cara-menggunakan--how-to-use)
- [Daftar Tabel Utama](#-daftar-tabel-utama--main-tables)
- [Prosedur & Trigger](#-prosedur--trigger--procedures--triggers)
- [ERD](#-erd-entity-relationship-diagram)
- [Video Dokumentasi](#-video-dokumentasi--documentation-video)
- [Catatan](#-catatan--notes)

---

## 📌 Deskripsi (Bahasa Indonesia)

Ini adalah mini project basis data MySQL untuk simulasi sistem informasi rumah sakit.  
Proyek ini berisi struktur database, data contoh, prosedur, dan trigger yang dapat digunakan untuk pembelajaran atau portofolio.

<details>
<summary>📖 Klik untuk melihat versi English</summary>

### 📌 Description (English)
This is a MySQL database mini project simulating a hospital information system.  
The project contains database structure, sample data, procedures, and triggers for learning or portfolio purposes.

</details>

---

## 🗂 Fitur Database / Database Features
- Tabel data **administrator**, **dokter**, **pasien**, **obat**, dan relasi terkait  
- Prosedur untuk simulasi transaksi database  
- Trigger untuk stok obat setiap transaksi  
- Contoh data (dummy data) di beberapa tabel  

---

## 📂 File
- `rumahsakit.sql` → SQL dump from phpMyAdmin (tables, procedures, triggers, relations, sample data).  
- `erd.png` → Entity Relationship Diagram (see below).  
- (Opsional) `query_examples.sql` → Sample SQL queries.  

---

## ⚡ Cara Menggunakan / How to Use
1. Siapkan MySQL & phpMyAdmin.  
2. Buat database baru, misal `rumahsakit`.  
3. Import file `rumahsakit.sql` via phpMyAdmin (menu **Import**).  
4. Cek tabel & data sudah masuk ke database.  

---

## 📊 Daftar Tabel Utama / Main Tables

| Tabel / Table    | Deskripsi / Description                          |
|------------------|--------------------------------------------------|
| administrator    | Data admin rumah sakit / Hospital admin data      |
| dokter           | Data dokter / Doctor data                         |
| pasien           | Data pasien / Patient data                        |
| obat             | Data obat / Medicine data                         |
| pasien_dokter    | Relasi pasien-dokter & resep / Patient-doctor link|
| transaksi_obat   | Transaksi pembelian obat / Medicine transactions  |
| daftar           | Relasi pasien ke admin / Patient registration     |
| dokter_admin     | Relasi dokter-admin / Doctor-admin relation       |

---

## 🔄 Prosedur & Trigger / Procedures & Triggers
- **Stored Procedures** → contoh transaksi insert/update data pasien.  
- **Trigger** → otomatis mengurangi stok obat setelah transaksi obat.  

---

## 🖼️ ERD (Entity Relationship Diagram)

<details>
<summary>📊 Klik untuk melihat ERD</summary>

![ERD Rumah Sakit](Screenshots/ERD.png)

</details>

---

## 🎥 Video Dokumentasi / Documentation Video
Klik thumbnail berikut untuk menonton penjelasan lengkap di YouTube:

[![Tonton Video Dokumentasi](https://img.youtube.com/vi/D5M8y6vJb5w/0.jpg)](https://www.youtube.com/watch?v=D5M8y6vJb5w)

---

## 📝 Catatan / Notes
- Project ini adalah contoh sederhana untuk pembelajaran database.  
- Bisa dikembangkan lebih lanjut sesuai kebutuhan.  


---

<details>
<summary><b>English Version (click to expand)</b></summary>

## Description

This is a MySQL database mini project simulating a hospital information system.  
It contains the database structure, sample data, procedures, and triggers for learning or portfolio use.

### Database Features
- Tables for **administrator**, **doctor**, **patient**, **medicine**, and relations
- Procedures for database transactions & medicine stock triggers
- Example (dummy) data in several tables

### File
- `rumahsakit.sql`: SQL export file from phpMyAdmin.

### How to Use
1. **Prepare MySQL & phpMyAdmin**
2. **Import SQL file** into a new database named `rumahsakit`
3. **Check the tables & data** in the database

### Video Documentary
[![Watch Documentary Video](https://img.youtube.com/vi/D5M8y6vJb5w/0.jpg)](https://www.youtube.com/watch?v=D5M8y6vJb5w)
Or : https://www.youtube.com/watch?v=D5M8y6vJb5w
### Notes
- This project is for learning purposes. Feel free to develop it further.

</details>

---

> **Author:** Zidan6656  
> **Lisensi/License:** Bebas digunakan untuk pembelajaran / Free for learning
