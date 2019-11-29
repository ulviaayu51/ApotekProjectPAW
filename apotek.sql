-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2019 pada 21.07
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'marwa', '12345', 'Marwa Majidah'),
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `id` int(4) NOT NULL,
  `kode_pesan` varchar(7) NOT NULL,
  `kode_obat` char(5) NOT NULL,
  `jumlah` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`id`, `kode_pesan`, `kode_obat`, `jumlah`) VALUES
(25, '8QSHQCH', 'A0001', 2),
(26, '2JFEYYX', 'A0001', 1),
(27, 'EV8ZSYL', 'A0001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(4) NOT NULL,
  `kode_obat` char(5) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `id_session` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `kode_obat`, `jumlah`, `id_session`) VALUES
(22, 'A0002', 20, 'aysho3ajxv6ounnldf3k9n47sr68sxlspz5aqwkx'),
(29, 'A0002', 1, 'k2nf9so0gfadl808buoem6cel4snkkwe8ayumyxr'),
(30, 'A0001', 1, 'k2nf9so0gfadl808buoem6cel4snkkwe8ayumyxr'),
(31, 'A0004', 1, 'k2nf9so0gfadl808buoem6cel4snkkwe8ayumyxr'),
(36, 'C0001', 100, 'ijbx323ih54vaafhiu6srwhsjeglzwky13dktq2a'),
(37, 'A0001', 1, 'a9awdlrmdbqyxyfmyr6nmxrlrba79jrwj6um58w0'),
(38, 'A0001', 2, 'bjxseqeh3haghtaspd1l2cdqmnudzlg9rrqyo9mt'),
(39, 'A0002', 1, 'bjxseqeh3haghtaspd1l2cdqmnudzlg9rrqyo9mt'),
(40, 'A0003', 1, 'bjxseqeh3haghtaspd1l2cdqmnudzlg9rrqyo9mt'),
(41, 'A0001', 1, 'nzug34gyn2qllmisrso6cb33mtiz191rb291tbyn'),
(42, 'A0002', 1, 'nzug34gyn2qllmisrso6cb33mtiz191rb291tbyn'),
(43, 'D0001', 1, 'nzug34gyn2qllmisrso6cb33mtiz191rb291tbyn');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode_obat` char(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bentuk` varchar(100) NOT NULL,
  `konsumen` varchar(100) NOT NULL,
  `manfaat` varchar(200) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama`, `bentuk`, `konsumen`, `manfaat`, `harga`) VALUES
('A0001', 'Acarbose', 'Tablet, Kapsul', 'Dewasa', 'Mengontrol kadar gula dalam darah', 5000),
('A0002', 'Albumin', 'Obat infus', 'Dewasa', 'Menangani defisiensi albumin', 10000),
('A0003', 'Amfetamin', 'Tablet, kapsul, dan puyer', 'Dewasa dan anak-anak', 'Menangani ADHD, mengobati narkolepsi, menurunkan berat badan', 12500),
('A0004', 'Atenolol', 'Tablet', 'Dewasa', 'Mengobati angina, gangguan detak jantung, dan hipertensi. Menjaga kesehatan jantung Menjaga kesehatan jantu setelah serangan jantung', 25000),
('B0001', 'Bacitracin', 'Suntik', 'Dewasa dan anak-anak', 'Mencegah infeksi bakteri pada luka ringan di kulit', 15000),
('B0002', 'Baclofen', 'Tablet', 'Dewasa dan anak-anak', 'Meredakan kejang otot', 32000),
('C0001', 'Captopril', 'Tablet', 'Dewasa', 'Menangani hipertensi, mencegah komplikasi setelah serangan jantung', 52000),
('D0001', 'Diazepam', 'Tablet, Obat cair, Suntikan', 'Dewasa dan anak-anak', 'Mengatasi insomnia, serangan kecemasan, melemaskan otot kejang', 12000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama`) VALUES
('351', 'Marwa'),
('351508', 'Marwa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `kode_pesan` varchar(7) NOT NULL,
  `id_pemesan` varchar(20) NOT NULL,
  `harga` float NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('B','L') NOT NULL DEFAULT 'B',
  `konfirmasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`kode_pesan`, `id_pemesan`, `harga`, `tanggal`, `status`, `konfirmasi`) VALUES
('2JFEYYX', '351', 5000, '2019-11-18', 'B', NULL),
('8QSHQCH', '351508', 10000, '2019-11-18', 'B', NULL),
('EV8ZSYL', '351508', 5000, '2019-11-18', 'B', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_obat` (`kode_obat`),
  ADD KEY `kode_pesan` (`kode_pesan`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`kode_pesan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `detail_pemesanan_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_pemesanan_ibfk_2` FOREIGN KEY (`kode_pesan`) REFERENCES `pemesanan` (`kode_pesan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
