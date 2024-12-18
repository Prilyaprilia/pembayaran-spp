-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2024 pada 05.22
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
-- Database: `sppsekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', 'admin', 'Hari Aspriyono'),
(2, 'admin1', 'admin1', 'Agus Susanto'),
(3, 'user', 'user', 'Hari Aspriyono');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `idguru` int(5) NOT NULL,
  `namaguru` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`idguru`, `namaguru`) VALUES
(1, 'BASUKI'),
(2, 'RAHMAT'),
(3, 'EMILIA'),
(4, 'RATNA'),
(5, 'JUWITA'),
(6, 'RONI'),
(7, 'AS\'AD'),
(8, 'april');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(10) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `tahunajaran`, `biaya`) VALUES
(8, '2017100001', 'Eka Suryani S', 'VIIA', '2017/2018', 250000),
(9, '2017100002', 'BAMBANG GENTOLET', 'VIIA', '2017/2018', 250000),
(10, '2017100003', 'HANGGARA', 'VIIA', '2017/2018', 250000),
(11, '2017100004', 'AHMAD', 'VIIA', '2017/2018', 250000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `idspp` int(100) NOT NULL,
  `idsiswa` int(10) DEFAULT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `nobayar` varchar(10) DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL,
  `idadmin` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`idspp`, `idsiswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `idadmin`) VALUES
(1, 8, '2017-07-10', 'Juli 2017', '1712230003', '2017-12-23', 250000, 'LUNAS', 1),
(2, 8, '2017-08-10', 'Agustus 2017', '1712230001', '2017-12-23', 250000, 'LUNAS', 1),
(3, 8, '2017-09-10', 'September 2017', '1712230004', '2017-12-23', 250000, 'LUNAS', 1),
(4, 8, '2017-10-10', 'Oktober 2017', '1712230009', '2017-12-23', 250000, 'LUNAS', 1),
(5, 8, '2017-11-10', 'November 2017', '1712230010', '2017-12-23', 250000, 'LUNAS', 1),
(6, 8, '2017-12-10', 'Desember 2017', '1712230013', '2017-12-23', 250000, 'LUNAS', 1),
(7, 8, '2018-01-10', 'Januari 2018', '1801210001', '2018-01-21', 250000, 'LUNAS', 1),
(8, 8, '2018-02-10', 'Februari 2018', NULL, NULL, 250000, NULL, NULL),
(9, 8, '2018-03-10', 'Maret 2018', NULL, NULL, 250000, NULL, NULL),
(10, 8, '2018-04-10', 'April 2018', NULL, NULL, 250000, NULL, NULL),
(11, 8, '2018-05-10', 'Mei 2018', NULL, NULL, 250000, NULL, NULL),
(12, 8, '2018-06-10', 'Juni 2018', NULL, NULL, 250000, NULL, NULL),
(13, 9, '2017-07-10', 'Juli 2017', '1712230005', '2017-12-23', 250000, 'LUNAS', 1),
(14, 9, '2017-08-10', 'Agustus 2017', '1712230006', '2017-12-23', 250000, 'LUNAS', 1),
(15, 9, '2017-09-10', 'September 2017', '1712230007', '2017-12-23', 250000, 'LUNAS', 1),
(16, 9, '2017-10-10', 'Oktober 2017', '1712230008', '2017-12-23', 250000, 'LUNAS', 1),
(17, 9, '2017-11-10', 'November 2017', '1712230011', '2017-12-23', 250000, 'LUNAS', 1),
(18, 9, '2017-12-10', 'Desember 2017', '1712230012', '2017-12-23', 250000, 'LUNAS', 1),
(19, 9, '2018-01-10', 'Januari 2018', NULL, NULL, 250000, NULL, NULL),
(20, 9, '2018-02-10', 'Februari 2018', NULL, NULL, 250000, NULL, NULL),
(21, 9, '2018-03-10', 'Maret 2018', NULL, NULL, 250000, NULL, NULL),
(22, 9, '2018-04-10', 'April 2018', NULL, NULL, 250000, NULL, NULL),
(23, 9, '2018-05-10', 'Mei 2018', NULL, NULL, 250000, NULL, NULL),
(24, 9, '2018-06-10', 'Juni 2018', NULL, NULL, 250000, NULL, NULL),
(25, 10, '2017-07-10', 'Juli 2017', '1712230014', '2017-12-23', 250000, 'LUNAS', 1),
(26, 10, '2017-08-10', 'Agustus 2017', '1712230015', '2017-12-23', 250000, 'LUNAS', 1),
(27, 10, '2017-09-10', 'September 2017', '1712230016', '2017-12-23', 250000, 'LUNAS', 1),
(28, 10, '2017-10-10', 'Oktober 2017', '1801210003', '2018-01-21', 250000, 'Lunas', 1),
(29, 10, '2017-11-10', 'November 2017', '1801210004', '2018-01-21', 250000, 'LUNAS', 1),
(30, 10, '2017-12-10', 'Desember 2017', '1801210005', '2018-01-21', 250000, 'LUNAS', 1),
(31, 10, '2018-01-10', 'Januari 2018', '1801210006', '2018-01-21', 250000, 'LUNAS', 1),
(32, 10, '2018-02-10', 'Februari 2018', NULL, NULL, 250000, NULL, NULL),
(33, 10, '2018-03-10', 'Maret 2018', NULL, NULL, 250000, NULL, NULL),
(34, 10, '2018-04-10', 'April 2018', NULL, NULL, 250000, NULL, NULL),
(35, 10, '2018-05-10', 'Mei 2018', NULL, NULL, 250000, NULL, NULL),
(36, 10, '2018-06-10', 'Juni 2018', NULL, NULL, 250000, NULL, NULL),
(37, 11, '2017-07-10', 'Juli 2017', '1712290001', '2017-12-29', 250000, 'LUNAS', 1),
(38, 11, '2017-08-10', 'Agustus 2017', '1712290002', '2017-12-29', 250000, 'LUNAS', 1),
(39, 11, '2017-09-10', 'September 2017', '1712290003', '2017-12-29', 250000, 'LUNAS', 1),
(40, 11, '2017-10-10', 'Oktober 2017', '1712290004', '2017-12-29', 250000, 'LUNAS', 1),
(41, 11, '2017-11-10', 'November 2017', '1712290005', '2017-12-29', 250000, 'LUNAS', 3),
(42, 11, '2017-12-10', 'Desember 2017', '1712290006', '2017-12-29', 250000, 'LUNAS', 3),
(43, 11, '2018-01-10', 'Januari 2018', '1712300001', '2017-12-30', 250000, 'LUNAS', 1),
(44, 11, '2018-02-10', 'Februari 2018', NULL, NULL, 250000, NULL, NULL),
(45, 11, '2018-03-10', 'Maret 2018', NULL, NULL, 250000, NULL, NULL),
(46, 11, '2018-04-10', 'April 2018', NULL, NULL, 250000, NULL, NULL),
(47, 11, '2018-05-10', 'Mei 2018', NULL, NULL, 250000, NULL, NULL),
(48, 11, '2018-06-10', 'Juni 2018', NULL, NULL, 250000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `walikelas`
--

CREATE TABLE `walikelas` (
  `kelas` varchar(10) NOT NULL,
  `idguru` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `walikelas`
--

INSERT INTO `walikelas` (`kelas`, `idguru`) VALUES
('VIIA', 1),
('IXB', 2),
('VIIB', 2),
('VIIIA', 3),
('IXA', 4),
('VIIC', 4),
('VIIIB', 5),
('12 rpl', 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD KEY `fk_kelas` (`kelas`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`idspp`),
  ADD KEY `fk_admin` (`idadmin`),
  ADD KEY `fk_siswa` (`idsiswa`);

--
-- Indeks untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `fk_guru` (`idguru`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `idguru` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `idspp` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas`) REFERENCES `walikelas` (`kelas`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `fk_guru` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
