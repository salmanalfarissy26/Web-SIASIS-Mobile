-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2021 pada 09.47
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siasis_mobile`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrator`
--

CREATE TABLE `administrator` (
  `id_adm` int(50) NOT NULL,
  `nip_ad` varchar(100) NOT NULL,
  `nama_ad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `administrator`
--

INSERT INTO `administrator` (`id_adm`, `nip_ad`, `nama_ad`, `email`, `password`) VALUES
(1, '18110820271990', 'Salman Alfarissy', 'alfarissy.scorpio@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(2, '18110820230999', 'Vira mistika', 'vira.mistika@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(3, '18110810062000', 'Novita Aulia', 'novita.aulia@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(4, '18110820240999', 'Afrizal Fauzi', 'afrizal.fauzi@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(5, '18110820191999', 'Indah Wahyu Andilah', 'indah.wahyu@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(6, '18110820271988', 'Hani', 'Hani@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(50) NOT NULL,
  `id_adm` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `angkatan` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `id_adm`, `nama`, `angkatan`, `pekerjaan`, `alamat`, `foto`) VALUES
(1, 1, 'Hiro', '2016', 'Mobile Programer', 'Tandikek', '629161H.jpg'),
(2, 1, 'Zero Two', '2016', 'UI/UX Designer', 'pauh', '25192z.png'),
(3, 1, 'Claude', '2017', 'Web Programer', 'Kampuang Tanjuang', '694124A.jpg'),
(4, 1, 'Siro', '2018', 'Designer', 'Sicincin', '530819B.jpg'),
(5, 1, 'Jecky', '2017', 'Database Administrator', 'Pauh', '219008D.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(50) NOT NULL,
  `id_adm` int(50) NOT NULL,
  `nip_guru` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `email_guru` varchar(100) NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `id_adm`, `nip_guru`, `password`, `nama_guru`, `email_guru`, `no_telp`, `jabatan`) VALUES
(1, 1, '18110820271999', 'e807f1fcf82d132f9bb018ca6738a19f', 'Salman Alfarissy', 'alfarissy.scorpio@gmail.com', '082285032741', 'Wali Kelas X.1'),
(2, 1, '18110810062000', 'e807f1fcf82d132f9bb018ca6738a19f', 'Novita Aulia', 'novi@gmail.com', '082285000190', 'Wali Kelas X.2'),
(3, 3, '18110820231999', 'e807f1fcf82d132f9bb018ca6738a19f', 'Vira Mistika', 'vira@gmail.com', '082234567890', 'Wali Kelas x.3'),
(4, 1, '18110810062021', 'e807f1fcf82d132f9bb018ca6738a19f', 'Miory', 'mio@gmail.com', '0899231234', 'Wali Kelas x.4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_info` int(50) NOT NULL,
  `id_adm` int(50) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `gambar_event` text NOT NULL,
  `tgl_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_info`, `id_adm`, `nama_event`, `gambar_event`, `tgl_post`, `deskripsi`) VALUES
(1, 1, 'Dirgahayu Republik Indonesia ke-75', '94382417 agustus.jpg', '2021-06-15 11:01:25', 'Selamat memperingati hari kemesdekaan yang ke-75'),
(2, 1, 'Lomba Cerdas Cermat', '352354cc.jpg', '2021-06-15 11:04:41', 'Cerdas cermat lalu lintas tingkat sma se-kota banda aceh \"Generasi muda cerdas dan tertib berlalu lintas\" fakultas Ekonomi,20-21 Maret 2015'),
(3, 1, 'Selamat UASBN', '516542UASBN.jpg', '2021-06-15 11:06:20', 'Selamat menempuh ujian sekolah berstandar nasional (UASBN) dan ujian nasional (UN) \"Semoga Sukses\".'),
(4, 1, 'Happy Graduation', '334160kelulusan.jpg', '2021-06-15 11:08:32', 'Selamat untuk siswa atas kelulusan nya semoga sukses untuk kedepannya...\"semangat!!\"'),
(5, 1, 'Ramadhan 1438h 2017 Masjid Al Ikhlas', '878340ramadhan.jpg', '2021-06-20 13:16:35', 'Perlombaan di bulan Ramadhan 1438h 2017 di Masjid Al Ikhlas'),
(6, 1, 'Lomba Cerdas Cermat SMP', '19122spanduk-ccs-ii.png', '2021-06-20 13:18:29', 'Cerdas Cermat Sains');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kelas` varchar(50) NOT NULL,
  `jadwal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kelas`, `jadwal`) VALUES
('X.1', '706096WhatsApp Image 2021-05-21 at 10.36.40.jpeg'),
('X.2', ''),
('X.3', ''),
('X.4', ''),
('XI.1', ''),
('XI.2', ''),
('XI.3', ''),
('XI.4', ''),
('XII.1', '746598WhatsApp Image 2021-05-21 at 10.36.40.jpeg'),
('XII.2', ''),
('XII.3', ''),
('XII.4', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pem` int(50) NOT NULL,
  `id_adm` int(50) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pem`, `id_adm`, `nis`, `semester`, `status`) VALUES
(1, 1, '12345', 'Semester 6', 'Lunas'),
(2, 1, '12354', 'Semester 1', 'Belum Bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor`
--

CREATE TABLE `rapor` (
  `id_rapor` int(100) NOT NULL,
  `id_siswa` int(100) NOT NULL,
  `id_guru` int(100) NOT NULL,
  `rapor` text NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rapor`
--

INSERT INTO `rapor` (`id_rapor`, `id_siswa`, `id_guru`, `rapor`, `semester`) VALUES
(0, 2, 1, '985389Screenshot (24).png', 'Semester 1'),
(1, 1, 1, '3072295.jpg', 'Semester 1'),
(2, 1, 1, '5373948.jpg', 'Semester 2'),
(4, 2, 1, '269270Screenshot (34).png', 'Semester 2'),
(5, 1, 1, '54335011.jpg', 'Semester 3'),
(6, 1, 1, '36837214.jpg', 'Semester 4'),
(7, 1, 1, '5051217.jpg', 'Semester 5'),
(8, 1, 1, '95243419.jpg', 'Semester 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(50) NOT NULL,
  `id_guru` int(50) NOT NULL,
  `id_adm` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nama_sis` varchar(100) NOT NULL,
  `foto_sis` text NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_keluarga` varchar(50) NOT NULL,
  `anak_ke` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `tahun_diterima` varchar(25) NOT NULL,
  `semester_diterima` varchar(40) NOT NULL,
  `nama_sekolah_asal` text NOT NULL,
  `alamat_sekolah_asal` text NOT NULL,
  `tahun_ijazah_sebelumnya` varchar(20) NOT NULL,
  `nomor_ijazah_sebelumnya` varchar(20) NOT NULL,
  `tahun_skhun_sebelumya` varchar(20) NOT NULL,
  `nomor_skhun_sebelumnya` varchar(20) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `alamat_wali` text NOT NULL,
  `no_hp_wali` varchar(20) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_guru`, `id_adm`, `password`, `nisn`, `nis`, `nama_sis`, `foto_sis`, `ttl`, `jenis_kelamin`, `agama`, `status_keluarga`, `anak_ke`, `alamat`, `no_hp`, `kelas`, `semester`, `tahun_diterima`, `semester_diterima`, `nama_sekolah_asal`, `alamat_sekolah_asal`, `tahun_ijazah_sebelumnya`, `nomor_ijazah_sebelumnya`, `tahun_skhun_sebelumya`, `nomor_skhun_sebelumnya`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `alamat_wali`, `no_hp_wali`, `pekerjaan_wali`, `cover`) VALUES
(1, 1, 1, '827ccb0eea8a706c4c34a16891f84e7b', '9996054913', '12345', 'Salman Alfarissy', '626771salman.JPG', 'KotoMambang,26-10-1999', 'laki-laki', 'islam', 'Anak Kandung', '2', 'Kampuang Tanjuang', '082285032741', 'XII.1', 'Semester 6', '2016-01-01', 'Semester 1', 'SMP N 1 Patamuan', 'Kabun Pondok Duo', '2016', '09808026999', '', '08976102699', 'Abdul Kosasi', 'Murlena Dewi', 'Kampuang Tajuang', 'Buruh Harian Lepas', 'IRT', '-', '-', '-', '-', '193855178371.jpg'),
(2, 1, 1, '827ccb0eea8a706c4c34a16891f84e7b', '9996054922', '12354', 'Novita Aulia', '305805B.jpg', '20-07-2000', 'Perempuan', 'Islam', 'Anak Kandung', '', 'Kayutanam', '0800990', 'X.1', 'Semester 1', '2016', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6493964.jpg'),
(3, 2, 1, '827ccb0eea8a706c4c34a16891f84e7b', '9996054999', '14236', 'Afrizal Fauzi', '5178371.jpg', '', 'L', '', 'Anak Kandung', '', '', '', 'X.2', 'Semester 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2875481.jpg'),
(4, 2, 1, 'c2f1366c51911b52369fe27df307ff84', '9996054920', '12569', 'Vira Mistika', '', '', 'L', '', 'Anak Kandung', '', '', '', 'X.2', 'Semester 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '660180'),
(5, 3, 1, 'c2f1366c51911b52369fe27df307ff84', '9996054900', '13457', 'Indah Wahyu Andilah', '', '', 'L', '', 'Anak Kandung', '', '', '', 'X.3', 'Semester 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '690671'),
(6, 3, 1, '827ccb0eea8a706c4c34a16891f84e7b', '999605090', '12365', 'Siska ramadhani', '', '', '', '', '', '', '', '', 'X.1', 'Semester 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '863197'),
(7, 2, 1, 'e807f1fcf82d132f9bb018ca6738a19f', '9996054900', '12569', 'Yuuki', '', '', '', '', '', '', '', '', 'X.1', 'Semester 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 1, 1, 'e807f1fcf82d132f9bb018ca6738a19f', '9996054998', '56782', 'Aha', '', '', '', '', '', '', '', '', 'X.2', 'Semester 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD KEY `id_adm` (`id_adm`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_adm` (`id_adm`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_info`),
  ADD KEY `id_adm` (`id_adm`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pem`),
  ADD KEY `id_adm` (`id_adm`);

--
-- Indeks untuk tabel `rapor`
--
ALTER TABLE `rapor`
  ADD PRIMARY KEY (`id_rapor`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_adm` (`id_adm`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `kelas` (`kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pem` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`id_adm`) REFERENCES `administrator` (`id_adm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_adm`) REFERENCES `administrator` (`id_adm`);

--
-- Ketidakleluasaan untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`id_adm`) REFERENCES `administrator` (`id_adm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_adm`) REFERENCES `administrator` (`id_adm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rapor`
--
ALTER TABLE `rapor`
  ADD CONSTRAINT `rapor_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `rapor_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_adm`) REFERENCES `administrator` (`id_adm`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_3` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
