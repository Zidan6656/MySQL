-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8111
-- Waktu pembuatan: 19 Agu 2025 pada 17.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `transaksi1` ()   BEGIN
START TRANSACTION;
INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat_pasien`)
VALUES (3, 'Didi', 'L', 'Sukarame no 23');
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `transaksi3` ()   BEGIN
START TRANSACTION;
INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat_pasien`) 
VALUES (5, 'Ikhsan', 'P', 'Jl.Dondong no 22');
SAVEPOINT POINT1;

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat_pasien`) 
VALUES (6, 'Andini', 'P', 'Jl.Danding no 23');
ROLLBACK TO POINT1;

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat_pasien`) 
VALUES (7, 'Muhammad', 'L', 'Jl.Dangdut no 24');
COMMIT;
SELECT * FROM pasien;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `transksi2` ()   BEGIN
START TRANSACTION;
UPDATE pasien
SET nama_pasien= `Danar`
WHERE id_pasien= 4;
ROLLBACK;
COMMIT;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrator`
--

CREATE TABLE `administrator` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `waktu_jaga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `Nama_dokter` varchar(30) NOT NULL,
  `Spesialis` varchar(20) NOT NULL,
  `Alamat_dokter` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `waktu_kerja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `Nama_dokter`, `Spesialis`, `Alamat_dokter`, `no_hp`, `tanggal_lahir`, `waktu_kerja`) VALUES
(1, 'Farhan Abbas', 'dokter gigi', 'sukarame, Bandar lampung. lampung', '08556232121', '1995-05-11', '08:00 sd 16:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter_admin`
--

CREATE TABLE `dokter_admin` (
  `id_data` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(3) NOT NULL,
  `kode_obat` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `kode_obat`, `nama_obat`, `harga`, `stok`) VALUES
(1, 'A001', 'Paracetamol', 5000, 10),
(2, 'A002', 'Betadine', 10000, 13),
(3, 'A003', 'Amoxilin', 7000, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat_pasien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat_pasien`) VALUES
(1, 'thomas', 'L', 'tanjung karang, bandar lampung, lampung'),
(2, 'zidan', 'L', 'tanjung karang, bandar lampung, lampung'),
(3, 'Didi', 'L', 'Sukarame no 23'),
(5, 'Ikhsan', 'P', 'Jl.Dondong no 22'),
(7, 'Muhammad', 'L', 'Jl.Dangdut no 24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien_dokter`
--

CREATE TABLE `pasien_dokter` (
  `id` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `waktu_periksa` datetime NOT NULL,
  `resep` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_obat`
--

CREATE TABLE `transaksi_obat` (
  `id_transaksi` int(5) NOT NULL,
  `id_pasien` int(3) NOT NULL,
  `id_obat` int(3) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_obat`
--

INSERT INTO `transaksi_obat` (`id_transaksi`, `id_pasien`, `id_obat`, `jumlah`, `total_harga`) VALUES
(2, 5, 2, 2, 20000);

--
-- Trigger `transaksi_obat`
--
DELIMITER $$
CREATE TRIGGER `tg_jual` AFTER INSERT ON `transaksi_obat` FOR EACH ROW UPDATE obat
  SET stok = stok - NEW.jumlah
  WHERE id_obat = NEW.id_obat
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `dokter_admin`
--
ALTER TABLE `dokter_admin`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `kode_obat` (`kode_obat`),
  ADD KEY `nama_obat` (`nama_obat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `pasien_dokter`
--
ALTER TABLE `pasien_dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indeks untuk tabel `transaksi_obat`
--
ALTER TABLE `transaksi_obat`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_obat` (`id_obat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dokter_admin`
--
ALTER TABLE `dokter_admin`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pasien_dokter`
--
ALTER TABLE `pasien_dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi_obat`
--
ALTER TABLE `transaksi_obat`
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD CONSTRAINT `daftar_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `administrator` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `daftar_ibfk_3` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dokter_admin`
--
ALTER TABLE `dokter_admin`
  ADD CONSTRAINT `dokter_admin_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dokter_admin_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `administrator` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pasien_dokter`
--
ALTER TABLE `pasien_dokter`
  ADD CONSTRAINT `pasien_dokter_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasien_dokter_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_obat`
--
ALTER TABLE `transaksi_obat`
  ADD CONSTRAINT `transaksi_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_obat_ibfk_3` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
