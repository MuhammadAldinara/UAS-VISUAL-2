-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 07:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungan`
--

CREATE TABLE `tbl_hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `status_hub_anak` enum('KANDUNG','TIDAK KANDUNG') NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `jurusan` enum('IPA','IPS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ortu`
--

CREATE TABLE `tbl_ortu` (
  `id` int(10) NOT NULL,
  `nik` int(18) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_kelamin` enum('LAKI LAKI','PEREMPUAN') NOT NULL,
  `agama` varchar(15) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poin`
--

CREATE TABLE `tbl_poin` (
  `id` int(10) NOT NULL,
  `nama_poin` varchar(30) NOT NULL,
  `bobot` varchar(10) NOT NULL,
  `jenis` enum('PELANGGARAN','PRESTASI') NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `poin_id` int(10) NOT NULL,
  `wali_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `kelas_id` int(10) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(10) NOT NULL,
  `nis` int(18) NOT NULL,
  `nisn` int(18) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `nik` int(18) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('LAKI LAKI','PEREMPUAN') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `tingkat_kelas` enum('1','2','3') NOT NULL,
  `jurusan` enum('IPA','IPS') NOT NULL,
  `walikelas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 'user', 'user', 'user', 'aktif'),
(2, 'user1', 'user1', 'user', 'aktif'),
(3, 'user2', 'user2', 'user', 'aktif'),
(4, 'user3', 'user3', 'user', 'aktif'),
(5, 'user4', 'user4', 'user', 'aktif'),
(6, 'user5', 'user5', 'user', 'aktif'),
(7, 'user6', 'user6', 'user', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id` int(10) NOT NULL,
  `nik/nip` int(18) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('LAKI LAKI','PEREMPUAN') NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `mapel` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_poin`
--
ALTER TABLE `tbl_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walikelas` (`walikelas`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_poin`
--
ALTER TABLE `tbl_poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `tbl_kelas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_semester` (`kelas_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  ADD CONSTRAINT `tbl_ortu_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_hubungan` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_poin`
--
ALTER TABLE `tbl_poin`
  ADD CONSTRAINT `tbl_poin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_semester` (`poin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD CONSTRAINT `tbl_semester_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_semester_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `tbl_ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_hubungan` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_siswa_ibfk_2` FOREIGN KEY (`walikelas`) REFERENCES `tbl_walikelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD CONSTRAINT `tbl_walikelas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_semester` (`wali_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
