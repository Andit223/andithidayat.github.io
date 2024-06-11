-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2024 pada 03.27
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nilai_alya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` int(3) NOT NULL,
  `nama_jurusan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `nama_jurusan`) VALUES
(1, 'AKL'),
(2, 'RPL'),
(3, 'TBSM'),
(4, 'TKJ'),
(5, 'MM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableguru`
--

CREATE TABLE `tableguru` (
  `kode_guru` int(2) NOT NULL,
  `nama_guru` text NOT NULL,
  `tangal_lahir` date NOT NULL,
  `kode_mapel` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablemapel`
--

CREATE TABLE `tablemapel` (
  `kode_mapel` int(2) NOT NULL,
  `nama_mapel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablenilai`
--

CREATE TABLE `tablenilai` (
  `id_nilai` int(3) NOT NULL,
  `nisn` text NOT NULL,
  `kode_guru` text NOT NULL,
  `kode_mapel` int(3) NOT NULL,
  `nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablesiswa`
--

CREATE TABLE `tablesiswa` (
  `nis` int(7) NOT NULL,
  `nama_siswa` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kode_jurusan` int(3) NOT NULL,
  `kelas` text NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tablesiswa`
--

INSERT INTO `tablesiswa` (`nis`, `nama_siswa`, `tanggal_lahir`, `kode_jurusan`, `kelas`, `alamat`, `no_hp`) VALUES
(22480, 'CHANTIKA AULIA', '2004-07-30', 2, 'XI', 'WADO', '08584379');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `tablemapel`
--
ALTER TABLE `tablemapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indeks untuk tabel `tablenilai`
--
ALTER TABLE `tablenilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `tablesiswa`
--
ALTER TABLE `tablesiswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tablenilai`
--
ALTER TABLE `tablenilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
