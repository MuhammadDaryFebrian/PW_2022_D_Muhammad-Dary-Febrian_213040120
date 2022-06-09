-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 12:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Muhammad Dary Febrian', 'admin', 'admin', '+6289673395775', 'muhammaddary88@gmail.com', 'Puri Cipageran Indah 2 Blok C9 no.28 RT02 RW21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Laptop'),
(5, 'Handphone'),
(6, 'Handsfree');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(5, 4, 'laptop1', 5000000, 'Spesifikasi\r\nLayar: 14 inci, 1920 x 1080 piksel\r\nProsesor: AMD Ryzen 5 5500U\r\nGrafis: AMD Radeon Graphics\r\nRAM: 16 GB LPDDR4X\r\nStorage: 512 GB SSD\r\nSistem Operasi: Windows 10 Home\r\nKamera: HD 720p\r\nBaterai: 3-cell\r\n', 'produk1589853135.png', 1, '2022-06-04 01:52:15'),
(6, 4, 'laptop2', 8000000, 'Spesifikasi\r\nLayar: 14 inci, 1920 x 1080 piksel\r\nProsesor: AMD Ryzen 5000\r\nGrafis: NVIDIA GeForce RTX 3050\r\nRAM: 16 GB onboard LPDDR4X\r\nStorage:  512 GB SSD\r\nSistem Operasi: Windows 10 Home\r\nKamera:  HD 720p\r\nBaterai: 59Wh up to 12 hours\r\n', 'produk1589853165.png', 1, '2022-06-04 01:52:45'),
(7, 4, 'laptop3', 7500000, 'Spesifikasi\r\nLayar: 14 inci, 1920 x 1080 piksel\r\nProsesor: Intel Pentium Silver N6000\r\nGrafis: Intel UHD Graphics\r\nRAM: 4GB LPDDR4X\r\nStorage: 512 GB SSD\r\nSistem Operasi: Windows 10 Home\r\nKamera: HD 720p\r\nBaterai: Up to 15 hours\r\n', 'produk1589853182.png', 1, '2022-06-04 01:53:02'),
(8, 5, 'handphone1', 1000000, 'Display : 1.77 inch\r\n\r\nResolution : 120 x 160 pixels\r\n\r\nBaterai : 800mAh\r\n\r\nFM radio', 'produk1589853203.png', 1, '2022-06-04 01:53:23'),
(9, 5, 'handphone2', 1200000, 'Ukuran : 132 x 50.5 x 15 mm\r\nBerat : 90.54 g\r\nSistem operasi : Seri 30+\r\nRAM : 4 MB\r\nCPU : MTK\r\nJenis kabel : Micro USB (USB 2.0)\r\nKartu SIM : Dual SIM, Mini-SIM\r\nKamera : VGA dengan flash\r\nBaterai : 1020 mAh, dapat dilepas Penyimpanan internal : 4 MB\r\nDalam kotak :\r\nPerangkat Nokia 150, baterai, pengisi daya USB mikro, panduan menggunakan perangkat.', 'produk1589853226.png', 1, '2022-06-04 01:53:46'),
(10, 5, 'handphone3', 1500000, 'Nokia 106 Handphone\r\nLayar 1,8 inch\r\nSIM Ganda\r\nProsesor MTK 6261D\r\nBaterai 800 mAh² yang dapat dilepas\r\n', 'produk1589853256.png', 1, '2022-06-04 01:54:16'),
(11, 6, 'handsfree1', 250000, 'Kemampuan driver headset untuk menangkap frekuensi, baik rendah maupun tinggi. Biasanya, gaming headset mempunyai range frekuensi 20Hz – 20.000HZ. Artinya, headset itu bisa menangkap suara rendah (bas) di kisaran frekuensi 20Hz dan suara tinggi (trebel) di 20 ribu Hertz. Untuk audio headset berkelas biasanya mempunyai range 16 – 20.000Hz.\r\n', 'produk1589853286.png', 1, '2022-06-04 01:54:46'),
(12, 6, 'handsfree2', 100000, '6.000 Hz – 28.000 Hz. Headphone yang bagus memiliki rentang frekuensi yang besar, semakin lebar rentangnya semakin baik. Semakin rendah frekuensi bawahnya semakin baik karena headphone bisa memperdengarkan suara-sauara berfrekuensi rendah.\r\n', 'produk1589853315.png', 1, '2022-06-04 01:55:15'),
(13, 6, 'handsfree3', 25000, 'Cable Length: 1.2m\r\nInput Plug: 3.5mm stereo\r\nModel: Ear Headphones\r\nFitted with mic and on/ off button\r\nSensitivity: 113dB/mW\r\nImpedance: 32 ohms\r\nFrequency Responee: 20Hz - 20kHz\r\n', 'produk1589853342.png', 1, '2022-06-04 01:55:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
