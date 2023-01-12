-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2023 pada 17.04
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_topsis_rs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative`
--

CREATE TABLE `alternative` (
  `id` int(11) NOT NULL,
  `nama_rs` varchar(125) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `jenis` varchar(125) NOT NULL,
  `gambar` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternative`
--

INSERT INTO `alternative` (`id`, `nama_rs`, `alamat`, `jenis`, `gambar`) VALUES
(1, 'Samaritan', 'Jl Towua', 'Rumah Sakit Umum', 'samaritan.jpg'),
(2, 'Budi Agung', 'Jl. Maluku', 'Rumah Sakit Umum', 'budi_agung.jpg'),
(3, 'Anatapura', 'Jl. Kangkung', 'Rumah Sakit Umum', 'anatapura.jpg'),
(6, 'Undata', 'Jl. Transulawesi', 'Rumah Sakit Umum', 'undata.jpg'),
(7, 'RS Bhayangkara', 'Jl. DR. Suharso', 'Rumah Sakit Umum', 'bayangkara.jpg'),
(8, 'RS Wirabuana', 'Jl. Sisingamangaraja', 'Rumah Sakit Umum', 'wirabuana.jpg'),
(10, 'RS Woodward', 'Jl. Miangas', 'Rumah Sakit Umum', 'woodward.jpg'),
(11, 'RSUD Madani', 'Jl. Thalua Konchi', 'Rumah Sakit Umum', 'madani.jpg'),
(13, 'RS Tadulako', 'Jl. Untad I Bumi Roviega', 'Rumah Sakit Umum', 'tadulako.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `fasilitas` varchar(125) NOT NULL,
  `kenyamanan` varchar(125) NOT NULL,
  `pelayanan` varchar(125) NOT NULL,
  `keamanan` varchar(125) NOT NULL,
  `efisiensi` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `fasilitas`, `kenyamanan`, `pelayanan`, `keamanan`, `efisiensi`) VALUES
(4, '10', '5', '15', '10', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_terbobot`
--

CREATE TABLE `m_terbobot` (
  `id` int(11) NOT NULL,
  `nama_rs` varchar(125) NOT NULL,
  `c1` varchar(125) NOT NULL,
  `c2` varchar(125) NOT NULL,
  `c3` varchar(125) NOT NULL,
  `c4` varchar(125) NOT NULL,
  `c5` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_terbobot`
--

INSERT INTO `m_terbobot` (`id`, `nama_rs`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'Undata', '3.1923383878691', '1.7149717029669', '2.4576062914721', '2.4096385542169', '2.8735632183908'),
(2, 'Anatapura', '3.9904229848364', '2.1437146287086', '6.1440157286803', '3.2128514056225', '3.8314176245211'),
(3, 'Budi Agung', '3.1923383878691', '2.1437146287086', '3.6864094372082', '3.2128514056225', '2.8735632183908'),
(4, 'Samaritan', '3.1923383878691', '1.7149717029669', '6.1440157286803', '4.0160642570281', '3.8314176245211'),
(5, 'RS Woodward', '3.9904229848364', '1.7149717029669', '6.1440157286803', '3.2128514056225', '3.8314176245211'),
(6, 'RSUD Madani', '3.9904229848364', '1.7149717029669', '4.9152125829442', '3.2128514056225', '2.8735632183908'),
(7, 'RS Wirabuana', '2.3942537909018', '1.2862287772252', '4.9152125829442', '3.2128514056225', '2.8735632183908'),
(8, 'RS Bhayangkara', '2.3942537909018', '0.85748585148345', '2.4576062914721', '3.2128514056225', '2.8735632183908'),
(9, 'RS Tadulako', '3.1923383878691', '1.2862287772252', '6.1440157286803', '4.0160642570281', '3.8314176245211');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id` int(11) NOT NULL,
  `rs` varchar(125) NOT NULL,
  `fasilitas` varchar(125) NOT NULL,
  `kenyamanan` varchar(125) NOT NULL,
  `pelayanan` varchar(125) NOT NULL,
  `keamanan` varchar(125) NOT NULL,
  `efesiensi` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id`, `rs`, `fasilitas`, `kenyamanan`, `pelayanan`, `keamanan`, `efesiensi`) VALUES
(12, 'Undata', '4', '4', '2', '3', '3'),
(13, 'Anatapura', '5', '5', '5', '4', '4'),
(14, 'Budi Agung', '4', '5', '3', '4', '3'),
(15, 'Samaritan', '4', '4', '5', '5', '4'),
(16, 'RS Woodward', '5', '4', '5', '4', '4'),
(17, 'RSUD Madani', '5', '4', '4', '4', '3'),
(18, 'RS Wirabuana', '3', '3', '4', '4', '3'),
(19, 'RS Bhayangkara', '3', '2', '2', '4', '3'),
(21, 'RS Tadulako', '4', '3', '5', '5', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `preferensi`
--

CREATE TABLE `preferensi` (
  `id` int(11) NOT NULL,
  `nama_rs` varchar(125) NOT NULL,
  `nilai_preferensi` varchar(125) NOT NULL,
  `jenis` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `preferensi`
--

INSERT INTO `preferensi` (`id`, `nama_rs`, `nilai_preferensi`, `jenis`) VALUES
(1, 'Samaritan', '0.82585970193531', 'Rumah Sakit Umum'),
(2, 'Budi Agung', '0.42350214321759', 'Rumah Sakit Umum'),
(3, 'Anatapura', '0.84561245424351', 'Rumah Sakit Umum'),
(4, 'Undata', '0.21679854566243', 'Rumah Sakit Umum'),
(5, 'RS Bhayangkara', '0.15438754575649', 'Rumah Sakit Umum'),
(6, 'RS Wirabuana', '0.50970480662237', 'Rumah Sakit Umum'),
(7, 'RS Woodward', '0.82504630393892', 'Rumah Sakit Umum'),
(8, 'RSUD Madani', '0.63630852374706', 'Rumah Sakit Umum'),
(9, 'RS Tadulako', '0.78320145433757', 'Rumah Sakit Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `class` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `nama` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `class`, `username`, `password`, `nama`) VALUES
(6, 'Super Admin', 'Ruinz', '123', 'Amar'),
(13, 'admin', 'Sigit', '1', 'Aldy'),
(14, 'admin', 'Fadia', '1', 'Fadiah'),
(16, 'admin', 'gaffur', '123', 'gaffur'),
(17, 'user', 'user', 'user', 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternative`
--
ALTER TABLE `alternative`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_terbobot`
--
ALTER TABLE `m_terbobot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `preferensi`
--
ALTER TABLE `preferensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternative`
--
ALTER TABLE `alternative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `m_terbobot`
--
ALTER TABLE `m_terbobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `preferensi`
--
ALTER TABLE `preferensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
