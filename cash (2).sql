-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 06:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cash`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `idabsen` int(11) NOT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `absenmasuk` datetime DEFAULT NULL,
  `absenout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`idabsen`, `nim`, `tanggal`, `absenmasuk`, `absenout`) VALUES
(1, '2002007', '2022-03-28', '2022-03-28 07:30:00', '2022-03-28 16:00:00'),
(2, '2002007', '2022-03-27', '2022-03-28 06:30:00', '2022-03-28 16:00:00'),
(3, '2002007', '2022-03-26', '2022-03-28 10:30:19', '2022-03-28 10:30:20'),
(4, '2002007', '2022-03-25', NULL, '2022-03-28 16:00:00'),
(5, '2002007', '2022-03-24', '2022-03-28 06:34:38', NULL),
(6, NULL, '2022-03-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `absen_dosen`
--

CREATE TABLE `absen_dosen` (
  `nama` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen_dosen`
--

INSERT INTO `absen_dosen` (`nama`, `tanggal`, `jam`) VALUES
('haha', '2022-10-09', '03:52:54pm'),
('ijaisj', '2022-10-09', '04:32:25pm'),
('ijaisj', '2022-10-09', '04:32:25pm');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `kode` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `kode`, `email`, `nidn`) VALUES
(1, 'Admin Website', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'dasad', 1233),
(2, 'Admin Website', 'user', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 'asdaf', 2312),
(3, 'njir', 'njir', 'a8f91612027128220252d7d68925b846', 2, 'adsf', 231),
(4, 'njir', 'hi', '49f68a5c8493ec2c0bf489821c21fc3b', 2, 'asde', 132),
(5, 'Randi Astika', 'fifa1219', 'f4cd4768402e41cbe3f59283459b8af6', 2, 'ahmadronesh36@gmail.com', 2342),
(6, 'ha', 'ha', '925cc8d2953eba624b2bfedf91a91613', 2, 'hahaha', 23),
(7, 'haha', 'kok', '6ab7ec99b6aa105aeab1acde2019b125', 2, 'manusiabbg@gmail.com', 2342),
(8, 'sdad', 'user1', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 'asdasd', 23435);

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(25) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `umur` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `id` int(11) NOT NULL,
  `nidn` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `honor`
--

INSERT INTO `honor` (`id`, `nidn`, `nama`, `gaji`) VALUES
(1, 2, 'ahs', 200),
(2, 2, 'ahs', 200);

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id` int(25) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `id` int(25) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `nama`, `username`, `password`, `kode`, `nidn`, `email`) VALUES
(8, 'haha', 'asd', '7815696ecbf1c96e6894b779456d330e', 2, 232, 'asd'),
(16, '', 'user', 'd41d8cd98f00b204e9800998ecf8427e', 2, 0, ''),
(18, 'asndkjad', 'asd.nak', 'fe7d6910edfc08d53c93e46e06872d2d', 2, 0, 'asdn');

-- --------------------------------------------------------

--
-- Table structure for table `konfir_honor`
--

CREATE TABLE `konfir_honor` (
  `id` int(11) NOT NULL,
  `nidn` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfir_honor`
--

INSERT INTO `konfir_honor` (`id`, `nidn`, `nama`, `gaji`) VALUES
(3, 2, 'ahs', 200),
(4, 2, 'ahs', 200),
(5, 2, 'ahs', 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`idabsen`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `konfir_honor`
--
ALTER TABLE `konfir_honor`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `idabsen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `honor`
--
ALTER TABLE `honor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `konfir_honor`
--
ALTER TABLE `konfir_honor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
