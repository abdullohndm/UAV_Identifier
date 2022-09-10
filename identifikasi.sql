-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2022 at 10:37 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `identifikasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(2, 'pedri', 'pedri@gmail.com', 'qwerty'),
(3, 'dede', 'dede', 'dede@gaga.ccc'),
(4, 'admin2', 'admin2', 'admin22@gmail.com'),
(5, 'admin123', 'admin123', 'admin123@gmail.com'),
(6, 'admin321', 'admin', 'admin321@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_data` int(11) NOT NULL,
  `nama_ptta` varchar(255) DEFAULT NULL,
  `posisi_sayap` varchar(255) DEFAULT NULL,
  `kemiringan_sayap` varchar(255) DEFAULT NULL,
  `bentuk_sayap` varchar(255) DEFAULT NULL,
  `arah_sayap` varchar(255) DEFAULT NULL,
  `jenis_mesin` varchar(255) DEFAULT NULL,
  `jumlah_mesin` varchar(255) DEFAULT NULL,
  `posisi_mesin` varchar(255) DEFAULT NULL,
  `bentuk_badan` varchar(255) DEFAULT NULL,
  `hidung_badan` varchar(255) DEFAULT NULL,
  `tengah_badan` varchar(255) DEFAULT NULL,
  `posisi_ekor` varchar(255) DEFAULT NULL,
  `jumlah_ekor` varchar(255) DEFAULT NULL,
  `bentuk_ekor` varchar(255) DEFAULT NULL,
  `persenjataan` varchar(255) NOT NULL,
  `warna` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_data`, `nama_ptta`, `posisi_sayap`, `kemiringan_sayap`, `bentuk_sayap`, `arah_sayap`, `jenis_mesin`, `jumlah_mesin`, `posisi_mesin`, `bentuk_badan`, `hidung_badan`, `tengah_badan`, `posisi_ekor`, `jumlah_ekor`, `bentuk_ekor`, `persenjataan`, `warna`) VALUES
(1, 'BTT-3 Banshee', 'bawah', 'positif', 'delta', 'lancip kebelakang', 'baling-baling', 'satu', 'belakang', 'bulat', 'runcing', 'tabung', 'tidak ada', 'tunggal', 'kebelakang dan ujung tumpul', 'tidak bersenjata', 'polos'),
(2, 'Brevel', 'bawah', 'positif', 'lurus', 'lancip kebelakang', 'piston', 'satu', 'belakang', 'bulat', 'bulat', 'tabung', 'tidak ada', 'tunggal', 'kebelakang dan ujung tumpul', 'tidak bersenjata', 'polos'),
(3, 'Crecerelle', 'bawah', 'positif', 'delta', 'lancip kebelakang', 'baling-baling', 'dua', 'belakang', 'bulat', 'runcing', 'tabung', 'tidak ada', 'tunggal', 'kebelakang dan ujung tumpul', 'tidak bersenjata', 'polos'),
(4, 'D-4 NPU', 'atas', 'positif', 'lurus', 'lancip rata', 'baling-baling', 'satu', 'depan', 'bulat', 'runcing', 'tabung', 'diatas badan', 'tunggal', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(5, 'Model 324 Scarab', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'kebelakang dan lancip', 'turbo', 'satu', 'belakang', 'tebal', 'runcing', 'menonjol', 'dibawah badan', 'ganda', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(6, 'Model 410', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'tabung', 'diatas badan', 'ganda', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(7, 'Mirach 26', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'piston', 'satu', 'belakang', 'bulat', 'bulat', 'menonjol', 'diatas badan', 'ganda', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(8, 'Mirach 100 Meteor', 'bawah', 'tidak ada kemiringan', 'semi delta', 'lancip kebelakang', 'jet', 'satu', 'belakang', 'bulat', 'runcing', 'tabung', 'posisi tidak ada', 'tunggal', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(9, 'MQ-5B Hunter', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'baling-baling', 'dua', 'depan dan belakang', 'bulat', 'bulat', 'menonjol', 'diatas badan', 'ganda', 'kebelakang dan ujung tumpul', 'tidak bersenjata', 'polos'),
(10, 'MQ-8 Fire Scout', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip tidak rata', 'baling-baling', 'dua', 'depan dan belakang', 'ramping', 'bulat', 'menonjol', 'diatas badan', 'tunggal', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(11, 'RQ-2 Pioneer', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip tidak rata', 'baling-baling', 'satu', 'belakang', 'bulat', 'runcing', 'menonjol', 'diatas badan', 'ganda', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(12, 'RQ-4B Global Hawk', 'bawah', 'positif', 'kebelakang', 'lancip kebelakang', 'turbo', 'satu', 'belakang', 'tebal', 'bulat', 'menonjol', 'ditengah badan', 'empat', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(13, 'RQ-7B Shadow', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip tidak rata', 'baling-baling', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'ganda', 'sirip tidak ada', 'tidak bersenjata', 'polos'),
(14, 'RQ-170 Sentinel', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'kebelakang dan lancip', 'turbo', 'satu', 'belakang', 'tebal', 'runcing', 'menonjol', 'posisi tidak ada', 'tunggal', 'tidak ada', 'tidak bersenjata', 'polos'),
(15, 'RQ-11B Raven', 'atas', 'positif', 'lurus', 'lancip kedepan', 'baling-baling', 'satu', 'belakang', 'kotak', 'tumpul', 'tabung', 'dibawah badan', 'tunggal', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(16, 'ScanEagle', 'atas', 'positif', 'kebelakang', 'kebelakang dan lancip', 'baling-baling', 'dua', 'belakang', 'bulat', 'runcing', 'tabung', 'posisi tidak ada', 'tunggal', 'tidak ada', 'tidak bersenjata', 'polos'),
(17, 'Scout', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip tidak rata', 'piston', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'ganda', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'loreng'),
(18, 'SHMEL-1 YAK 061', 'atas', 'negatif', 'lurus', 'lancip tidak rata', 'baling-baling', 'satu', 'belakang', 'bulat', 'bulat', 'tabung', 'ditengah badan', 'tiga', 'bulat', 'tidak bersenjata', 'polos'),
(19, 'C-101', 'tengah', 'tidak ada kemiringan', 'delta', 'lancip kebelakang', 'jet', 'dua', 'belakang', 'bulat', 'runcing', 'tabung', 'diatas badan', 'ganda', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(20, 'Taifun', 'tengah', 'tidak ada kemiringan', 'delta', 'lancip kebelakang', 'piston', 'satu', 'belakang', 'bulat', 'bulat', 'tabung', 'diatas badan', 'tunggal', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(21, 'Sukhoi S-70 Okhotnik-B', 'bawah', 'tidak ada kemiringan', 'semi delta', 'lancip dibelakang', 'turbo', 'satu', 'belakang', 'tebal', 'runcing', 'menonjol', 'posisi tidak ada', 'tunggal', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'loreng'),
(22, 'Tengden TB-001', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'baling-baling', 'dua', 'depan', 'bulat', 'bulat', 'menonjol', 'diatas ekor', 'ganda', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(23, 'Wing Loong 2', 'tengah', 'positif', 'kebelakang', 'kebelakang dan lancip', 'baling-baling', 'satu', 'belakang', 'bulat', 'bulat', 'menonjol', 'diatas badan', 'tiga', 'sirip tidak ada', 'bersenjata', 'polos'),
(24, 'BZK-005', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'kebelakang dan lancip', 'baling-baling', 'satu', 'belakang', 'bulat', 'bulat', 'menonjol', 'ditengah ekor', 'ganda', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(25, 'CH-5', 'tengah', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'baling-baling', 'satu', 'belakang', 'bulat', 'runcing', 'menonjol', 'diatas badan', 'ganda', 'sirip tidak ada', 'bersenjata', 'polos'),
(26, 'nEUROn', 'bawah', 'tidak ada kemiringan', 'semi delta', 'lancip dibelakang', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'posisi tidak ada', 'tunggal', 'sirip tidak ada', 'bersenjata', 'polos'),
(27, 'Qods Mohajer-6', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'baling-baling', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas ekor', 'ganda', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(28, 'Xianglong', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'kebelakang dan lancip', 'jet', 'satu', 'belakang', 'tebal', 'runcing', 'menonjol', 'diatas badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(29, 'MQ-9 Reaper', 'bawah', 'positif', 'lurus', 'lancip rata', 'baling-baling', 'satu', 'belakang', 'bulat', 'bulat', 'menonjol', 'dibawah badan', 'ganda', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(30, 'MQ-1 Predator', 'bawah', 'positif', 'lurus', 'lancip rata', 'baling-baling', 'satu', 'belakang', 'bulat', 'bulat', 'menonjol', 'dibawah badan', 'tiga', 'sirip tidak ada', 'bersenjata', 'polos'),
(1112, 'Tu-160M Blackjack', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'lancip dibelakang', 'turbo', 'empat', 'belakang', 'bulat', 'runcing', 'tabung', 'ditengah ekor', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1113, 'Sukhoi SU-57', 'atas', 'tidak ada kemiringan', 'delta', 'lancip dibelakang', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'sirip tidak ada', 'bersenjata', 'loreng'),
(1114, 'F-15C Eagle', 'atas', 'tidak ada kemiringan', 'semi delta', 'lancip dibelakang', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'sirip tidak ada', 'bersenjata', 'polos'),
(1115, 'L-39 Albatros', 'bawah', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'turbo', 'satu', 'belakang', 'ramping', 'runcing', 'menonjol', 'diatas badan', 'tiga', 'lancip tidak rata dan ujung melengkung', 'tidak bersenjata', 'loreng'),
(1116, 'Tupolev Tu-22m', 'bawah', 'positif', 'kebelakang', 'lancip dibelakang', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'tiga', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(1117, 'Yakovlev Yak-130', 'tengah', 'tidak ada kemiringan', 'delta', 'lancip dibelakang', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'ditengah badan', 'tiga', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(1118, 'Shenyang J-31', 'atas', 'tidak ada kemiringan', 'delta', 'lancip dibelakang', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'sirip tidak ada', 'bersenjata', 'polos'),
(1119, 'Shenyang J-15', 'atas', 'tidak ada kemiringan', 'semi delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'dibawah badan', 'empat', 'sirip tidak ada', 'bersenjata', 'polos'),
(1120, 'Xian H-20', 'tengah', 'negatif', 'semi delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'kotak', 'bulat', 'menonjol', 'ditengah badan', 'ganda', 'sirip tidak ada', 'bersenjata', 'polos'),
(1121, 'Xian H-6', 'tengah', 'tidak ada kemiringan', 'kebelakang', 'lancip kebelakang', 'turbo', 'satu', 'belakang', 'bulat', 'bulat', 'tabung', 'dibawah ekor', 'tiga', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(1122, 'Xian JH-7', 'atas', 'negatif', 'semi delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'tabung', 'diatas badan', 'tiga', 'kebelakang dan ujung tumpul', 'bersenjata', 'polos'),
(1123, 'Hongdu JL-15', 'tengah', 'tidak ada kemiringan', 'delta', 'lancip dibelakang', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'ditengah badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(1124, 'BAE System Hawk', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'kebelakang dan lancip', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'tiga', 'lancip tidak rata dan ujung melengkung', 'tidak bersenjata', 'polos'),
(1125, 'Dassault Rafale', 'atas', 'tidak ada kemiringan', 'delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'tunggal', 'lancip tidak rata dan ujung melengkung', 'bersenjata', 'polos'),
(1126, 'F-22 Raptor', 'atas', 'negatif', 'delta', 'bentuk berlian', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(1127, 'Chengdu J-10', 'atas', 'tidak ada kemiringan', 'delta', 'kebelakang dan lancip', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'tunggal', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(1128, 'T-38B Talon', 'bawah', 'tidak ada kemiringan', 'semi delta', 'lancip dibelakang', 'turbo', 'satu', 'belakang', 'tebal', 'runcing', 'menonjol', 'diatas badan', 'tiga', 'lancip rata dan ujung kotak', 'bersenjata', 'polos'),
(1129, 'Sukhoi SU-34', 'tengah', 'tidak ada kemiringan', 'semi delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'kebelakang dan ujung tumpul', 'bersenjata', 'loreng'),
(1130, 'F-35 Lightning II', 'atas', 'negatif', 'delta', 'bentuk berlian', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'ditengah badan', 'empat', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(1131, 'Boeing C-17 Globemaster III', 'atas', 'negatif', 'kebelakang', 'lancip kebelakang', 'turbo', 'empat', 'depan dan belakang', 'tebal', 'bulat', 'tabung', 'diatas ekor', 'tunggal', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(1132, 'V-22 Osprey', 'atas', 'negatif', 'lurus', 'lancip rata', 'baling-baling', 'dua', 'depan dan belakang', 'kotak', 'bulat', 'menonjol', 'diatas badan', 'ganda', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(1133, 'Northrop Grumman B-2 Spirit', 'bawah', 'negatif', 'semi delta', 'kebelakang dan lancip', 'turbo', 'empat', 'belakang', 'kotak', 'bulat', 'menonjol', 'ditengah badan', 'ganda', 'sirip tidak ada', 'bersenjata', 'polos'),
(1134, 'Xian Y-20', 'atas', 'negatif', 'kebelakang', 'lancip kebelakang', 'turbo', 'empat', 'depan dan belakang', 'tebal', 'bulat', 'menonjol', 'diatas ekor', 'tunggal', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(1135, 'Shaanxi Y-9', 'atas', 'negatif', 'lurus', 'lancip rata', 'baling-baling', 'empat', 'depan dan belakang', 'tebal', 'bulat', 'menonjol', 'diatas ekor', 'tunggal', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(1136, 'Eurofighter Typhoon', 'bawah', 'tidak ada kemiringan', 'delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'tebal', 'runcing', 'menonjol', 'diatas badan', 'tunggal', 'lancip tidak rata dan ujung melengkung', 'bersenjata', 'polos'),
(1137, 'Chengdu J-20', 'atas', 'negatif', 'delta', 'bentuk berlian', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'loreng'),
(1138, 'Mikoyan MiG-31', 'atas', 'negatif', 'semi delta', 'lancip kebelakang', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(1139, 'Boeing EA-18G Growler', 'tengah', 'tidak ada kemiringan', 'kebelakang', 'lancip dibelakang', 'turbo', 'dua', 'belakang', 'kotak', 'runcing', 'menonjol', 'diatas badan', 'empat', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(1140, 'F-16 Fighting Falcon', 'tengah', 'tidak ada kemiringan', 'semi delta', 'lancip dibelakang', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'menonjol', 'ditengah badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'bersenjata', 'polos'),
(1141, 'Rockwell B-1 Lancer', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'lancip kebelakang', 'turbo', 'satu', 'belakang', 'kotak', 'runcing', 'tabung', 'dibawah ekor', 'tiga', 'lancip tidak rata dan ujung melengkung', 'bersenjata', 'polos'),
(1142, 'Alenia C-27J Spartan', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'baling-baling', 'dua', 'depan dan belakang', 'tebal', 'bulat', 'tabung', 'diatas badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1143, 'Shaanxi KJ-500', 'atas', 'tidak ada kemiringan', 'lurus', 'lancip rata', 'baling-baling', 'empat', 'depan dan belakang', 'tebal', 'bulat', 'tabung', 'diatas badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'loreng'),
(1144, 'Airbus A400M Atlas', 'atas', 'negatif', 'lurus', 'lancip rata', 'baling-baling', 'empat', 'depan dan belakang', 'tebal', 'bulat', 'tabung', 'diatas ekor', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1145, 'Boeing E-3 Sentry', 'tengah', 'tidak ada kemiringan', 'kebelakang', 'lancip kebelakang', 'turbo', 'empat', 'depan dan belakang', 'bulat', 'bulat', 'tabung', 'ditengah badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1146, 'Beriev A-50', 'atas', 'negatif', 'kebelakang', 'lancip kebelakang', 'turbo', 'empat', 'depan dan belakang', 'tebal', 'bulat', 'tabung', 'diatas ekor', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'loreng'),
(1147, 'Boeing 737 AEWC', 'tengah', 'tidak ada kemiringan', 'kebelakang', 'lancip kebelakang', 'turbo', 'dua', 'depan dan belakang', 'bulat', 'bulat', 'tabung', 'ditengah badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1148, 'DRDO AEWCS', 'bawah', 'tidak ada kemiringan', 'kebelakang', 'lancip kebelakang', 'turbo', 'dua', 'depan dan belakang', 'bulat', 'runcing', 'tabung', 'ditengah badan', 'tiga', 'lancip rata dan ujung kotak', 'tidak bersenjata', 'polos'),
(1149, 'Boeing P-8 Poseidon', 'tengah', 'tidak ada kemiringan', 'kebelakang', 'lancip kebelakang', 'turbo', 'dua', 'depan dan belakang', 'bulat', 'runcing', 'tabung', 'ditengah badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1150, 'Saab 340 AEWC', 'bawah', 'positif', 'lurus', 'lancip tidak rata', 'baling-baling', 'dua', 'depan dan belakang', 'bulat', 'runcing', 'tabung', 'ditengah badan', 'tiga', 'meruncing kebelakang dan ujung kotak', 'tidak bersenjata', 'polos'),
(1151, 'Sukhoi SU-35', 'atas', 'tidak ada kemiringan', 'semi delta', 'kebelakang dan lancip', 'turbo', 'dua', 'belakang', 'bulat', 'runcing', 'menonjol', 'diatas badan', 'empat', 'kebelakang dan ujung tumpul', 'bersenjata', 'loreng');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `nama_pesawat` varchar(255) NOT NULL,
  `persenjataan` varchar(255) NOT NULL,
  `fusi_informasi` varchar(255) NOT NULL,
  `identifikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id`, `nama_pesawat`, `persenjataan`, `fusi_informasi`, `identifikasi`) VALUES
(1, 'BTT-3 Banshee', 'tidak bersenjata', '0101010001010100', 'tidak bersenjata'),
(3, 'Heron', 'bersenjata', 'belum diketahui', 'bersenjata'),
(4, 'Crecerelle', 'tidak bersenjata', '0100001101010010', 'tidak bersenjata'),
(5, 'D-4 NPU', 'tidak bersenjata', '0100111001010000', 'tidak bersenjata'),
(6, 'Model 324 Scarab', 'tidak bersenjata', '0101001101000011', 'tidak bersenjata'),
(7, 'Model 410', 'tidak bersenjata', '0100110101001100', 'tidak bersenjata'),
(8, 'Mirach 26', 'tidak bersenjata', '0100110101001000', 'tidak bersenjata'),
(9, 'Mirach 100 Meteor', 'tidak bersenjata', '0100110101010010', 'tidak bersenjata'),
(10, 'MQ-5B Hunter', 'tidak bersenjata', '0100110101010001', 'tidak bersenjata'),
(11, 'MQ-1 Predator', 'bersenjata', '0111010000011011', 'bersenjata'),
(12, 'MQ-1 Predator', 'bersenjata', '0111010000011011', 'bersenjata'),
(13, 'MQ-9 Reaper', 'bersenjata', '0100110101010000', 'bersenjata'),
(14, 'RQ-2 Pioneer', 'tidak bersenjata', '0111011111011011', 'bersenjata'),
(15, 'MQ-8 Fire Scout', 'tidak bersenjata', '0100110101011111', 'tidak bersenjata'),
(16, 'RQ-4B Global Hawk', 'tidak bersenjata', '0100110110100000', 'tidak bersenjata'),
(17, 'RQ-7B Shadow', 'tidak bersenjata', '0100110101010110', 'tidak bersenjata'),
(18, 'RQ-170 Sentinel', 'tidak bersenjata', '0100000001010000', 'bersenjata'),
(19, 'RQ-11B Raven', 'tidak bersenjata', '0100110101011000', 'tidak bersenjata'),
(20, 'Sukhoi S-70 Okhotnik-B', 'bersenjata', '0100101000010101', 'bersenjata'),
(21, 'Tengden TB-001', 'bersenjata', '0101111100010101', 'bersenjata'),
(22, 'Wing Loong 2', 'bersenjata', '0100101000110001', 'bersenjata'),
(23, 'BZK-005', 'bersenjata', '0000100010011111', 'bersenjata'),
(24, 'CH-5', 'bersenjata', '0100101001010101', 'bersenjata'),
(25, 'nEUROn', 'bersenjata', '0100000000010101', 'bersenjata'),
(26, 'Qods Mohajer-6', 'tidak bersenjata', '0100101001111101', 'bersenjata'),
(27, 'Xianglong', 'bersenjata', '0100101011111111', 'bersenjata'),
(28, 'ScanEagle', 'tidak bersenjata', '0100100010011010', 'tidak bersenjata'),
(29, 'Scout', 'tidak bersenjata', '0001001010010010', 'tidak bersenjata'),
(30, 'SHMEL-1 YAK 061', 'tidak bersenjata', '0100100010011111', 'tidak bersenjata'),
(31, 'C-101', 'tidak bersenjata', '0001001011110010', 'tidak bersenjata'),
(32, 'Taifun', 'tidak bersenjata', '0001001011111110', 'tidak bersenjata'),
(36, 'Hermes 750', 'bersenjata', 'belum diketahui', 'bersenjata');

-- --------------------------------------------------------

--
-- Table structure for table `proses`
--

CREATE TABLE `proses` (
  `id_proses` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_data` int(11) NOT NULL,
  `fusi_informasi_1` varchar(255) NOT NULL,
  `fusi_informasi_2` varchar(255) NOT NULL,
  `hasil_fusi_informasi` varchar(255) NOT NULL,
  `naive_bayes` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proses`
--
ALTER TABLE `proses`
  ADD PRIMARY KEY (`id_proses`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1152;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `proses`
--
ALTER TABLE `proses`
  MODIFY `id_proses` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
