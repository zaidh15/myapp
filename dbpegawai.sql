-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2021 pada 15.36
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(1, 'HRD'),
(2, 'Keuangan'),
(4, 'Marketing'),
(3, 'Operasional');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `fullname`, `username`, `password`, `role`, `foto`) VALUES
(1, 'Admin', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', 'admin.jpg'),
(2, 'Mamat Sudrajat', 'mamat', '4da552ed47484092cbdb09cb7442a45bcff886b2', 'manager', 'mamat.jpg'),
(3, 'Kris Numo', 'kris', 'c2b28bc633aaadca7d10b8c682a6d5d01f0c130b', 'staff', 'kris.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `agama` enum('Islam','Kristen Protestan','Kristen Katolik','Hindu','Budha','Khonghucu') NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `email`, `agama`, `iddivisi`, `foto`) VALUES
(1, '10000', 'Ziyad', 'ziyad@gmail.com', 'Islam', 1, 'ziyad.jpg'),
(2, '10001', 'Ali Firdaus', 'ali123@gmail.com', 'Islam', 2, 'ali.jpg'),
(3, '10002', 'Kristian Lemarc', 'kristian@gmail.com', 'Kristen Protestan', 3, 'kris.jpg'),
(4, '10003', 'Bodi Hamed', 'bodi12@gmail.com', 'Budha', 4, 'bodi.jpg'),
(5, '10004', 'Swain Mahisa', 'swainm@gmail.com', 'Islam', 3, 'swain.jpg'),
(8, '10006', 'Mamat Sudrajat', 'mamats@gmail.com', 'Islam', 3, 'mamat.jpg'),
(9, '10007', 'Mamang Nogi', 'mamangnogi@gamil.com', 'Islam', 4, 'mamang.jpg'),
(10, '10008', 'Rian Hidayat', 'rianh@gmail.com', 'Islam', 2, 'rian.jpg'),
(11, '10009', 'Owen Guslow', 'oweng@gmail.com', 'Kristen Protestan', 4, 'owen.jpg'),
(12, '10010', 'Lara Sekar', 'laras@gmail.com', 'Hindu', 3, 'lara.jpg'),
(13, '10011', 'Quin Frenzy', 'quint@gmail.com', 'Kristen Katolik', 4, ''),
(14, '10012', 'Bagus Bagas', 'bagus@gmail.com', 'Islam', 2, 'bagus.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
