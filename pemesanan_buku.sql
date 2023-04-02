-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Apr 2023 pada 14.35
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daftar_pemesanan_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_buku`
--

CREATE TABLE `pemesanan_buku` (
  `id_pemesan` int(20) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `alamat_pemesan` varchar(100) NOT NULL,
  `nomor_telepon` int(12) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `jenis_buku` varchar(100) NOT NULL,
  `jumlah_buku` int(20) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `sampul_buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemesanan_buku`
--

INSERT INTO `pemesanan_buku` (`id_pemesan`, `nama_pemesan`, `alamat_pemesan`, `nomor_telepon`, `judul_buku`, `jenis_buku`, `jumlah_buku`, `harga`, `sampul_buku`) VALUES
(1, 'Alpha', 'Jl. Kenari No. 45, Timika, Papua', 67800, 'Vicious', 'Fiksi', 1, 'Rp50.000,00', 'vicious.png'),
(2, 'Beta', 'Jl. Kakatua No. 567, Timika, Papua', 20183, 'Python Crash Course', 'Non-Fiksi', 1, 'Rp95.000,00', 'python.png'),
(3, 'Gamma', 'Jl. Mambruk No. 22, Timika, Papua', 15651, 'The Resurection Altar', 'Fiksi', 2, 'Rp110.000,00', 'resurection.png'),
(4, 'Delta', 'Jl. Pepaya No. 90, Timika, Papua', 18320, '100 Restaurant Menu', 'Non-Fiksi', 1, 'Rp45.000,00', 'menu.png'),
(5, 'Epsilon', 'Jl. Semapang Timur No. 65, Timika, Papua', 66066, 'Search', 'Fiksi', 1, 'Rp85.000,00', 'search.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemesanan_buku`
--
ALTER TABLE `pemesanan_buku`
  ADD PRIMARY KEY (`id_pemesan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan_buku`
--
ALTER TABLE `pemesanan_buku`
  MODIFY `id_pemesan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
