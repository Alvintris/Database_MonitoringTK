-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 09:11 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring_tk`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_penghubung`
--

CREATE TABLE `buku_penghubung` (
  `ID_Buku` varchar(100) NOT NULL,
  `NIP_Walikelas` varchar(100) NOT NULL,
  `NIS_Murid` varchar(100) NOT NULL,
  `ID_Pelajaran` varchar(100) NOT NULL,
  `Evaluasi_OrangTua` text DEFAULT NULL,
  `Catatan_Guru` text DEFAULT NULL,
  `Nilai` int(11) DEFAULT NULL,
  `Main_Course` varchar(100) DEFAULT NULL,
  `Snack` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_penghubung`
--

INSERT INTO `buku_penghubung` (`ID_Buku`, `NIP_Walikelas`, `NIS_Murid`, `ID_Pelajaran`, `Evaluasi_OrangTua`, `Catatan_Guru`, `Nilai`, `Main_Course`, `Snack`) VALUES
('BP001', 'W001', 'M0001', 'PE001', 'Baik', 'Baik', 90, 'Nasi Goreng', 'Permen'),
('BP002', 'W002', 'M0002', 'PE001', 'Baik', 'Baik', 89, 'Nasi Sup Ayam', 'Kentang Goreng'),
('BP003', 'W010', 'M0003', 'PE002', 'Baik', 'Baik', 80, 'Nasi Goreng', 'Permen'),
('BP004', 'W006', 'M0004', 'PE004', 'Baik', 'Baik', 94, 'Mie Goreng', 'Kerpik Singkong'),
('BP005', 'W001', 'M0005', 'PE001', 'Baik', 'Baik', 83, 'Nasi Kuning', 'Permen'),
('BP006', 'W008', 'M0006', 'PE003', 'Baik', 'Baik', 86, 'Nasi Goreng', 'Keripik Singkong'),
('BP007', 'W006', 'M0007', 'PE004', 'Baik', 'Baik', 93, 'Nasi Capcay', 'Kentang Goreng'),
('BP008', 'W004', 'M0008', 'PE002', 'Baik', 'Baik', 89, 'Nasi Capcay', 'Kentang Goreng'),
('BP009', 'W009', 'M0009', 'PE004', 'Baik', 'Baik', 85, 'Nasi Goreng', 'Permen'),
('BP010', 'W003', 'M0010', 'PE002', 'Baik', 'Baik', 98, 'Mie Ayam', 'Keripik Singkong'),
('BP011', 'W001', 'M0001', 'PE004', 'Baik', 'Baik', 86, 'Nasi Goreng', 'Permen'),
('BP012', 'W002', 'M0002', 'PE002', 'Baik', 'Baik', 89, 'Nasi Sup Ayam', 'Kentang Goreng'),
('BP013', 'W010', 'M0003', 'PE003', 'Baik', 'Baik', 80, 'Nasi Goreng', 'Permen'),
('BP014', 'W006', 'M0004', 'PE001', 'Baik', 'Baik', 94, 'Mie Goreng', 'Kerpik Singkong'),
('BP015', 'W001', 'M0005', 'PE002', 'Baik', 'Baik', 83, 'Nasi Kuning', 'Permen'),
('BP016', 'W008', 'M0006', 'PE004', 'Baik', 'Baik', 86, 'Nasi Goreng', 'Keripik Singkong'),
('BP017', 'W006', 'M0007', 'PE001', 'Baik', 'Baik', 93, 'Nasi Capcay', 'Kentang Goreng'),
('BP018', 'W004', 'M0008', 'PE003', 'Baik', 'Baik', 89, 'Nasi Capcay', 'Kentang Goreng'),
('BP019', 'W009', 'M0009', 'PE002', 'Baik', 'Baik', 85, 'Nasi Goreng', 'Permen'),
('BP020', 'W003', 'M0010', 'PE001', 'Baik', 'Baik', 98, 'Mie Ayam', 'Keripik Singkong');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `ID_Transaksi` varchar(100) NOT NULL,
  `ID_Pelajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`ID_Transaksi`, `ID_Pelajaran`) VALUES
('T0001', 'PE001'),
('T0002', 'PE001'),
('T0005', 'PE001'),
('T0003', 'PE002'),
('T0008', 'PE002'),
('T0010', 'PE002'),
('T0006', 'PE003'),
('T0004', 'PE004'),
('T0007', 'PE004'),
('T0009', 'PE004');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pelajaran`
--

CREATE TABLE `kategori_pelajaran` (
  `ID_Pelajaran` varchar(100) NOT NULL,
  `Kategori_Pelajaran` varchar(100) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_pelajaran`
--

INSERT INTO `kategori_pelajaran` (`ID_Pelajaran`, `Kategori_Pelajaran`, `Deskripsi`) VALUES
('PE001', 'Motorik Halus', '-'),
('PE002', 'Motorik Halus', '-'),
('PE003', 'Motorik Halus', '-'),
('PE004', 'Motorik Halus', '-');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `ID_Kelas` varchar(100) NOT NULL,
  `ID_Pelajaran` varchar(100) NOT NULL,
  `NIP_Walikelas` varchar(100) NOT NULL,
  `Tingkat_Kelas` int(11) DEFAULT NULL,
  `Nama_Kelas` varchar(10) DEFAULT NULL,
  `Jumlah_Murid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`ID_Kelas`, `ID_Pelajaran`, `NIP_Walikelas`, `Tingkat_Kelas`, `Nama_Kelas`, `Jumlah_Murid`) VALUES
('K0001', 'PE001', 'W001', 1, 'Kelas Berh', 5),
('K0002', 'PE001', 'W002', 2, 'Kelas Berh', 5),
('K0003', 'PE001', 'W003', 3, 'Kelas Berh', 5),
('K0004', 'PE002', 'W004', 1, 'Kelas Memb', 5),
('K0005', 'PE002', 'W005', 2, 'Kelas Memb', 5),
('K0006', 'PE002', 'W006', 3, 'Kelas Memb', 5),
('K0007', 'PE003', 'W007', 1, 'Kelas Meng', 5),
('K0008', 'PE003', 'W008', 2, 'Kelas Meng', 5),
('K0009', 'PE004', 'W009', 1, 'Kelas Menu', 5),
('K0010', 'PE004', 'W010', 2, 'Kelas Menu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `NIS_Murid` varchar(100) NOT NULL,
  `Nama_Murid` varchar(100) DEFAULT NULL,
  `Nama_OrangTua` varchar(100) DEFAULT NULL,
  `Jenis_Kelamin` varchar(10) DEFAULT NULL,
  `Umur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`NIS_Murid`, `Nama_Murid`, `Nama_OrangTua`, `Jenis_Kelamin`, `Umur`) VALUES
('M0001', 'Karen', 'Budi', 'Laki-Laki', 5),
('M0002', 'Andi', 'Luna', 'Perempuan', 5),
('M0003', 'Yulia', 'Kevin', 'Laki-Laki', 6),
('M0004', 'Alya', 'Maria', 'Perempuan', 6),
('M0005', 'Lukman', 'Josua', 'Laki-Laki', 5),
('M0006', 'Joko', 'Olivia', 'Perempuan', 5),
('M0007', 'Wisnu', 'Tobi', 'Laki-Laki', 6),
('M0008', 'Yuli', 'Tina', 'Perempuan', 5),
('M0009', 'Ananda', 'Rafa', 'Perempuan', 6),
('M0010', 'Agnes', 'Paul', 'Laki-Laki', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `ID_Pelajaran` varchar(100) NOT NULL,
  `Nama_Pelajaran` varchar(100) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`ID_Pelajaran`, `Nama_Pelajaran`, `Deskripsi`) VALUES
('PE001', 'Berhitung', 'Mempelajari Operasi Perhitungan'),
('PE002', 'Membaca', 'Mempelajari cara membaca tulisan'),
('PE003', 'Menggambar', 'Menggambar objek tertentu'),
('PE004', 'Menulis', 'Menulis Kata');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `NIP_Pengajar` varchar(100) NOT NULL,
  `Nama_Pengajar` varchar(100) DEFAULT NULL,
  `Jenis_Kelamin` varchar(10) DEFAULT NULL,
  `NO_Telepon` varchar(20) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`NIP_Pengajar`, `Nama_Pengajar`, `Jenis_Kelamin`, `NO_Telepon`, `Username`, `Password`) VALUES
('P001', 'Gusti', 'Laki-Laki', '812555738192', 'Gusti120', '12345'),
('P002', 'Dian', 'Perempuan', '812532734192', 'Dian132', '54321'),
('P003', 'Simon', 'Laki-Laki', '813257381801', 'Simon112', '23145'),
('P004', 'Daniel', 'Laki-Laki', '821675738170', 'Daniel102', '31242'),
('P005', 'Aprilla', 'Perempuan', '821333738191', 'Aprilla901', '89012'),
('P006', 'Lina', 'Perempuan', '812897738123', 'Lina324', '78645'),
('P007', 'Rudi', 'Laki-Laki', '812589724132', 'Rudi648', '19238'),
('P008', 'Dina', 'Perempuan', '814325733192', 'Dina923', '81273'),
('P009', 'Fitri', 'Perempuan', '812234438109', 'Fitri091', '89302'),
('P010', 'Jonathan', 'Laki-Laki', '812935738888', 'Jonathan019', '81271');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` varchar(100) NOT NULL,
  `NIP_Pengajar` varchar(100) NOT NULL,
  `NIS_Murid` varchar(100) NOT NULL,
  `ID_Pelajaran` varchar(100) NOT NULL,
  `Status_Absen` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `NIP_Pengajar`, `NIS_Murid`, `ID_Pelajaran`, `Status_Absen`) VALUES
('T0001', 'P001', 'M0001', 'PE001', '1'),
('T0002', 'P002', 'M0002', 'PE001', '1'),
('T0003', 'P010', 'M0003', 'PE002', '1'),
('T0004', 'P006', 'M0004', 'PE004', '1'),
('T0005', 'P001', 'M0005', 'PE001', '1'),
('T0006', 'P008', 'M0006', 'PE003', '1'),
('T0007', 'P006', 'M0007', 'PE004', '1'),
('T0008', 'P004', 'M0008', 'PE002', '1'),
('T0009', 'P009', 'M0009', 'PE004', '1'),
('T0010', 'P003', 'M0010', 'PE002', '1');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `NIP_Walikelas` varchar(100) NOT NULL,
  `NIP_Pengajar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`NIP_Walikelas`, `NIP_Pengajar`) VALUES
('W001', 'P001'),
('W002', 'P002'),
('W003', 'P003'),
('W004', 'P004'),
('W005', 'P005'),
('W006', 'P006'),
('W007', 'P007'),
('W008', 'P008'),
('W009', 'P009'),
('W010', 'P010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_penghubung`
--
ALTER TABLE `buku_penghubung`
  ADD PRIMARY KEY (`ID_Buku`),
  ADD KEY `NIP_Walikelas` (`NIP_Walikelas`),
  ADD KEY `NIS_Murid` (`NIS_Murid`),
  ADD KEY `ID_Pelajaran` (`ID_Pelajaran`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Pelajaran` (`ID_Pelajaran`);

--
-- Indexes for table `kategori_pelajaran`
--
ALTER TABLE `kategori_pelajaran`
  ADD PRIMARY KEY (`ID_Pelajaran`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`ID_Kelas`),
  ADD KEY `ID_Pelajaran` (`ID_Pelajaran`),
  ADD KEY `NIP_Walikelas` (`NIP_Walikelas`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`NIS_Murid`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`ID_Pelajaran`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`NIP_Pengajar`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `NIP_Pengajar` (`NIP_Pengajar`),
  ADD KEY `NIS_Murid` (`NIS_Murid`),
  ADD KEY `ID_Pelajaran` (`ID_Pelajaran`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`NIP_Walikelas`),
  ADD KEY `NIP_Pengajar` (`NIP_Pengajar`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku_penghubung`
--
ALTER TABLE `buku_penghubung`
  ADD CONSTRAINT `buku_penghubung_ibfk_1` FOREIGN KEY (`NIP_Walikelas`) REFERENCES `walikelas` (`NIP_Walikelas`),
  ADD CONSTRAINT `buku_penghubung_ibfk_2` FOREIGN KEY (`NIS_Murid`) REFERENCES `murid` (`NIS_Murid`),
  ADD CONSTRAINT `buku_penghubung_ibfk_3` FOREIGN KEY (`ID_Pelajaran`) REFERENCES `pelajaran` (`ID_Pelajaran`);

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`ID_Transaksi`) REFERENCES `transaksi` (`ID_Transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`ID_Pelajaran`) REFERENCES `pelajaran` (`ID_Pelajaran`);

--
-- Constraints for table `kategori_pelajaran`
--
ALTER TABLE `kategori_pelajaran`
  ADD CONSTRAINT `kategori_pelajaran_ibfk_1` FOREIGN KEY (`ID_Pelajaran`) REFERENCES `pelajaran` (`ID_Pelajaran`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`ID_Pelajaran`) REFERENCES `pelajaran` (`ID_Pelajaran`),
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`NIP_Walikelas`) REFERENCES `walikelas` (`NIP_Walikelas`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`NIP_Pengajar`) REFERENCES `pengajar` (`NIP_Pengajar`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`NIS_Murid`) REFERENCES `murid` (`NIS_Murid`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`ID_Pelajaran`) REFERENCES `pelajaran` (`ID_Pelajaran`);

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `walikelas_ibfk_1` FOREIGN KEY (`NIP_Pengajar`) REFERENCES `pengajar` (`NIP_Pengajar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
