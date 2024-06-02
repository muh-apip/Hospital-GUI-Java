-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 08:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa_pasien`
--

CREATE TABLE `diagnosa_pasien` (
  `id_pasien` varchar(20) NOT NULL,
  `gejala` varchar(100) DEFAULT NULL,
  `diagnosa` varchar(250) DEFAULT NULL,
  `obat` varchar(100) DEFAULT NULL,
  `unitreq` varchar(10) DEFAULT NULL,
  `tipe_unit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosa_pasien`
--

INSERT INTO `diagnosa_pasien` (`id_pasien`, `gejala`, `diagnosa`, `obat`, `unitreq`, `tipe_unit`) VALUES
('1', 'Batuk pilek', 'Flu', 'Paratusin', 'Ya', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `umur` varchar(3) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `gol_darah` varchar(3) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `penyakit` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `no_telp`, `umur`, `jenis_kelamin`, `gol_darah`, `alamat`, `penyakit`) VALUES
('1', 'Apip', '08123456789', '19', 'Laki-Laki', 'AB', 'Jakarta', 'Batuk pilek');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosa_pasien`
--
ALTER TABLE `diagnosa_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
