-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 04:19 AM
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
-- Database: `db_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungan`
--

CREATE TABLE `tbl_hubungan` (
  `id` int(8) NOT NULL,
  `id_siswa` int(8) DEFAULT NULL,
  `id_ortu` int(8) DEFAULT NULL,
  `status_hubungan` varchar(20) DEFAULT NULL,
  `keterangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(8) NOT NULL,
  `nama_siswa` varchar(20) DEFAULT NULL,
  `jenis` varchar(10) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL
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
  `jenis_kelamin` enum('LAKI - LAKI','PEREMPUAN') NOT NULL,
  `agama` varchar(15) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ortu`
--

INSERT INTO `tbl_ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(1, 2412412, 'Muhammad', 's2', 'dosen', '08797782372', 'Jl Adhyaksas', '', 'islam', 'hidup'),
(2, 21321, 'Perdana', 'sma', 'swasta', '089756892816', 'Jl Sultan Adam', 'LAKI - LAKI', 'Islam', 'Hidup'),
(3, 213123, 'amin', 's4', 'pensiun', '08987678675', 'Jl Kayu Tangi', 'LAKI - LAKI', 'Islam', 'hidup');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ortus`
--

CREATE TABLE `tbl_ortus` (
  `id_ortu` int(8) NOT NULL,
  `nik` int(20) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `status` enum('hidup','Meninggal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poin`
--

CREATE TABLE `tbl_poin` (
  `id_poin` int(8) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `bobot` int(5) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `status` enum('aktif','tdk_aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` int(8) NOT NULL,
  `id_siswa` int(8) DEFAULT NULL,
  `id_poin` int(8) DEFAULT NULL,
  `id_wali` int(8) DEFAULT NULL,
  `id_ortu` int(8) DEFAULT NULL,
  `id_kelas` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` enum('1','2') DEFAULT NULL,
  `status` enum('aktif','tdk_aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(8) NOT NULL,
  `nis` int(20) DEFAULT NULL,
  `nisn` int(20) DEFAULT NULL,
  `nama_siswa` varchar(30) DEFAULT NULL,
  `nik` int(20) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `tingkat_kelas` int(4) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `status` enum('aktif','tdk_aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(0, 1231232, 32131231, 'Aldinara', 4214214, 'Banjarmasin', '2004-02-25', 'Laki-Laki', 3, 'Rpl', 'ipul', 'jl sungai andai', '0895806767848', '0895806767848', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(8) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` enum('aktif','tdk_aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 'user', 'user', 'user', 'aktif'),
(2, 'user1', 'user1', 'user', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id_wali` int(8) NOT NULL,
  `nik/nip` int(20) DEFAULT NULL,
  `nama_wali` varchar(30) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `telp` int(20) DEFAULT NULL,
  `matpel` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `status` enum('aktif','tdk_aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_ortu` (`id_ortu`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ortus`
--
ALTER TABLE `tbl_ortus`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `tbl_poin`
--
ALTER TABLE `tbl_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_wali` (`id_wali`),
  ADD KEY `id_poin` (`id_poin`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_ortu` (`id_ortu`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id_wali`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD CONSTRAINT `tbl_hubungan_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tbl_siswa` (`id_siswa`),
  ADD CONSTRAINT `tbl_hubungan_ibfk_2` FOREIGN KEY (`id_ortu`) REFERENCES `tbl_ortu` (`id`);

--
-- Constraints for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD CONSTRAINT `tbl_semester_ibfk_1` FOREIGN KEY (`id_wali`) REFERENCES `tbl_walikelas` (`id_wali`),
  ADD CONSTRAINT `tbl_semester_ibfk_2` FOREIGN KEY (`id_poin`) REFERENCES `tbl_poin` (`id_poin`),
  ADD CONSTRAINT `tbl_semester_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`),
  ADD CONSTRAINT `tbl_semester_ibfk_5` FOREIGN KEY (`id_siswa`) REFERENCES `tbl_siswa` (`id_siswa`),
  ADD CONSTRAINT `tbl_semester_ibfk_6` FOREIGN KEY (`id_ortu`) REFERENCES `tbl_ortu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
