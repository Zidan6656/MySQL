-- ========================================
-- 📌 Sample SQL Queries - Database Rumah Sakit
-- Author : Zidan6656
-- Description : A collection of example queries for hospital database exploration.
-- ========================================

-- 1. Displays all patient data
SELECT * FROM pasien;

-- 2.Displays all doctors and their specializations
SELECT id_dokter, Nama_dokter, Spesialis
FROM dokter;

-- 3. Displays the stock of drugs that are still available
SELECT nama_obat, stok
FROM obat
WHERE stok > 0;

-- 4. Displays a list of patients and the doctors treating them.
SELECT p.nama_pasien, d.Nama_dokter, pd.waktu_periksa, pd.resep
FROM pasien_dokter pd
JOIN pasien p ON pd.id_pasien = p.id_pasien
JOIN dokter d ON pd.id_dokter = d.id_dokter;

-- 5. Displays total drug transactions per patient
SELECT p.nama_pasien, SUM(t.total_harga) AS total_pengeluaran
FROM transaksi_obat t
JOIN pasien p ON t.id_pasien = p.id_pasien
GROUP BY p.nama_pasien;

-- 6. Displays the most frequently purchased medications by patients
SELECT o.nama_obat, SUM(t.jumlah) AS total_terjual
FROM transaksi_obat t
JOIN obat o ON t.id_obat = o.id_obat
GROUP BY o.nama_obat
ORDER BY total_terjual DESC;

-- 7. Displays the admin who registered a particular patient
SELECT a.nama_admin, p.nama_pasien
FROM daftar d
JOIN administrator a ON d.id_admin = a.id_admin
JOIN pasien p ON d.id_pasien = p.id_pasien;

-- 8. Displays patients who have made drug transactions
SELECT DISTINCT p.nama_pasien
FROM transaksi_obat t
JOIN pasien p ON t.id_pasien = p.id_pasien;

-- 9. Displays patient details along with the doctors and admins involved.
SELECT p.nama_pasien, d.Nama_dokter, a.nama_admin
FROM dokter_admin da
JOIN dokter d ON da.id_dokter = d.id_dokter
JOIN administrator a ON da.id_admin = a.id_admin
JOIN pasien_dokter pd ON d.id_dokter = pd.id_dokter
JOIN pasien p ON pd.id_pasien = p.id_pasien;

-- 10. Showing male and female patients (number per gender)
SELECT jenis_kelamin, COUNT(*) AS jumlah_pasien
FROM pasien
GROUP BY jenis_kelamin;
