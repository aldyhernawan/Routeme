-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 03:14 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routeme`
--

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id_route` int(5) NOT NULL,
  `id_titik_a` int(5) NOT NULL,
  `id_titik_b` int(5) NOT NULL,
  `jarak` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id_route`, `id_titik_a`, `id_titik_b`, `jarak`) VALUES
(1, 1, 2, 15),
(2, 1, 39, 203),
(3, 3, 2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `table_titik`
--

CREATE TABLE `table_titik` (
  `id_titik` int(5) NOT NULL,
  `nama_titik` varchar(20) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lon` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_titik`
--

INSERT INTO `table_titik` (`id_titik`, `nama_titik`, `lat`, `lon`, `keterangan`) VALUES
(1, 'Titik 1', '-7.0732534', '110.4111171', 'persimpangan perintis kemerdekaan - karangrejo raya'),
(2, 'Titik 2', '-7.0737645', '110.4130483', 'Persimpangan Karangrejo Raya - Nusa Indah1'),
(3, 'Titik 3', '-7.0744592', '110.4145744', 'Persimpangan Karangrejo Raya - Karangrejo II'),
(4, 'Titik 4', '-7.0745843', '110.4149312', 'karangrejo raya - karangrejo III'),
(5, 'Titik 5', '-7.0751965', '110.4166102', 'karangrejo raya - karang rejo IV'),
(6, 'Titik 6', '-7.0751646', '110.4175383', 'karangrejo raya - karang rejo Vi'),
(7, 'Titik 7', '-7.0754148', '110.4190886', 'karang rejo raya - meranti bar dalam'),
(8, 'Titik 8', '-7.0751965', '110.4166102', 'karangrejo raya - karang rejo IV'),
(9, 'Titik 9', '-7.0751646', '110.4175383', 'karangrejo raya - karang rejo Vi'),
(10, 'Titik 10', '-7.0738204', '110.4204404', 'meranti raya - meranti barat dalam Viii'),
(11, 'Titik 11', '-7.0732641', '110.4206818', 'meranti raya - meranti bar vi'),
(12, 'Titik 12', '-7.0725321', '110.4209608', 'meranti raya - gang meranti raya'),
(13, 'Titik 13', '-7.0720157', '110.4211405', 'meranti raya - gaharu raya'),
(14, 'Titik 14', '-7.0710375', '110.4215106', 'meranti raya - meranti barat 1'),
(15, 'Titik 15', '-7.0699581', '110.4215428', 'jati raya - meranti raya'),
(16, 'Titik 16', '-7.0699235', '110.4211593', 'jati raya - meranti barat 1'),
(17, 'Titik 17', '-7.0699049', '110.4209957', 'jati raya - kruing dalam iii'),
(18, 'Titik 18', '-7.0693405', '110.4210627', 'kruing timur dalam iii - kruing timur dalam iv'),
(19, 'Titik 19', '-7.0686032', '110.42117', 'kruing tim dalam iii - kruing timur dalam'),
(20, 'Titik 20', '-7.0680762', '110.4228196', 'bundaran kruing utara'),
(21, 'Titik 21', '-7.068156', '110.4216045', 'kruing raya - gang 1'),
(22, 'Titik 22', '-7.0682865', '110.4207543', 'kruing raya gang 2'),
(23, 'Titik 23', '-7.0682386', '110.4196572', 'kruing raya - kruing 6'),
(24, 'Titik 24', '-7.0682119', '110.4193568', 'kruing raya - kruing 4'),
(25, 'Titik 25', '-7.0681827', '110.4191852', 'kring raya - kruing 3'),
(26, 'Titik 26', '-7.0681587', '110.4188955', 'kruing raya - kruing 2'),
(27, 'Titik 27', '-7.0681268', '110.4185227', 'kruing raya kring 1'),
(28, 'Titik 28', '-7.0681174', '110.4181606', 'jati raya - kruing raya'),
(29, 'Titik 29', '-7.067609', '110.4181391', 'jati barat - jati raya'),
(30, 'Titik 30', '-7.0662821', '110.4182464', 'sukun raya - jati raya'),
(31, 'Titik 31', '-7.0653478', '110.4155964', 'sukun raya - gang sukun raya 1'),
(32, 'Titik 32', '-7.0646504', '110.413397', 'sukun raya - sukun 2'),
(33, 'Titik 33', '-7.0643044', '110.4124475', 'sukun raya - jendral pol anton sujarwo'),
(34, 'Titik 34', '-7.0656193', '110.4121631', 'anton sujarwo - gang mangga'),
(35, 'Titik 35', '-7.0695375', '110.4115784', 'anton sujarwo - belimbing'),
(36, 'Titik 36', '-7.070022', '110.4114953', 'anton sujarwo - belimbing raya'),
(37, 'Titik 37', '-7.0707101', '110.4113826', 'anton sujarwo - melati'),
(38, 'Titik 38', '-7.0709669', '110.4113102', 'anton sujarwo - cempaka'),
(39, 'Titik 39', '-7.0714274', '110.4112002', 'anton sujarwo - nusa indah'),
(40, 'Titik 40', '-7.0721514', '110.4138207', 'nusa indah - nusa indah 1'),
(41, 'Titik 41', '-7.0710015', '110.4126513', 'melati - melati 1'),
(42, 'Titik 42', '-7.0705597', '110.4127935', 'belimbing raya - melati 1'),
(43, 'Titik 43', '-7.0706022', '110.4129544', 'belimbing raya - belimbing timur dalam'),
(44, 'Titik 44', '-7.070203', '110.4121645', 'belimbing raya - tanah putih 2'),
(45, 'Titik 45', '-7.0697305', '110.4123442', 'belimbing - tanah putih 2'),
(46, 'Titik 46', '-7.0709004', '110.4137161', 'melati 2 - blimbing raya'),
(47, 'Titik 47', '-7.0710521', '110.4142472', 'blimbing raya - nusa indah 1'),
(48, 'Titik 48', '-7.0712597', '110.4149821', 'gaharu raya - gaharu barat'),
(49, 'Titik 49', '-7.071297', '110.4152088', 'gaharu raya - gang gaharu raya'),
(50, 'Titik 50', '-7.0713502', '110.4153804', 'gaharu raya - gaharu barat dalam 3'),
(51, 'Titik 51', '-7.0724948', '110.4150224', 'karang rejo 3 a - gaharu barat dalam 6'),
(52, 'Titik 52', '-7.0722233', '110.4151028', 'gaharu barat dalam 3 - gaharu barat dalam 5'),
(53, 'Titik 53', '-7.0719531', '110.4151887', 'gaharu barat dalam 3 - gaharu barat dalam 4'),
(54, 'Titik 54', '-7.0725933', '110.4154783', 'gaharu barat dalam 6 - gang 1'),
(55, 'Titik 55', '-7.0726039', '110.4158056', 'gaharu barat dalam 6 - gang 2'),
(56, 'Titik 56', '-7.0727929', '110.4154569', 'gang 1 - gang 2'),
(57, 'Titik 57', '-7.07291', '110.4157841', 'gang 3 - karang rejo 4b'),
(58, 'Titik 58', '-7.0738111', '110.4156581', 'karang rejo 2 - karang rejo4b'),
(59, 'Titik 59', '-7.0723298', '110.4160658', 'gaharu barat dalam v gang 1'),
(60, 'Titik 60', '-7.0720556', '110.4160738', 'gaharu barat dalam 4 - gang 1'),
(61, 'Titik 61', '-7.0716457', '110.4152852', 'gaharu barat dalam - gaharu barat dalam 3'),
(62, 'Titik 62', '-7.0717655', '110.4163152', 'gaharu barat dalam - gaharu utara 5'),
(63, 'Titik 63', '-7.0724123', '110.4167926', 'gaharu barat dalam v - gang 2'),
(64, 'Titik 64', '-7.0721355', '110.4168355', 'gaharu barat dalam 4 -gang2'),
(65, 'Titik 65', '-7.0718586', '110.416857', 'gaharu barat dalam - gang2'),
(66, 'Titik 66', '-7.0714487', '110.4163581', 'gaharu raya - gaharu utara 5'),
(67, 'Titik 67', '-7.0738816', '110.4159772', 'karang rejo urata - karang rejo uara 1'),
(68, 'Titik 68', '-7.0730112', '110.4161516', 'karang rejo 4b - karang rejo utara 1'),
(69, 'Titik 69', '-7.0739694', '110.416452', 'karang rejo utara - karang rejo utara 2'),
(70, 'Titik 70', '-7.0739854', '110.4167873', 'karang rejo utara - karangrejo 4'),
(71, 'Titik 71', '-7.0739029', '110.4171346', 'karang rejo utara - karang rejo utara 3'),
(72, 'Titik 72', '-7.0738736', '110.4176027', 'karang rejo 6 - karang rejo utara dalam 5'),
(73, 'Titik 73', '-7.073863', '110.4178306', 'cendana timur - karang rejo utara dalam 6'),
(74, 'Titik 74', '-7.0738656', '110.4179996', 'cendana timur - karang rejo utara dalam 7'),
(75, 'Titik 75', '-7.073855', '110.4180908', 'cendana tmur - cendana'),
(76, 'Titik 76', '-7.0738989', '110.4183403', 'cendana timur - cendana timur 1'),
(77, 'Titik 77', '-7.0728488', '110.4175276', 'Cendana Barat - karang rejo utara dalam 5'),
(78, 'Titik 78', '-7.0722366', '110.4198718', 'cendana timur - gaharu timur dalam'),
(79, 'Titik 79', '-7.0714434', '110.4166692', 'gaharu raya - rasamala raya'),
(80, 'Titik 80', '-7.0725134', '110.4174846', 'gaharu barat dalam 5 - karang rejo utara dalam 5'),
(81, 'Titik 81', '-7.0722153', '110.4174873', 'gaharu timur dalam 7 - gaharu selatan'),
(82, 'Titik 82', '-7.0719039', '110.4175061', 'gaharu selatan - gaharu barat dalam'),
(83, 'Titik 83', '-7.072902', '110.4179326', 'cendana barat - karang rejo utara dalam 6'),
(84, 'Titik 84', '-7.072934', '110.4181042', 'Cendana barat - karang rejo utara dalam 7'),
(85, 'Titik 85', '-7.0726146', '110.4182088', 'Gaharu TImur dalam 6 - gaharu timur dalam 7'),
(86, 'Titik 86', '-7.0729553', '110.4183926', 'Cendana barat - cendana'),
(87, 'Titik 87', '-7.072729', '110.4184784', 'Cendana - gaharu timur dalam8'),
(88, 'Titik 88', '-7.0720343', '110.4182357', 'gaharu timur dalam - gaharu timur dalam 6'),
(89, 'Titik 89', '-7.0720529', '110.4185615', 'Gaharu timur dalam - gaharu timur dalam 5'),
(90, 'Titik 90', '-7.0709323', '110.4177019', 'Rasamala timur 3 - rasamala utara 4'),
(91, 'Titik 91', '-7.0720849', '110.4188552', 'gaharu timur dalam - gaharu timur dalam 4'),
(92, 'Titik 92', '-7.0720982', '110.4190001', 'gaharu timur dalam - gaharu timur dalam 3'),
(93, 'Titik 93', '-7.0721661', '110.4192656', 'gaharu timur dalam 2 - gaharu timur dalam'),
(94, 'Titik 94', '-7.0714993', '110.4168905', 'gaharu raya - gaharu barat dalam 1'),
(95, 'Titik 95', '-7.0715938', '110.4176335', 'gaharu selatan - gaharu raya'),
(96, 'Titik 96', '-7.071679', '110.4183081', 'gaharu raya - gaharu utara 3'),
(97, 'Titik 97', '-7.0717109', '110.4186045', 'gaharu raya - gaharu utara 2'),
(98, 'Titik 98', '-7.0717708', '110.419035', 'gaharu raya'),
(99, 'Titik 99', '-7.0719172', '110.4201521', 'gaharu timur dalam - gaharu raay'),
(100, 'Titik 100', '-7.0719292', '110.4202875', 'gaharu raya - meranti barat'),
(101, 'Titik 101', '-7.0719731', '110.4208428', 'gaharu raya - meranti barat 2'),
(102, 'Titik 102', '-7.072194', '110.4200944', 'meranti barat - meranti barat 4'),
(103, 'Titik 103', '-7.0724336', '110.4198959', 'meranti barat - meranti barat 5'),
(104, 'Titik 104', '-7.0726851', '110.4197216', 'meranti barat - meranti barat 6'),
(105, 'Titik 105', '-7.0729327', '110.4195768', 'meranti barat - meranti barat 7'),
(106, 'Titik 106', '-7.0734238', '110.4192737', 'meranti barat dalam 4 - meranti barat dalam 2'),
(107, 'Titik 107', '-7.0737578', '110.4191972', 'meranti barat dalam 4 - meranti barat dalam 3'),
(108, 'Titik 108', '-7.0741012', '110.4192469', 'meranti barat dalam 4 - meranti barat dalam 5'),
(109, 'Titik 109', '-7.0744419', '110.419275', 'meranti barat dalam 4 - gang'),
(110, 'Titik 110', '-7.074213', '110.41944', 'meranti barat dalam 5 - gang'),
(111, 'Titik 111', '-7.0750168', '110.4192428', 'meranti barat dalam 1 - meranti barat dalam 4'),
(112, 'Titik 112', '-7.0743793', '110.4197216', 'meranti barat dalam 5 - merant barat dalam 1'),
(113, 'Titik 113', '-7.0738922', '110.4200247', 'meranti barat dalam 2 - meranti barat dalam 1'),
(114, 'Titik 114', '-7.073642', '110.4201816', 'meranti barat dalam 8 - meranti barat dalam 1'),
(115, 'Titik 115', '-7.0735861', '110.4200998', 'meranti barat 8 - meranti barat 3'),
(116, 'Titik 116', '-7.0733479', '110.4202406', 'meranti barat 3 - meranti barat 7'),
(117, 'Titik 117', '-7.073095', '110.4203962', 'meranti barat 3 - meranti barat 6'),
(118, 'Titik 118', '-7.0728275', '110.420533', 'meranti barat 5 meranti barat 2'),
(119, 'Titik 119', '-7.0725693', '110.4206349', 'meranti barat 2 - meranti barat 4'),
(120, 'Titik 120', '-7.0724336', '110.4206845', 'meranti barat 2 meranti raya'),
(121, 'Titik 121', '-7.0716058', '110.4203653', 'gaharu utara - gaharu utara dalam 6'),
(122, 'Titik 122', '-7.0715738', '110.4201937', 'gaharu utara dalam 6 - gaharu utara dalam 1'),
(123, 'Titik 123', '-7.0715419', '110.4198892', 'gaharu utara dalam 6 - gaharu utara dalam 2'),
(124, 'Titik 124', '-7.0715099', '110.4195982', 'gaharu utara dalam 6 -gaharu utara dalam 3'),
(125, 'Titik 125', '-7.0714687', '110.4193139', 'gaharu utara dalam 6 -gaharu utara dalam 4'),
(126, 'Titik 126', '-7.0714407', '110.4190618', 'gaharu utara dalam 6 -gaharu utara 1'),
(127, 'Titik 127', '-7.0710335', '110.4211123', 'merant barat 1'),
(128, 'Titik 128', '-7.0709962', '110.4208723', 'meranti barat 1 - gang'),
(129, 'Titik 129', '-7.0709603', '110.4205169', 'gaharu utara - gaharu utara dalam'),
(130, 'Titik 130', '-7.0709323', '110.4202124', 'gaharu utara dalam -gaharu utara dalam 1'),
(131, 'Titik 131', '-7.0709044', '110.4199389', 'gaharu utara dalam -gaharu utara dalam 2'),
(132, 'Titik 132', '-7.0708711', '110.4196653', 'gaharu utara dalam -gaharu utara dalam 3'),
(133, 'Titik 133', '-7.0708378', '110.419385', 'gaharu utara dalam -gaharu utara dalam 4'),
(134, 'Titik 134', '-7.0708032', '110.4191154', 'gaharu utara dalam -gaharu utara 1'),
(135, 'Titik 135', '-7.0707753', '110.4189652', 'gaharu utara dalam - jati selatan'),
(136, 'Titik 136', '-7.0707606', '110.418697', 'gaharu utara dalam - gaharu utara 2'),
(137, 'Titik 137', '-7.0706342', '110.4177287', 'gaharu utara dalam - gaharu utara 4'),
(138, 'Titik 138', '-7.0705676', '110.4172003', 'rasamala timur 3 - rasamala timur 3'),
(139, 'Titik 139', '-7.0708857', '110.4171802', 'Rasamala timur 3'),
(140, 'Titik 140', '-7.0712012', '110.4171561', 'rasamala timur 2 - rasamala timur 3'),
(141, 'Titik 141', '-7.0712664', '110.4176617', 'rasamala timur 2 - gaharu utara 4'),
(142, 'Titik 142', '-7.0711426', '110.4167256', 'rasamala timur 2 - rasamala raya'),
(143, 'Titik 143', '-7.0705251', '110.4168503', 'rasamala raya - rasamala timur 3'),
(144, 'Titik 144', '-7.0710947', '110.4163621', 'gaharu utara 6 - gaharu utara 5'),
(145, 'Titik 145', '-7.070895', '110.4153349', 'rasamala barat 9'),
(146, 'Titik 146', '-7.0707646', '110.4156004', 'rasamala raya - rasamala barat 7'),
(147, 'Titik 147', '-7.0705943', '110.4159397', 'rasamala raya - rasamala barat 4'),
(148, 'Titik 148', '-7.0704212', '110.4162562', 'rasamala raya'),
(149, 'Titik 149', '-7.0702695', '110.4165271', 'rasamala raya - rasamala barat 1'),
(150, 'Titik 150', '-7.0703587', '110.4159544', 'rasamala barat 6 - rasamala barat 4'),
(151, 'Titik 151', '-7.0703414', '110.4156245', 'rasamala barat 6 - rasamala barat 7'),
(152, 'Titik 152', '-7.0702908', '110.4152222', 'rasamala barat 6 - rasamala barat 8'),
(153, 'Titik 153', '-7.0702536', '110.414907', 'rasamala barat 9 - rasamala barat 6'),
(154, 'Titik 154', '-7.0708684', '110.4150975', 'rasamala barat 9 - rasamala barat 8'),
(155, 'Titik 155', '-7.0699967', '110.41508', 'rasamala barat 9 - rasamala barat 5'),
(156, 'Titik 156', '-7.0700859', '110.4159772', 'rasamala barat 5 - rasamala barat 4'),
(157, 'Titik 157', '-7.0698503', '110.4165539', 'rasamala barat 1 - rasamala barat 2'),
(158, 'Titik 158', '-7.0698104', '110.4162803', 'rasamala barat 2'),
(159, 'Titik 159', '-7.0697917', '110.4160041', 'rasamala barat 2 - rasamala barat 4'),
(160, 'Titik 160', '-7.0697119', '110.4151645', 'rasamala barat 2 - rasamala barat 9'),
(161, 'Titik 161', '-7.0694417', '110.4152812', 'mangga dalam selatan - rasamala barat'),
(162, 'Titik 162', '-7.0693126', '110.4153389', 'mangga dalam selatan'),
(163, 'Titik 163', '-7.069109', '110.4147434', 'blimbing timur dalam'),
(164, 'Titik 164', '-7.069483', '110.4157694', 'rasamala barat - rasamala utara dalam'),
(165, 'Titik 165', '-7.0695056', '110.4160886', 'rasamala barat - rasamala utara 7'),
(166, 'Titik 166', '-7.0700925', '110.4168798', 'rasamala raya'),
(167, 'Titik 167', '-7.0695788', '110.4169039', 'rasamala raya - rasamala barat'),
(168, 'Titik 168', '-7.0695468', '110.4165794', 'rasamala barat - rasamala utara 6'),
(169, 'Titik 169', '-7.0753163', '110.4185911', 'karang rejo raya - gang'),
(170, 'Titik 170', '-7.0739548', '110.4187024', 'cendana timur gang'),
(171, 'Titik 171', '-7.069616', '110.4172432', 'rasamala timur - rasamala 3'),
(172, 'Titik 172', '-7.06964', '110.417545', 'rasamala timur - rasamala 1'),
(173, 'Titik 173', '-7.0696706', '110.4178132', 'rasamala timur - gaharu selatan'),
(174, 'Titik 174', '-7.069668', '110.4180224', 'jatiraya - rasamala timur'),
(175, 'Titik 175', '-7.06966', '110.4183966', 'jati raya - kruing barat dalam 1'),
(176, 'Titik 176', '-7.0697305', '110.4190899', 'jati raya - jati selatan'),
(177, 'Titik 177', '-7.0700938', '110.417781', 'jati selatan dalam 7 gaharu selatan'),
(178, 'Titik 178', '-7.0703427', '110.4177622', 'gaharu selatan - jati selatan dalam 8'),
(179, 'Titik 179', '-7.0704785', '110.4190055', 'jati selatan - jati selatan dalam 8'),
(180, 'Titik 180', '-7.070195', '110.4190376', 'jati selatan dalam 7 - jati selatan'),
(181, 'Titik 181', '-7.0702136', '110.4191704', 'jati selatan dalam 1 - jati selatan dalam 6'),
(182, 'Titik 182', '-7.0702429', '110.4194641', 'jati selaran dalam 1 - jati selatan dalam 5'),
(183, 'Titik 183', '-7.0703108', '110.4200073', 'jati selaran dalam 1 - jati selatan dalam 3'),
(184, 'Titik 184', '-7.0703334', '110.4202943', 'jati selaran dalam 1 - jati selaran dalam 2'),
(185, 'Titik 185', '-7.0703653', '110.4205973', 'gaharu utara - jati selaran dalam 1'),
(186, 'Titik 186', '-7.0698862', '110.4206751', 'jati raa - gaharu utara'),
(187, 'Titik 187', '-7.069825', '110.4201132', 'jati raya - jati utara'),
(188, 'Titik 188', '-7.0691223', '110.4184341', 'kruing barat dalam 4 - kruing barat dalam 1'),
(189, 'Titik 189', '-7.0693485', '110.4201642', 'kruing barat dalam 4 - jati utara'),
(190, 'Titik 190', '-7.0689546', '110.4202098', 'jati utara - jati utara 3'),
(191, 'Titik 191', '-7.0686698', '110.4202178', 'jati utara - kruing barat dalam'),
(192, 'Titik 192', '-7.0693246', '110.4204994', 'kruing timur dalam 4 - gang kruing 1'),
(193, 'Titik 193', '-7.0693445', '110.4207985', 'kruing timur dalam 4 - gang kruing 2'),
(194, 'Titik 194', '-7.0686618', '110.4208548', 'kruing timur dalam - gang kruing 2'),
(195, 'Titik 195', '-7.0686897', '110.4205611', 'kruing timur dalam - gang kruing 1'),
(196, 'Titik 196', '-7.0685846', '110.4193193', 'jati utara 3 - kruing barat dalam'),
(197, 'Titik 197', '-7.0685393', '110.4191114', 'kruing barat dalam 3 - kruing barat dalam'),
(198, 'Titik 198', '-7.0685061', '110.4187788', 'kruing barat dalam 2 - kruing barat dalam'),
(199, 'Titik 199', '-7.0690278', '110.4187426', 'kruing barat dalam 3 - kruing barat dalam 2'),
(200, 'Titik 200', '-7.0689972', '110.4184476', 'kruing barat dalam 3 - kruing barat dalam 1'),
(201, 'Titik 201', '-7.0684701', '110.4184891', 'kruing barat dalam 1 - kruing barat dalam'),
(202, 'Titik 202', '-7.0686432', '110.4181042', 'jati raya - rasamala raya'),
(203, 'Titik 203', '-7.0686125', '110.4176228', 'rasamala raya - rasamala 1'),
(204, 'Titik 204', '-7.0685873', '110.417325', 'rasamala raya - rasamala 3'),
(205, 'Titik 205', '-7.0685553', '110.4169925', 'rasamala raya - rasamala utara'),
(206, 'Titik 206', '-7.0683943', '110.4170112', 'rasamala utara 3 - rasamala utara'),
(207, 'Titik 207', '-7.0675784', '110.4177126', 'jati barat - rasamala 2'),
(208, 'Titik 208', '-7.0675678', '110.4174216', 'jati barat - rasamala 4'),
(209, 'Titik 209', '-7.0675345', '110.4170622', 'jati barat - rasamala utara'),
(210, 'Titik 210', '-7.067432', '110.416346', 'jati barat - rasamala utara dalam'),
(211, 'Titik 211', '-7.0681201', '110.4170555', 'rasamala utara 2 - rasamala utara'),
(212, 'Titik 212', '-7.0678379', '110.4170823', 'rasamala utara - rasamala utara 1'),
(213, 'Titik 213', '-7.0677301', '110.4162656', 'rasamala utara dalam - rasamala utara 1'),
(214, 'Titik 214', '-7.068011', '110.4162025', 'rasamala utara 2 - rasamala utara dalam'),
(215, 'Titik 215', '-7.0683078', '110.4161301', 'rasamala utara dalam - rasamala utara 3'),
(216, 'Titik 216', '-7.0685833', '110.416047', 'rasamala utara 4 - rasamala utara dalam'),
(217, 'Titik 217', '-7.0688774', '110.4159263', 'rasamala utara dalam'),
(218, 'Titik 218', '-7.0689133', '110.4163058', 'rasamala uutara dalam gang 1 - rasamala utara 7'),
(219, 'Titik 219', '-7.0689612', '110.4166505', 'rasamala utara 6 - rasamala utara dalam gang'),
(220, 'Titik 220', '-7.0686684', '110.4166853', 'rasamala utara 4 - rasamala utara 4'),
(221, 'Titik 221', '-7.0671312', '110.4164614', 'jati barat - jati barat 4'),
(222, 'Titik 222', '-7.0668704', '110.4165646', 'jati barat 5 - jati barat'),
(223, 'Titik 223', '-7.0670154', '110.4177877', 'jati barat 1 - jati barat 5'),
(224, 'Titik 224', '-7.0673082', '110.417773', 'jati barat 4 - jati barat 1'),
(225, 'Titik 225', '-7.0663912', '110.4141426', 'sukun 2 - gang mangga'),
(226, 'Titik 226', '-7.0666787', '110.4147702', 'mangga dalam - gang mangga'),
(227, 'Titik 227', '-7.0673229', '110.4152986', 'mangga dalam - blimbing timur dalam'),
(228, 'Titik 228', '-7.0671765', '110.4155535', 'mangga dalam - jati barat'),
(229, 'Titik 229', '-7.0673415', '110.4160094', 'mangga alam - gang'),
(230, 'Titik 230', '-7.0723031', '110.4182249', 'Gaharu timur dalam 7 - gaharu timur dalam 6'),
(231, 'Titik 231', '-7.0741424', '110.4198477', 'meranti barat dalam 3 - meranti barat dalam 1'),
(232, 'Titik 232', '-7.0683091', '110.4202352', 'kruing raya - jati utara');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `authKey` varchar(50) NOT NULL,
  `accessToken` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `authKey`, `accessToken`, `role`) VALUES
(1, 'aldy', '123456', 'aldy-12345', 'aldy2937412912zzzz', 'admin'),
(2, 'bangjeko', '123456', '', '', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id_route`),
  ADD KEY `id_route` (`id_route`,`id_titik_a`,`id_titik_b`),
  ADD KEY `id_titik_a` (`id_titik_a`),
  ADD KEY `id_titik_b` (`id_titik_b`);

--
-- Indexes for table `table_titik`
--
ALTER TABLE `table_titik`
  ADD PRIMARY KEY (`id_titik`),
  ADD KEY `id_titik` (`id_titik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id_route` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_titik`
--
ALTER TABLE `table_titik`
  MODIFY `id_titik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `route_ibfk_1` FOREIGN KEY (`id_titik_a`) REFERENCES `table_titik` (`id_titik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `route_ibfk_2` FOREIGN KEY (`id_titik_b`) REFERENCES `table_titik` (`id_titik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
