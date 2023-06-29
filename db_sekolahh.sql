-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 05:46 PM
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
-- Database: `db_sekolahh`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungan`
--

CREATE TABLE `tbl_hubungan` (
  `id_hub` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_ortu` int(11) NOT NULL,
  `status_hub_anak` char(50) NOT NULL,
  `keterangan` char(50) NOT NULL,
  `status_ortu` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hubungan`
--

INSERT INTO `tbl_hubungan` (`id_hub`, `id_siswa`, `id_ortu`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(1, 0, 0, 'Kandung', 'Bunda', 'kandung');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kls`
--

CREATE TABLE `tbl_kls` (
  `id_kelas` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jurusan` enum('ipa','ips') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kls`
--

INSERT INTO `tbl_kls` (`id_kelas`, `nama`, `jurusan`) VALUES
(1, '10', 'ipa'),
(4, '12', 'ipa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ortu`
--

CREATE TABLE `tbl_ortu` (
  `id_ortu` int(10) NOT NULL,
  `nik` char(50) NOT NULL,
  `nama` char(50) NOT NULL,
  `pendidikan` char(50) NOT NULL,
  `pekerjaan` char(50) NOT NULL,
  `telp` text NOT NULL,
  `alamat` char(50) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `agama` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poin`
--

CREATE TABLE `tbl_poin` (
  `id_poin` int(11) NOT NULL,
  `nama_poin` varchar(50) NOT NULL,
  `bobot` varchar(50) NOT NULL,
  `jenis` enum('pelanggaran','prestasi') NOT NULL,
  `status` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_poin`
--

INSERT INTO `tbl_poin` (`id_poin`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(2, 'dc', 'dvS', 'pelanggaran', 'true'),
(3, 'pp', 'pp', 'pelanggaran', 'false'),
(4, 'awe', 'dd', 'pelanggaran', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_poin` int(11) NOT NULL,
  `id_walikelas` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_semester`
--

INSERT INTO `tbl_semester` (`id`, `id_siswa`, `id_poin`, `id_walikelas`, `id_kelas`, `tanggal`, `semester`, `status`) VALUES
(1, 0, 0, 0, 0, '2023-06-08', '3', 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nis` char(20) NOT NULL,
  `nisn` char(20) NOT NULL,
  `nama_siswa` varchar(60) NOT NULL,
  `nik` char(20) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telp` char(150) NOT NULL,
  `hp` char(150) NOT NULL,
  `status` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, '4634', 'ajir', '342534', 'fdgddz', '463', '2023-06-14', '', 'affe', '547', '564', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `level`, `status`) VALUES
(1, 'adminnn', 'rottt', '1', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id_walikelas` int(10) NOT NULL,
  `nik` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `pendidikan` char(60) NOT NULL,
  `telp` char(16) NOT NULL,
  `matpel` char(30) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_walikelas`
--

INSERT INTO `tbl_walikelas` (`id_walikelas`, `nik`, `nama`, `jenis_kelamin`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, '546546', 'kk', 'L', 'dcds', 'a', 'b', 'c', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  ADD PRIMARY KEY (`id_hub`),
  ADD KEY `siswa_id` (`id_siswa`),
  ADD KEY `ortu_id` (`id_ortu`);

--
-- Indexes for table `tbl_kls`
--
ALTER TABLE `tbl_kls`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
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
  ADD KEY `siswa_id` (`id_siswa`),
  ADD KEY `poin_id` (`id_poin`),
  ADD KEY `wali_id` (`id_walikelas`),
  ADD KEY `kelas_id` (`id_kelas`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hubungan`
--
ALTER TABLE `tbl_hubungan`
  MODIFY `id_hub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_kls`
--
ALTER TABLE `tbl_kls`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ortu`
--
ALTER TABLE `tbl_ortu`
  MODIFY `id_ortu` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_poin`
--
ALTER TABLE `tbl_poin`
  MODIFY `id_poin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id_walikelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
