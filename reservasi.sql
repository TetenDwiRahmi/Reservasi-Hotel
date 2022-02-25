-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2022 pada 06.32
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `jumlah_bed` int(11) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `tipe_kamar`, `jumlah_bed`, `harga`, `deskripsi`) VALUES
(1, 'Single Standard Room ', 1, 150000, 'Tipe kamar hotel ini terdiri dari satu single bed, sofa, dan kamar mandi. Ukuran kamarnya 5x5 m.'),
(2, 'Double Standard Room', 2, 296999, 'Tipe kamar hotel ini biasanya memiliki ukuran kasur yang besar seperti king size. Double room ini cocok banget buat pasangan suami istri yang ingin berbulan madu.'),
(3, 'Twin Standard Room', 2, 186500, 'Tipe kamar hotel ini memiliki dua tempat tidur ukuran single yang terpisah.\r\n\r\nTipe kamar hotel ini cocok digunakan untuk suami istri atau menginap bersama teman dengan jumlah orang 2-3 orang.'),
(4, 'Suite Deluxe Room', 2, 259500, 'Ruang tamu di kamar hotel ini terpisah dari kamar tidur.\r\n\r\nDari segi fasilitas, tentu berbeda dari junior suite room. Selain ruang tamu, biasanya tipe kamar hotel ini dilengkapi dengan dapur.'),
(5, 'Family Deluxe Room', 4, 899500, 'Tipe kamar hotel family room ini biasanya tersedia satu tempat dengan ukuran king size dan satu tempat tidur dengan ukuran yang lebih kecil.'),
(6, 'Murphy Deluxe Room', 5, 1020500, 'Murphy room ini adalah tipe kamar hotel yang menyediakan sofa bed di kamar. Sofa bed ini digunakan sebagai tempat tidur pada malam hari dan ruang tamu di siang hari. Besar kamar Murphy Room ini sekitar 20 – 40 m.'),
(7, 'Smoking/No Smoking Deluxe Room', 5, 1020500, 'Biasanya tamu tidak diizinkan untuk merokok di dalam kamar. Tetapi, banyak hotel yang sudah menyediakan tipe kamar hotel Smoking/Non Smoking Room.\r\n\r\nHal ini juga berguna agar tidak mengganggu tamu selanjutnya dengan aroma rokok yang terdapat pada kamar. Jadi, kalau kamu seorang perokok, sekarang bisa memesan kamar dengan tipe smooking room.'),
(8, 'Connecting Presidential Room', 8, 2500000, 'Tipe kamar hotel dengan Connecting Room ini cocok untuk kamu yang pergi bersama keluarga besar atau rombongan tetapi ingin memiliki kamar tidur masing-masing. \r\n\r\nKamar kamu dan anggota keluarga lainnya akan bersebelahan dan terdapat pintu yang menghubungkan kamar kalian.'),
(9, 'Cabana Presidential Room', 10, 5599000, 'Kamu ingin langsung berenang saat buka pintu kamar? Atau punya private pool? Pilih tipe kamar hote Cabana Room!\r\n\r\nTipe kamar hotel ini memang didesain dengan kolam renang private untuk pemesan kamar tersebut. Luas kamar Cabana Room ini sekitar 30 – 40 m.'),
(11, 'Family Presidential Room', 12, 20999000, 'Fasilitas yang ditawarkan yang terbaik, mulai dari interior, pemandangan kamar, dan masih banyak lainnya.\r\n\r\nTipe kamar hotel ini memang didesain dengan kolam renang private untuk pemesan kamar tersebut. Luas kamar Cabana Room ini sekitar 40 – 50 m.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telp_pelanggan` varchar(12) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `telp_pelanggan`, `alamat`) VALUES
(1, 'Faizul Ananda', 'Laki-laki', '081234567856', 'Jl. Kalumpang No.8, Bandar Buat, Kec. Lubuk Kilangan, Kota Padang'),
(2, 'Teten Dwi Rahmi Kiflinda', 'Perempuan', '081256789126', 'Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang'),
(3, 'Haura Fathinah', 'Perempuan', '081234564478', 'Podomoro City, Letjen S. Parman St No.Kav 28, RT.12/RW.6, South Tanjung Duren, Grogol petamburan, Jakarta'),
(4, 'Muhammad Irfan', 'Laki-laki', '083134564478', ' Jl. Raya Gadut No.1, Limau Manis Sel., Kec. Pauh, Kota Padang'),
(5, 'Muhammad Rafiqi', 'Laki-laki', '083134884478', 'Jl. Jend. Ahmad Yani No.4, Padang Bulan, Kec. Senapelan, Kota Pekanbaru'),
(6, 'Zelli Oktariana', 'Perempuan', '082234564478', 'Jl. Taratak Paneh No.7, Korong Gadang, Kec. Kuranji, Kota Padang'),
(7, 'Safira Putri Nabila', 'Perempuan', '085634564478', 'Jl. Koto Kaciak, Mata Air, Kec. Padang Sel., Kota Padang'),
(8, 'Alvikri Muklis', 'Laki-laki', '082134884478', 'Jalan Baru Andalas, Kelurahan Selatan No.15, Simpang Haru, Kec. Padang Tim., Kota Padang'),
(9, 'Fasluki Perdana', 'Laki-laki', '082135584478', 'Jl. Andalas No.126, Andalas, Kec. Padang Tim., Kota Padang'),
(11, 'Annisa Azzahra', 'Perempuan', '08317627237', 'Jl. Andam Dewi No.93, Sawahan Tim., Kec. Padang Tim., Kota Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_reservasi` int(11) NOT NULL,
  `total_pembayaran` double NOT NULL,
  `tgl_bayar` datetime NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `status` enum('Lunas','Belum Lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_pelanggan`, `kode_reservasi`, `total_pembayaran`, `tgl_bayar`, `metode_pembayaran`, `status`) VALUES
(1, 2, 872453, 1200000, '2022-02-20 09:00:54', 'Transfer', 'Belum Lunas'),
(2, 1, 872451, 1200000, '2022-02-01 11:50:15', 'Cash', 'Lunas'),
(3, 3, 872458, 680999, '2022-02-23 12:00:11', 'Transfer', 'Belum Lunas'),
(4, 4, 872459, 2567000, '2022-02-22 12:20:00', 'Cash', 'Lunas'),
(5, 7, 872460, 20567000, '2022-02-20 12:20:25', 'Transfer', 'Lunas'),
(6, 9, 872457, 789000, '2022-02-22 05:45:02', 'Cash', 'Belum Lunas'),
(7, 1, 872452, 348000, '2022-02-08 09:45:44', 'Cash', 'Lunas'),
(8, 8, 872456, 998000, '2022-02-17 03:55:25', 'Cash', 'Lunas'),
(9, 2, 872453, 456000, '2022-02-07 01:45:57', 'Transfer', 'Belum Lunas'),
(11, 1, 872452, 345000, '2022-02-21 01:50:57', 'Transfer', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas_hotel`
--

CREATE TABLE `petugas_hotel` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `telp_petugas` varchar(12) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `email_petugas` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas_hotel`
--

INSERT INTO `petugas_hotel` (`id_petugas`, `nama_petugas`, `telp_petugas`, `jenis_kelamin`, `email_petugas`, `alamat`) VALUES
(1, 'Budi', '08123456883', 'Laki-laki', 'budi@mail.com', 'Padang'),
(2, 'Asri', '08123452289', 'Perempuan', 'asri@mail.com', 'Padang'),
(3, 'Yeni', '08223456885', 'Perempuan', 'yeni@mail.com', 'Padang'),
(4, 'Anton', '08563456883', 'Laki-laki', 'anton@mail.com', 'Padang'),
(5, 'Andi', '08563456333', 'Laki-laki', 'andi@mail.com', 'Padang'),
(6, 'Sri', '08223456823', 'Perempuan', 'sri@mail.com', 'Padang'),
(7, 'Ana', '08233456678', 'Perempuan', 'ana@mail.com', 'Padang'),
(8, 'Ari', '08563456333', 'Laki-laki', 'ari@mail.com', 'Padang'),
(9, 'Pandi', '08567456125', 'Laki-laki', 'pandi@mail.com', 'Padang'),
(11, 'Icha', '0812345688', 'Perempuan', 'icha@mail.com', 'Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `kode_reservasi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `jumlah_inap` int(11) NOT NULL,
  `lama_inap` int(11) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`kode_reservasi`, `id_pelanggan`, `id_kamar`, `jumlah_kamar`, `jumlah_inap`, `lama_inap`, `checkin`, `checkout`) VALUES
(872451, 1, 1, 1, 2, 2, '2022-02-02 02:45:33', '2022-02-05 02:45:33'),
(872452, 1, 1, 2, 4, 10, '2022-02-01 02:45:33', '2022-02-10 02:45:33'),
(872453, 2, 1, 1, 1, 1, '2022-02-20 02:45:33', '2022-02-21 02:45:33'),
(872455, 1, 1, 1, 1, 1, '2022-02-20 08:10:31', '2022-02-21 10:15:31'),
(872456, 8, 7, 1, 5, 2, '2022-02-20 08:10:31', '2022-02-22 10:15:31'),
(872457, 9, 5, 1, 5, 3, '2022-02-20 08:10:31', '2022-02-23 10:15:31'),
(872458, 3, 1, 1, 1, 1, '2022-02-20 08:10:31', '2022-02-21 10:15:31'),
(872459, 4, 4, 1, 2, 1, '2022-02-20 08:10:31', '2022-02-21 10:15:31'),
(872460, 7, 3, 1, 2, 8, '2022-02-20 08:10:31', '2022-02-28 10:15:31'),
(872462, 1, 11, 1, 15, 2, '2022-02-20 12:25:39', '2022-02-22 01:25:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_reservasi` int(11) NOT NULL,
  `tgl_checkin` datetime NOT NULL,
  `tgl_checkout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `kode_reservasi`, `tgl_checkin`, `tgl_checkout`) VALUES
(1, 3, 872455, '2022-01-31 09:30:36', '2022-02-04 09:45:36'),
(2, 1, 872455, '2022-02-21 09:50:32', '2022-02-03 03:45:32'),
(3, 2, 872453, '2022-02-21 09:50:32', '2022-02-22 03:45:32'),
(4, 4, 872459, '2022-02-20 02:55:50', '2022-02-22 11:45:50'),
(5, 7, 872460, '2022-02-20 11:55:20', '2022-02-22 02:55:20'),
(7, 8, 872456, '2022-02-20 11:55:04', '2022-02-21 02:55:04'),
(8, 9, 872457, '2022-02-20 11:55:32', '2022-02-22 02:55:32'),
(9, 1, 872452, '2022-02-20 10:50:04', '2022-02-22 11:50:04'),
(10, 1, 872455, '2022-02-20 01:45:31', '2022-02-24 03:55:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `pelanggan_fk_bayar` (`id_pelanggan`),
  ADD KEY `reservasi_fk_bayar` (`kode_reservasi`);

--
-- Indeks untuk tabel `petugas_hotel`
--
ALTER TABLE `petugas_hotel`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`kode_reservasi`),
  ADD KEY `pelanggan_fk` (`id_pelanggan`),
  ADD KEY `kamar_fk` (`id_kamar`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `pelanggan_fk_transaksi` (`id_pelanggan`),
  ADD KEY `reservasi_fk_transaksi` (`kode_reservasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `petugas_hotel`
--
ALTER TABLE `petugas_hotel`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `kode_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=872463;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pelanggan_fk_bayar` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservasi_fk_bayar` FOREIGN KEY (`kode_reservasi`) REFERENCES `reservasi` (`kode_reservasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `kamar_fk` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pelanggan_fk` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `pelanggan_fk_transaksi` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservasi_fk_transaksi` FOREIGN KEY (`kode_reservasi`) REFERENCES `reservasi` (`kode_reservasi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
