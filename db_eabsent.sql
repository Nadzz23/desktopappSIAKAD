-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 07.19
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_eabsent`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id_absen` varchar(100) NOT NULL,
  `mk_absen` char(30) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `npm_mahasiswa` bigint(20) NOT NULL,
  `nama_absen` char(30) NOT NULL,
  `email_absen` varchar(40) NOT NULL,
  `telepon_absen` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id_absen`, `mk_absen`, `keterangan`, `npm_mahasiswa`, `nama_absen`, `email_absen`, `telepon_absen`) VALUES
('A-100', 'PBO', 'Hadir', 2210631170138, 'Nadhif Hafiz Pradiptya', 'nadhifhafiz@gmial.com', 895361402448),
('A-101', 'PBO', 'Hadir', 2210631170138, 'nadhif', 'nadhif@gmail.com', 8650656587),
('A-102', 'PBO', 'Izin', 2210631170138, 'nadhifhafizpradiptya', 'nadhifhafiz@gmail.com', 86506546464),
('A-12112', 'PBO', 'Hadir', 2210631170138, 'NAdhif Hafiz Pradiptya', 'nadhifhafiz@gmail.com', 89536140245875);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn_dosen` bigint(20) NOT NULL,
  `nama_dosen` char(40) NOT NULL,
  `gender_dosen` enum('Male','Female') NOT NULL,
  `telepon_dosen` bigint(20) NOT NULL,
  `email_dosen` varchar(30) NOT NULL,
  `id_matakuliah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn_dosen`, `nama_dosen`, `gender_dosen`, `telepon_dosen`, `email_dosen`, `id_matakuliah`) VALUES
(1018108, 'Ultach Enri', 'Female', 81310013194, 'ultach@staff.unsika.ac.id', 'FIK61510'),
(3048503, 'E Haodudin Nurkifli', 'Male', 8999171682, 'dudi.nurkifli@staff.unsika.ac.', 'FIK61516'),
(4049401, 'Apriade Voutama', 'Male', 81261037595, 'apriade.voutama@staff.unsika.a', 'FIK61512'),
(5088303, 'Yuyun Umaidah', 'Female', 81213565469, 'yuyunumaidah@gmail.com', 'FIK61514'),
(6119002, 'Riza Ibnu Adam', 'Male', 85693194986, 'riza.adam@staff.unsika.ac.id', 'FIK61511'),
(13048804, 'Carudin', 'Male', 85959592431, 'carudin@staff.unsika.ac.id', 'FIK61521'),
(16048902, 'Arip Solehudin', 'Male', 85794726601, 'arip.solehudin@unsika.ac.id', 'FIK61515');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_matakuliah` varchar(20) NOT NULL,
  `nidn_dosen` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm_mahasiswa` bigint(20) NOT NULL,
  `nama_mahasiswa` char(40) NOT NULL,
  `gender_mahasiswa` enum('Male','Female') NOT NULL,
  `alamat_mahasiswa` varchar(50) NOT NULL,
  `birth_mahasiswa` date NOT NULL,
  `telepon_mahasiswa` bigint(20) NOT NULL,
  `email_mahasiswa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm_mahasiswa`, `nama_mahasiswa`, `gender_mahasiswa`, `alamat_mahasiswa`, `birth_mahasiswa`, `telepon_mahasiswa`, `email_mahasiswa`) VALUES
(2210631170054, 'Ahmad Fauzidan Yahya Khainur', 'Male', 'Cikarang', '2003-07-23', 82213027974, 'a.fauzidan@gmail.com'),
(2210631170133, 'Muhammad Baharuddin Husein', 'Male', 'Bekasi', '2003-07-23', 81284563467, 'm.baharuddin@gmail.com'),
(2210631170134, 'Muhammad Basori Alwi', 'Male', 'Karawang', '2003-07-23', 81227170420, 'alwi@gmail.com'),
(2210631170137, 'Muhammad Hafiz Faturrohman', 'Male', 'Karawang', '2003-07-23', 81382893203, 'hafiz@gmail.com'),
(2210631170138, 'Nadhif Hafiz Pradiptya', 'Male', 'Karawang', '2003-07-23', 895361402448, 'nadhifhafiz@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` varchar(20) NOT NULL,
  `nama_matakuliah` char(40) NOT NULL,
  `sks` int(5) NOT NULL,
  `hari` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `nama_matakuliah`, `sks`, `hari`) VALUES
('FIK61510', 'Struktur Data', 3, 'Jumat'),
('FIK61511', 'Metode Numerik', 3, 'Jumat'),
('FIK61512', 'Analisis Dan Desain Berorientasi Objek', 3, 'Senin'),
('FIK61514', 'Pemrograman Berbasis Objek', 3, 'Jumat'),
('FIK61515', 'Jaringan Komputer', 3, 'Selasa'),
('FIK61516', 'Keamanan Sistem', 3, 'Rabu'),
('FIK61521', 'Teori Bahasa Automata', 3, 'Kamis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `npm_mahasiswa` bigint(20) NOT NULL,
  `password` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`npm_mahasiswa`, `password`) VALUES
(2210631170138, '51a0d5874a65f03b88000bd322dc83c1'),
(2210631170054, 'zidan123'),
(2210631170054, '5f90220cd83974db4165c20540a2ea4a');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn_dosen`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD KEY `jadwal_ibfk_2` (`nidn_dosen`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm_mahasiswa`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD KEY `npm_mahasiswa` (`npm_mahasiswa`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`nidn_dosen`) REFERENCES `dosen` (`nidn_dosen`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`npm_mahasiswa`) REFERENCES `mahasiswa` (`npm_mahasiswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
