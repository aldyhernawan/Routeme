-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2018 at 03:24 PM
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
(1, 1, 2, 220),
(2, 2, 1, 220),
(3, 2, 3, 190),
(4, 3, 2, 190),
(5, 3, 4, 40),
(6, 4, 3, 40),
(7, 4, 5, 200),
(8, 5, 4, 200),
(9, 5, 6, 100),
(10, 6, 5, 100),
(11, 1, 39, 200),
(12, 39, 1, 200),
(13, 38, 39, 50),
(14, 39, 38, 50),
(15, 38, 37, 30),
(16, 37, 38, 30),
(17, 37, 36, 80),
(18, 36, 37, 80),
(19, 36, 44, 80),
(20, 44, 36, 80),
(21, 45, 44, 60),
(22, 44, 45, 60),
(23, 35, 45, 90),
(24, 45, 35, 90),
(25, 35, 36, 50),
(26, 36, 35, 50),
(27, 44, 42, 80),
(28, 42, 44, 80),
(29, 38, 46, 270),
(30, 46, 38, 270),
(31, 37, 41, 140),
(32, 41, 37, 140),
(33, 41, 42, 50),
(34, 42, 41, 50),
(35, 42, 43, 20),
(36, 43, 42, 20),
(37, 39, 40, 300),
(38, 40, 39, 300),
(39, 2, 40, 200),
(40, 40, 2, 200),
(41, 40, 47, 130),
(42, 47, 40, 130),
(43, 43, 46, 90),
(44, 46, 43, 90),
(45, 46, 47, 60),
(46, 47, 46, 60),
(47, 3, 51, 220),
(48, 51, 3, 220),
(49, 51, 52, 30),
(50, 52, 51, 30),
(51, 47, 48, 80),
(52, 48, 47, 80),
(53, 48, 49, 30),
(54, 49, 48, 30),
(55, 49, 50, 20),
(56, 50, 49, 20),
(57, 50, 61, 30),
(58, 61, 50, 30),
(59, 53, 61, 40),
(60, 61, 53, 40),
(61, 52, 53, 30),
(62, 53, 52, 30),
(63, 4, 58, 120),
(64, 58, 4, 120),
(65, 58, 67, 40),
(66, 67, 58, 40),
(67, 67, 69, 50),
(68, 69, 67, 50),
(69, 69, 70, 40),
(70, 70, 69, 40),
(71, 5, 70, 140),
(72, 70, 5, 140),
(73, 70, 71, 40),
(74, 71, 70, 40),
(75, 71, 72, 50),
(76, 72, 71, 50),
(77, 72, 73, 30),
(78, 73, 72, 30),
(79, 73, 74, 20),
(80, 74, 73, 20),
(81, 74, 75, 10),
(82, 75, 74, 10),
(83, 75, 76, 30),
(84, 76, 75, 30),
(85, 76, 170, 40),
(86, 170, 76, 40),
(87, 43, 163, 324),
(88, 163, 43, 324),
(89, 162, 163, 70),
(90, 163, 162, 70),
(91, 161, 162, 20),
(92, 162, 161, 20),
(93, 160, 161, 30),
(94, 161, 160, 30),
(95, 155, 160, 30),
(96, 160, 155, 30),
(97, 153, 155, 30),
(98, 155, 153, 30),
(99, 154, 153, 105),
(100, 153, 154, 105),
(101, 145, 154, 30),
(102, 154, 145, 30),
(103, 49, 145, 50),
(104, 145, 49, 50),
(105, 34, 35, 440),
(106, 35, 34, 440),
(107, 33, 34, 150),
(108, 34, 33, 150),
(109, 32, 33, 110),
(110, 33, 32, 110),
(111, 31, 32, 250),
(112, 32, 31, 250),
(113, 30, 31, 310),
(114, 31, 30, 310),
(115, 34, 225, 230),
(116, 225, 34, 230),
(117, 32, 225, 281),
(118, 225, 32, 281),
(119, 225, 226, 80),
(120, 226, 225, 80),
(121, 226, 227, 138),
(122, 227, 226, 138),
(123, 226, 228, 136),
(124, 228, 226, 136),
(125, 227, 228, 30),
(126, 228, 227, 30),
(127, 163, 227, 210),
(128, 227, 163, 210),
(129, 228, 229, 50),
(130, 229, 228, 50),
(131, 210, 229, 40),
(132, 229, 210, 40),
(133, 210, 221, 40),
(134, 221, 210, 40),
(135, 221, 222, 30),
(136, 222, 221, 30),
(137, 222, 223, 140),
(138, 223, 222, 140),
(139, 223, 224, 30),
(140, 224, 223, 30),
(141, 221, 224, 150),
(142, 224, 221, 150),
(143, 207, 224, 30),
(144, 224, 207, 30),
(145, 209, 210, 80),
(146, 210, 209, 80),
(147, 208, 209, 40),
(148, 209, 208, 40),
(149, 207, 208, 30),
(150, 208, 207, 30),
(151, 29, 207, 50),
(152, 207, 29, 50),
(153, 210, 213, 30),
(154, 213, 210, 30),
(155, 213, 214, 30),
(156, 214, 213, 30),
(157, 214, 215, 30),
(158, 215, 214, 30),
(159, 215, 216, 30),
(160, 216, 215, 30),
(161, 216, 217, 40),
(162, 217, 216, 40),
(163, 164, 217, 70),
(164, 217, 164, 70),
(165, 161, 164, 50),
(166, 164, 161, 50),
(167, 164, 165, 40),
(168, 165, 164, 40),
(169, 165, 168, 50),
(170, 168, 165, 50),
(171, 165, 218, 70),
(172, 218, 165, 70),
(173, 217, 218, 40),
(174, 218, 217, 40),
(175, 218, 219, 40),
(176, 219, 218, 40),
(177, 209, 212, 30),
(178, 212, 209, 30),
(179, 212, 213, 90),
(180, 213, 212, 90),
(181, 211, 214, 90),
(182, 214, 211, 90),
(183, 211, 212, 30),
(184, 212, 211, 30),
(185, 6, 169, 120),
(186, 169, 6, 120),
(187, 6, 72, 140),
(188, 72, 6, 140),
(189, 169, 170, 150),
(190, 170, 169, 150),
(191, 206, 215, 100),
(192, 215, 206, 100),
(193, 216, 220, 70),
(194, 220, 216, 70),
(195, 219, 220, 30),
(196, 220, 219, 30),
(197, 168, 219, 70),
(198, 219, 168, 70),
(199, 159, 160, 90),
(200, 160, 159, 90),
(201, 158, 159, 30),
(202, 159, 158, 30),
(203, 157, 158, 30),
(204, 158, 157, 30),
(205, 157, 168, 30),
(206, 168, 157, 30),
(207, 153, 152, 40),
(208, 152, 153, 40),
(209, 152, 154, 70),
(210, 154, 152, 70),
(211, 151, 152, 40),
(212, 152, 151, 40),
(213, 146, 151, 50),
(214, 151, 146, 50),
(215, 145, 146, 30),
(216, 146, 145, 30),
(217, 150, 151, 40),
(218, 151, 150, 40),
(219, 147, 150, 30),
(220, 150, 147, 30),
(221, 146, 147, 40),
(222, 147, 146, 40),
(223, 147, 148, 40),
(224, 148, 147, 40),
(225, 144, 145, 120),
(226, 145, 144, 120),
(227, 148, 149, 30),
(228, 149, 148, 30),
(229, 144, 149, 90),
(230, 149, 144, 90),
(231, 155, 156, 100),
(232, 156, 155, 100),
(233, 156, 159, 30),
(234, 159, 156, 30),
(235, 150, 156, 30),
(236, 156, 150, 30),
(237, 148, 158, 70),
(238, 158, 148, 70),
(239, 149, 157, 50),
(240, 157, 149, 50),
(241, 149, 166, 40),
(242, 166, 149, 40),
(243, 143, 166, 50),
(244, 166, 143, 50),
(245, 66, 144, 40),
(246, 144, 66, 40),
(247, 50, 66, 110),
(248, 66, 50, 110),
(249, 61, 62, 110),
(250, 62, 61, 110),
(251, 53, 60, 100),
(252, 60, 53, 100),
(253, 59, 52, 110),
(254, 52, 59, 110),
(255, 51, 54, 50),
(256, 54, 51, 50),
(257, 54, 56, 20),
(258, 56, 54, 20),
(259, 56, 57, 40),
(260, 57, 56, 40),
(261, 54, 55, 40),
(262, 55, 54, 40),
(263, 55, 57, 30),
(264, 57, 55, 30),
(265, 57, 68, 40),
(266, 68, 57, 40),
(267, 57, 58, 100),
(268, 58, 57, 100),
(269, 67, 68, 100),
(270, 68, 67, 100),
(271, 72, 77, 110),
(272, 77, 72, 110),
(273, 73, 83, 110),
(274, 83, 73, 110),
(275, 77, 83, 50),
(276, 83, 77, 50),
(277, 83, 84, 20),
(278, 84, 83, 20),
(279, 84, 86, 30),
(280, 86, 84, 30),
(281, 74, 84, 100),
(282, 84, 74, 100),
(283, 75, 86, 110),
(284, 86, 75, 110),
(285, 86, 87, 30),
(286, 87, 86, 30),
(287, 55, 59, 40),
(288, 59, 55, 40),
(289, 59, 60, 30),
(290, 60, 59, 30),
(291, 59, 63, 80),
(292, 63, 59, 80),
(293, 63, 64, 30),
(294, 64, 63, 30),
(295, 60, 64, 80),
(296, 64, 60, 80),
(297, 62, 65, 60),
(298, 65, 62, 60),
(299, 64, 65, 30),
(300, 65, 64, 30),
(301, 63, 80, 80),
(302, 80, 63, 80),
(303, 77, 80, 40),
(304, 80, 77, 40),
(305, 64, 81, 70),
(306, 81, 64, 70),
(307, 80, 81, 30),
(308, 81, 80, 30),
(309, 80, 85, 80),
(310, 85, 80, 80),
(311, 84, 85, 40),
(312, 85, 84, 40),
(313, 85, 87, 30),
(314, 87, 85, 30),
(315, 81, 230, 80),
(316, 230, 81, 80),
(317, 85, 230, 30),
(318, 230, 85, 30),
(319, 88, 230, 30),
(320, 230, 88, 30),
(321, 81, 82, 30),
(322, 82, 81, 30),
(323, 82, 88, 80),
(324, 88, 82, 80),
(325, 65, 82, 70),
(326, 82, 65, 70),
(327, 29, 30, 150),
(328, 30, 29, 150),
(329, 204, 208, 110),
(330, 208, 204, 110),
(331, 206, 211, 30),
(332, 211, 206, 30),
(333, 205, 206, 20),
(334, 206, 205, 20),
(335, 205, 204, 40),
(336, 204, 205, 40),
(337, 167, 168, 40),
(338, 168, 167, 40),
(339, 167, 205, 110),
(340, 205, 167, 110),
(341, 167, 174, 120),
(342, 174, 167, 120),
(343, 167, 166, 60),
(344, 166, 167, 60),
(345, 171, 172, 30),
(346, 172, 171, 30),
(347, 171, 204, 110),
(348, 204, 171, 110),
(349, 203, 204, 30),
(350, 204, 203, 30),
(351, 172, 203, 110),
(352, 203, 172, 110),
(353, 172, 173, 30),
(354, 173, 172, 30),
(355, 173, 177, 50),
(356, 177, 173, 50),
(357, 177, 178, 30),
(358, 178, 177, 30),
(359, 137, 178, 30),
(360, 178, 137, 30),
(361, 142, 143, 70),
(362, 143, 142, 70),
(363, 79, 142, 30),
(364, 142, 79, 30),
(365, 62, 66, 40),
(366, 66, 62, 40),
(367, 66, 79, 30),
(368, 79, 66, 30),
(369, 88, 89, 40),
(370, 89, 88, 40),
(371, 87, 89, 80),
(372, 89, 87, 80),
(373, 89, 91, 30),
(374, 91, 89, 30),
(375, 91, 92, 20),
(376, 92, 91, 20),
(377, 92, 93, 30),
(378, 93, 92, 30),
(379, 78, 93, 70),
(380, 93, 78, 70),
(381, 78, 170, 230),
(382, 170, 78, 230),
(383, 92, 98, 40),
(384, 98, 92, 40),
(385, 79, 94, 30),
(386, 94, 79, 30),
(387, 65, 94, 40),
(388, 94, 65, 40),
(389, 94, 95, 80),
(390, 95, 94, 80),
(391, 82, 95, 40),
(392, 95, 82, 40),
(393, 95, 96, 80),
(394, 96, 95, 80),
(395, 96, 97, 30),
(396, 97, 96, 30),
(397, 97, 98, 50),
(398, 98, 97, 50),
(399, 98, 99, 120),
(400, 99, 98, 120),
(401, 78, 99, 50),
(402, 99, 78, 50),
(403, 140, 142, 50),
(404, 142, 140, 50),
(405, 140, 141, 60),
(406, 141, 140, 60),
(407, 138, 143, 40),
(408, 143, 138, 40),
(409, 138, 139, 40),
(410, 139, 138, 40),
(411, 139, 140, 40),
(412, 140, 139, 40),
(413, 90, 139, 60),
(414, 139, 90, 60),
(415, 137, 138, 60),
(416, 138, 137, 60),
(417, 90, 137, 30),
(418, 137, 90, 30),
(419, 90, 141, 40),
(420, 141, 90, 40),
(421, 95, 141, 40),
(422, 141, 95, 40),
(423, 136, 137, 110),
(424, 137, 136, 110),
(425, 97, 136, 110),
(426, 136, 97, 110),
(427, 135, 136, 30),
(428, 136, 135, 30),
(429, 134, 135, 20),
(430, 135, 134, 20),
(431, 173, 174, 20),
(432, 174, 173, 20),
(433, 174, 175, 40),
(434, 175, 174, 40),
(435, 175, 176, 80),
(436, 176, 175, 80),
(437, 177, 180, 140),
(438, 180, 177, 140),
(439, 178, 179, 140),
(440, 179, 178, 140),
(441, 176, 180, 50),
(442, 180, 176, 50),
(443, 179, 180, 30),
(444, 180, 179, 30),
(445, 135, 179, 30),
(446, 179, 135, 30),
(447, 203, 207, 120),
(448, 207, 203, 120),
(449, 202, 203, 50),
(450, 203, 202, 50),
(451, 174, 202, 110),
(452, 202, 174, 110),
(453, 28, 202, 60),
(454, 202, 28, 60),
(455, 27, 28, 40),
(456, 28, 27, 40),
(457, 27, 201, 40),
(458, 201, 27, 40),
(459, 200, 201, 60),
(460, 201, 200, 60),
(461, 188, 200, 10),
(462, 200, 188, 10),
(463, 175, 188, 60),
(464, 188, 175, 60),
(465, 188, 189, 190),
(466, 189, 188, 190),
(467, 199, 200, 30),
(468, 200, 199, 30),
(469, 198, 201, 30),
(470, 201, 198, 30),
(471, 198, 199, 60),
(472, 199, 198, 60),
(473, 197, 198, 40),
(474, 198, 197, 40),
(475, 197, 199, 94),
(476, 199, 197, 94),
(477, 196, 197, 20),
(478, 197, 196, 20),
(479, 28, 29, 60),
(480, 29, 28, 60),
(481, 26, 27, 40),
(482, 27, 26, 40),
(483, 25, 26, 30),
(484, 26, 25, 30),
(485, 24, 25, 20),
(486, 25, 24, 20),
(487, 24, 196, 40),
(488, 196, 24, 40),
(489, 190, 196, 130),
(490, 196, 190, 130),
(491, 23, 24, 30),
(492, 24, 23, 30),
(493, 191, 196, 100),
(494, 196, 191, 100),
(495, 190, 191, 30),
(496, 191, 190, 30),
(497, 189, 190, 40),
(498, 190, 189, 40),
(499, 176, 187, 110),
(500, 187, 176, 110),
(501, 187, 189, 50),
(502, 189, 187, 50),
(503, 7, 169, 60),
(504, 169, 7, 60),
(505, 7, 8, 270),
(506, 8, 7, 270),
(507, 7, 111, 50),
(508, 111, 7, 50),
(509, 109, 111, 60),
(510, 111, 109, 60),
(511, 108, 109, 40),
(512, 109, 108, 40),
(513, 109, 110, 30),
(514, 110, 109, 30),
(515, 108, 110, 20),
(516, 110, 108, 20),
(517, 110, 112, 40),
(518, 112, 110, 40),
(519, 111, 112, 90),
(520, 112, 111, 90),
(521, 9, 112, 260),
(522, 112, 9, 260),
(523, 8, 9, 100),
(524, 9, 8, 100),
(525, 107, 108, 40),
(526, 108, 107, 40),
(527, 9, 10, 350),
(528, 10, 9, 350),
(529, 10, 114, 30),
(530, 114, 10, 30),
(531, 114, 115, 10),
(532, 115, 114, 10),
(533, 115, 116, 30),
(534, 116, 115, 30),
(535, 116, 117, 30),
(536, 117, 116, 30),
(537, 11, 117, 40),
(538, 117, 11, 40),
(539, 10, 11, 70),
(540, 11, 10, 70),
(541, 106, 107, 40),
(542, 107, 106, 40),
(543, 106, 113, 100),
(544, 113, 106, 100),
(545, 105, 106, 60),
(546, 106, 105, 60),
(547, 104, 105, 30),
(548, 105, 104, 30),
(549, 103, 104, 30),
(550, 104, 103, 30),
(551, 102, 103, 30),
(552, 103, 102, 30),
(553, 100, 102, 40),
(554, 102, 100, 40),
(555, 99, 100, 20),
(556, 100, 99, 20),
(557, 105, 116, 90),
(558, 116, 105, 90),
(559, 104, 117, 90),
(560, 117, 104, 90),
(561, 103, 118, 80),
(562, 118, 103, 80),
(563, 117, 118, 30),
(564, 118, 117, 30),
(565, 118, 119, 30),
(566, 119, 118, 30),
(567, 102, 119, 70),
(568, 119, 102, 70),
(569, 119, 120, 20),
(570, 120, 119, 20),
(571, 100, 101, 60),
(572, 101, 100, 60),
(573, 101, 120, 50),
(574, 120, 101, 50),
(575, 12, 120, 30),
(576, 120, 12, 30),
(577, 13, 101, 30),
(578, 101, 13, 30),
(579, 11, 12, 90),
(580, 12, 11, 90),
(581, 12, 13, 60),
(582, 13, 12, 60),
(583, 13, 14, 120),
(584, 14, 13, 120),
(585, 14, 127, 40),
(586, 127, 14, 40),
(587, 127, 128, 30),
(588, 128, 127, 30),
(589, 128, 129, 40),
(590, 129, 128, 40),
(591, 129, 130, 30),
(592, 130, 129, 30),
(593, 130, 131, 30),
(594, 131, 130, 30),
(595, 131, 132, 30),
(596, 132, 131, 30),
(597, 132, 133, 30),
(598, 133, 132, 30),
(599, 133, 134, 30),
(600, 134, 133, 30),
(601, 99, 121, 40),
(602, 121, 99, 40),
(603, 121, 122, 20),
(604, 122, 121, 20),
(605, 122, 123, 30),
(606, 123, 122, 30),
(607, 123, 124, 30),
(608, 124, 123, 30),
(609, 124, 125, 30),
(610, 125, 124, 30),
(611, 125, 126, 30),
(612, 126, 125, 30),
(613, 126, 134, 70),
(614, 134, 126, 70),
(615, 125, 133, 70),
(616, 133, 125, 70),
(617, 124, 132, 70),
(618, 132, 124, 70),
(619, 123, 131, 70),
(620, 131, 123, 70),
(621, 122, 130, 70),
(622, 130, 122, 70),
(623, 121, 129, 70),
(624, 129, 121, 70),
(625, 101, 127, 110),
(626, 127, 101, 110),
(627, 180, 181, 10),
(628, 181, 180, 10),
(629, 134, 181, 70),
(630, 181, 134, 70),
(631, 181, 182, 30),
(632, 182, 181, 30),
(633, 133, 182, 70),
(634, 182, 133, 70),
(635, 182, 183, 60),
(636, 183, 182, 60),
(637, 131, 183, 70),
(638, 183, 131, 70),
(639, 183, 184, 30),
(640, 184, 183, 30),
(641, 184, 185, 30),
(642, 185, 184, 30),
(643, 130, 184, 70),
(644, 184, 130, 70),
(645, 129, 185, 70),
(646, 185, 129, 70),
(647, 186, 187, 60),
(648, 187, 186, 60),
(649, 185, 186, 50),
(650, 186, 185, 50),
(651, 17, 186, 40),
(652, 186, 17, 40),
(653, 17, 128, 120),
(654, 128, 17, 120),
(655, 16, 17, 20),
(656, 17, 16, 20),
(657, 16, 127, 120),
(658, 127, 16, 120),
(659, 15, 16, 40),
(660, 16, 15, 40),
(661, 14, 15, 120),
(662, 15, 14, 120),
(663, 191, 195, 40),
(664, 195, 191, 40),
(665, 189, 192, 40),
(666, 192, 189, 40),
(667, 192, 195, 70),
(668, 195, 192, 70),
(669, 192, 193, 30),
(670, 193, 192, 30),
(671, 18, 193, 30),
(672, 193, 18, 30),
(673, 17, 18, 60),
(674, 18, 17, 60),
(675, 193, 194, 80),
(676, 194, 193, 80),
(677, 194, 195, 30),
(678, 195, 194, 30),
(679, 19, 194, 40),
(680, 194, 19, 40),
(681, 18, 19, 80),
(682, 19, 18, 80),
(683, 19, 20, 208),
(684, 20, 19, 208),
(685, 20, 21, 130),
(686, 21, 20, 130),
(687, 21, 22, 90),
(688, 22, 21, 90),
(689, 107, 231, 80),
(690, 231, 107, 80),
(691, 112, 231, 30),
(692, 231, 112, 30),
(693, 113, 231, 30),
(694, 231, 113, 30),
(695, 113, 114, 30),
(696, 114, 113, 30),
(697, 23, 232, 60),
(698, 232, 23, 60),
(699, 191, 232, 40),
(700, 232, 191, 40),
(701, 22, 232, 60),
(702, 232, 22, 60),
(703, 233, 33, 46),
(704, 33, 233, 46),
(705, 1, 233, 970),
(706, 233, 1, 970);

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
(232, 'Titik 232', '-7.0683091', '110.4202352', 'kruing raya - jati utara'),
(233, 'Titik STO', '-7.06462', '110.4123', 'STO Banyumanik');

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
  MODIFY `id_route` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=707;
--
-- AUTO_INCREMENT for table `table_titik`
--
ALTER TABLE `table_titik`
  MODIFY `id_titik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
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
