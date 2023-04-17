-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 02:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_delivery_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `district_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kawempe', 1, 5, '2023-03-23 04:00:27.798692', '2023-03-23 11:00:27.798692'),
(2, 'Mbuya', 2, 2, '2023-03-23 04:11:06.829850', '2023-03-23 11:11:06.829850'),
(3, 'Mulago', 3, 2, '2023-03-23 04:12:01.610553', '2023-03-23 11:12:01.610553'),
(4, 'Merikit', 4, 3, '2023-03-23 04:15:07.066884', '2023-03-23 11:15:07.066884'),
(7, 'Nakaloke', 2, 3, '2023-03-23 04:22:31.120944', '2023-03-23 11:22:31.120944'),
(8, 'Amagor', 3, 8, '2023-03-23 04:34:26.048728', '2023-03-23 11:41:42.613122');

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `region_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Busia1', 1, 3, '2023-03-23 03:06:57.951519', '2023-03-23 11:46:09.935398'),
(2, 'Kampala', 2, 3, '2023-03-23 03:12:37.119975', '2023-03-23 03:12:37.119975'),
(3, 'Tororo', 3, 7, '2023-03-23 03:14:41.206170', '2023-03-23 03:14:41.206170'),
(4, 'Mukono', 3, 7, '2023-03-23 03:18:45.900562', '2023-03-23 03:18:45.900562'),
(6, 'Masaka', 4, 5, '2023-03-23 03:27:41.708771', '2023-03-23 03:27:41.708771'),
(7, 'Mbarara', 4, 3, '2023-03-23 04:17:27.962963', '2023-03-23 04:17:27.962963');

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_categories`
--

INSERT INTO `food_categories` (`id`, `name`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Supper1', 'image', 8, '2023-03-23 23:21:06.634706', '2023-03-24 06:36:13.588578'),
(2, 'Breakfast', 'image', 4, '2023-03-23 23:25:16.756941', '2023-03-23 23:25:16.756941'),
(3, 'Dinner', 'image', 4, '2023-03-23 23:27:13.140934', '2023-03-23 23:27:13.140934'),
(5, 'Lunch', 'image', 2, '2023-03-23 23:37:36.788478', '2023-03-23 23:37:36.788478'),
(6, 'AfterSales', 'image', 4, '2023-03-24 00:12:59.773063', '2023-03-24 00:12:59.773063');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `price_unit` varchar(10) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sub_food_category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `price`, `price_unit`, `image`, `stock`, `sub_food_category_id`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'break1', '25000', 'UGX', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT1I-V3bYzqC59QwWsOEZxSCWt0fvA_rJFp9o2e25-lwl20HRLr', 50, 1, 4, '2023-03-27 04:02:08.529028', '2023-03-27 12:00:38.046089'),
(3, 'break4', '25000', 'UGX', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt1LOKrRXOiFkVQPyG75BvQtuOCopfg_3MLbcUybBTZ7GI3eFx', 150, 1, 4, '2023-03-27 04:05:10.051359', '2023-03-27 04:05:10.051359'),
(4, 'burger2', '25000', '5000', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSjR6EAZZFc9J-vgto4icAhphx1W8BY0We7juh0BmhiSxNJ8F3c', 200, 1, 2, '2023-03-27 04:09:43.473051', '2023-03-27 04:09:43.473051'),
(5, 'chiken2', '25000', '5000', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQHvVe4bLUfvbXbKKozv47F36yrhLhiE1lsxF-uyVpPJ237kL3_', 100, 1, 2, '2023-03-27 04:11:12.572120', '2023-03-27 04:11:12.572120'),
(6, 'full-chiken', '25000', '5000', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt1LOKrRXOiFkVQPyG75BvQtuOCopfg_3MLbcUybBTZ7GI3eFx', 100, 1, 2, '2023-03-27 04:16:00.550208', '2023-03-27 04:16:00.550208'),
(7, 'grilled-chiken', '25000', '5000', 'https://lh3.googleusercontent.com/aEkemioajdCkTi3zQaTZ4l0F41jN-l0eSf6bNVJXGAiy8j-UsVWgmfWJzVlIISs5xtoU7jXmSQ8or_jITT_ds3yEEQgWdZGprorQwki9', 100, 1, 3, '2023-03-27 04:19:11.010887', '2023-03-27 04:19:11.010887'),
(8, 'grilled-fish', '25000', '5000', 'https://lh3.googleusercontent.com/DWSZmhqLKq98_pVI6oeuW0PUZBMdkjWxr1p3Ql4hKDTH-G3g6O_zlSkIZsNCE1-yte1Igm6R87stCkndTrpqKakCuvVFBlrK-E40-FI', 100, 1, 3, '2023-03-27 04:20:38.862580', '2023-03-27 04:20:38.862580'),
(9, 'luwombo', '25000', '5000', 'https://lh3.googleusercontent.com/1sUsutXePN0TjuHbNTLWPAzK-G94mJyIeWKO4YqPUdGznTgfuWQVLnbqpmaSGqAFDlZdHRjhwf0D6msJhXY-t0vvOnW2OY_sKlyYdSI', 100, 1, 3, '2023-03-27 04:22:09.585251', '2023-03-27 04:22:09.585251'),
(10, 'pasta', '25000', '5000', 'https://lh3.googleusercontent.com/oZxEfAnNU0Ovs0Lpd01QMqx94uIc7BQDUQ5XqYlDaR4NzXQEYF9bjPxVJbYLLQyccK-GtfD1r1n83C8Xc2vcUXDxCatwNRwMw3_M0hA', 100, 1, 3, '2023-03-27 04:24:31.283002', '2023-03-27 04:24:31.283002'),
(11, 'pasta1', '25000', '5000', 'https://lh3.googleusercontent.com/5IjjV4CjiJx_E5pJE4BhWRI1CKmo9cnmKVnwKoROZq1cKS6hvXpGJViLoTWuQyuQydPmTNf9AZYATB3NVD9DMjFzya74RFx1-8MHFxnN', 100, 1, 7, '2023-03-27 04:27:16.896588', '2023-03-27 04:27:16.896588'),
(12, 'pizza2', '25000', '5000', 'https://lh3.googleusercontent.com/RGdQoK_rRLYd6VQT9j1CYlg5u7HLlD3mtnt6NYl1FIB4doschTvFwSuIwts0A6eFOeWh9bg-YZirUIFVNI4M4xVDI9n8k5M0IDIgccD4yA', 105, 1, 7, '2023-03-27 04:29:14.674719', '2023-03-27 04:29:14.674719'),
(13, 'pizza3', '25000', '5000', 'https://lh3.googleusercontent.com/UB8HLkpadAN0mlgJ2wHRGLumMGbt2cKBFt0-Vt-5Sp0vIYkDd8PXa7uPOQEMNIC7e5TrrcwtntbPb-UZdOfbdqqyBg5BKf-eRhS-cLKc', 200, 1, 7, '2023-03-27 04:30:15.271173', '2023-03-27 04:30:15.271173'),
(14, 'pizza4', '25000', '5000', 'https://lh3.googleusercontent.com/_26vKBQ79RFr-SO9ZVYLiXxM9mD7U6qgzVK2Zpv0rj64t5yOxsRS_Yk5vKKHfUUaKOqZ0F8Mbp2jO3PI6VEV_U7rhISuWGsI-0lOxSaJc', 200, 1, 7, '2023-03-27 04:31:01.406576', '2023-03-27 04:31:01.406576'),
(15, 'pizzaa', '25000', '5000', 'https://lh3.googleusercontent.com/GVryg39MD1B50iBPFwsFCS2YxbjeisQc6-kuyjk9sXuZ0TcHqfZppcHlFbratvlh3QgUBin_JjNmg09osW6qa8DoADcRT1bZQ1breQxi', 102, 1, 8, '2023-03-27 04:37:18.542063', '2023-03-27 04:37:18.542063'),
(16, 'rice(2)', '25000', '5000', 'https://lh3.googleusercontent.com/KO6Dmpp2eGjVosZklm7rgy3rl6qJ2r6A4YyvqL-EwK2qsf0ljsHZhXBCv_xvUxfH7hBxdym1YY2SrfufdfS8t9VdMxdTDhJ0XeoGjJpzcw', 100, 1, 8, '2023-03-27 04:38:49.188955', '2023-03-27 04:38:49.188955'),
(17, 'slider03', '25000', '5000', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTY3OTkxNzE4NCwianRpIjoiMjVlYTk4YTctYmRiZS00ZmVjLTgwNWUtMGFlMDM0M2ViMTA2IiwidHlwZSI6ImFjY2VzcyIsInN1YiI6NSwibmJmIjoxNjc5OTE3MTg0LCJleHA', 100, 1, 8, '2023-03-27 04:40:36.541434', '2023-03-27 04:40:36.541434'),
(18, 'vegetarian', '25000', '5000', 'https://lh3.googleusercontent.com/f34-lO0S40e2Mff04foy4CxqlPgzEqEox1HXcDouXUx7yhu0popkbuGNPU-V2ISPtrkbFcDL6VPt6dAhvxD__cGeFPi0JZtgLV0SXwI', 95, 1, 8, '2023-03-27 04:41:46.186689', '2023-03-27 04:41:46.186689'),
(19, 'blacklabel', '25000', '5000', 'https://lh3.googleusercontent.com/IpQQgLDGWZDqBjja8T_4bZxuWOJpJoEJ5ap36oJ2N6IJgWIvstAfyHM7_haThzxwgB1vlOGo8Iyvy7kD5htvNIN4dohz0X8i_v9tyWP9SA', 500, 5, 9, '2023-03-27 05:10:48.334867', '2023-03-27 05:10:48.334867'),
(20, 'blue-label', '25000', '5000', 'https://lh3.googleusercontent.com/SxcH4E-xtjwywTsHwZoRIH9kifSB_gzx9VyIrVBVdS69laI2YGobfMYqgzgdbTwAdVqjHY2HO2JfHW_3wFGVA9uJI2K01-2pvSJCiVJq', 200, 5, 9, '2023-03-27 05:11:55.316946', '2023-03-27 05:11:55.316946'),
(21, 'cocktail', '25000', '5000', 'https://lh3.googleusercontent.com/yudJ8HggJVWa-rB2upfDU0TZIqWLjXXk0cw0O22WmhxZxyFTej8PoH6Dc6HWohsfL6U4jcCKMFe10Vq3gUW-gFSITqlJscJwX4oPmzZpxA', 300, 5, 9, '2023-03-27 05:13:21.694601', '2023-03-27 05:13:21.694601'),
(22, 'heineken', '25000', '5000', 'https://lh3.googleusercontent.com/ogeAS5YDqvpI3fC2xnzMHNyxRJuHiwE1zuyV1xpP2d5T11e5Svj18fNqYrLdTeDLJcrkBE_GvlvaylvvBg-wLutI6z7uRSe2oiFi13t4', 400, 5, 7, '2023-03-27 05:15:51.743347', '2023-03-27 05:15:51.743347'),
(23, 'jameson', '25000', '5000', 'https://lh3.googleusercontent.com/ICDBoS8AYXXJ1-XvhaPTZbDVzNV3exkX8qr86Ly2OUnoda7rsmvw3TqK21bFj3ppZS8NjbMKS_-XCQUuwumyNrbJyQlXZOFm-Vs-f3M00Q', 100, 5, 7, '2023-03-27 05:18:55.310505', '2023-03-27 05:18:55.310505'),
(24, 'juice', '25000', '5000', 'https://lh3.googleusercontent.com/0SYc6Bp9-v2Qy9MCpMMCQQvwS27oY35ndLCiCqdSBhxZhmGx4fZCg4D50ur6mQ4gLqT2g9DZ7VJoAwICpz5zpdQC5uAVHTnlKpoJzPMN', 150, 5, 7, '2023-03-27 05:19:58.354019', '2023-03-27 05:19:58.354019'),
(25, 'juice2', '25000', '5000', 'https://lh3.googleusercontent.com/ecKAMNMxoyrH0TnUHV7sUnBMT58djSemowAetjTfwzMHCptpmklX1z9_NuXxN87EXdfRXGvoq55dDr5J07wKhyouUWjuvmvIOy7rXHdJ', 100, 5, 2, '2023-03-27 05:22:10.017947', '2023-03-27 05:22:10.017947'),
(26, 'juice3', '25000', '5000', 'https://lh3.googleusercontent.com/aRWzWXF6ZGcYfXIus0rDj_bAAWUWfQ8Vc0bu39tE7uqJyJgYfzeUjRerAxGTRLggpCBoUnCPyxBDS3SDEOkZp_VzPNH7TlGSNaFg4rceUA', 85, 5, 2, '2023-03-27 05:24:20.782806', '2023-03-27 05:24:20.782806'),
(27, 'lemon-juice', '25000', '5000', 'https://lh3.googleusercontent.com/SUXhrciwRMcvcPYVhQvvhbBBZGO3-VFGnUT06tsV38MIPRZNmlHrYGked3ZWvUZ4hS2ZccSiaIJRGJB0Rjia1HetFE7Z5GZMAfrlcf_z', 95, 5, 2, '2023-03-27 05:25:21.882731', '2023-03-27 05:25:21.882731'),
(28, 'milk-shake', '25000', '5000', 'https://lh3.googleusercontent.com/xykaatDUWdRXpZokF56R3MQrqhKo_l4TMXI323b6Rzw5WbCKlGMk2xZ0qO_bnOjoIS7iIRlXz8YCpUy5SfNiUM1qT9YUuSfu0PoXZXMt', 95, 5, 2, '2023-03-27 05:27:39.112532', '2023-03-27 05:27:39.112532'),
(29, 'orange-juice', '25000', '5000', 'https://lh3.googleusercontent.com/a7sCHVtGAlKMNq6Xlflw6i1Os3Lh4K4l5hTGf84g-1O9bfvKQIDF6KhiDHjmKtu4-xp6rKD7jMrCL07cYu4YPSy50_X1N7yCkU1_mGk', 75, 5, 2, '2023-03-27 05:28:49.657607', '2023-03-27 05:28:49.657607'),
(30, 'soda', '100000', '1000', 'https://lh3.googleusercontent.com/EBijlRixK7Hq-aowqLbpXLokNZI3nroJpOKlC0Ud8t7JjV-XRwKeoQfgfdhxgau3MwQIHvLVgMxr-zGY315WScaBwiFMuZSNTDEMLc22', 100, 5, 4, '2023-03-27 05:35:02.602746', '2023-03-27 05:35:02.602746'),
(31, 'strawberry-shake', '50000', '5000', 'https://lh3.googleusercontent.com/reIMoatR0nqrZdIyG4FerfQ1hCMYHBQtZBPmSe3e8UVK0mEvyQihOmjof2X1G9vuI9OGOUjPBdxlid7O9Fct7EcKrgPlBRIBmfvF-VmFmA', 100, 5, 4, '2023-03-27 05:36:52.043400', '2023-03-27 05:36:52.043400'),
(32, 'whisky', '50000', '5000', 'https://lh3.googleusercontent.com/nm0ews4mYQeG_kCivYm3E3iJUPXJQ157mHAqdKGK8runKZ5Ib6gcAjvM1cyupG-aRf7TpAYyFyRfgvygFHmGA6t6xa8LMIi8YR8ogJ4l', 100, 5, 4, '2023-03-27 05:37:56.481433', '2023-03-27 05:37:56.481433'),
(33, 'beef', '50000', '5000', 'https://lh3.googleusercontent.com/eA4lhyvyp6aE_jZMuTVLKwTX1F5oMDT6BMx4_SAHQInm-tkimVufGIpjz5dSnuhPnQvRsSs8MPWJIB5Vn244JknE1iX9Xh1rJ-rDFfjJdQ', 150, 2, 9, '2023-03-27 05:44:27.285946', '2023-03-27 05:44:27.285946'),
(34, 'burger1', '50000', '5000', 'https://lh3.googleusercontent.com/ISmG22UZHZK47wXMLqBrZHeCANpxmxzS5O-IeROwhB9GOW8jLuIxx4H6wrIB_AMhLoZwEX5hEKRralnog2TGdXx6YeJ928V5mkoQ2B3Qkw', 120, 2, 9, '2023-03-27 05:46:11.835600', '2023-03-27 05:46:11.835600'),
(35, 'chiken', '50000', '5000', 'https://lh3.googleusercontent.com/spc4mC6sYsGYUH5LiiXVzw24yR9_kJ7HI9dW9NjyP230Cp1A0j7f40YRQzqfpp5R_9CoIu99ZSRWZXiP0JZVtmViNKeGo995fN3lgfT-', 100, 2, 9, '2023-03-27 05:47:34.244825', '2023-03-27 05:47:34.244825'),
(36, 'chips1', '50000', '5000', 'https://lh3.googleusercontent.com/bBuG65UA9Ms4aps1IGSPV80UES6qo3ZTWR2dKB64aCbzAaSE4jU_RSSkYbOXR_x7EawS_q4Ze039yOECaf_iI6R_dwqoGhV_QPulNUJb', 150, 2, 5, '2023-03-27 05:51:10.807897', '2023-03-27 05:51:10.807897'),
(37, 'coffee', '25000', '2500', 'https://lh3.googleusercontent.com/FwvXF-TNC987ZG9PEdjKQCGWNWNVr54DwKJt7AqFVnb49r4PEN9VMxbFTp03rIP74DmA-G_nn3QERmklvfWmx59lE2AjgulXwfDvI7WJ', 95, 2, 5, '2023-03-27 05:54:09.155040', '2023-03-27 05:54:09.155040'),
(38, 'egg&bread', '25000', '2500', 'https://lh3.googleusercontent.com/83vJgtnbbAC4ZvtzSszJVsENmrUqiI5kFyMOWBT5ns5pqyXd29HVcPqgY3wo6EY0QZQTD8uEEzsWdhajM2Rkg9SSnr-MdCHxKny7xHaSTg', 85, 2, 5, '2023-03-27 05:55:15.664153', '2023-03-27 05:55:15.664153'),
(39, 'fruit-salad', '25000', '2500', 'https://lh3.googleusercontent.com/TAXKr0ZGL3MXJyoyZ5_TKBjhVGUft-cHD7wewLkFherCsX1x7Eie_sWVx0QRmZwPWJXDioagBfrOqeQ-gUfLhca7TpQqsGcNRVSZABOH', 85, 2, 5, '2023-03-27 05:56:07.449228', '2023-03-27 05:56:07.449228'),
(40, 'grilled-meat', '60000', '6000', 'https://lh3.googleusercontent.com/CBfXymo8bASNOLZOkGaeVDOnvv4PdiZHbEZrR9gaz7mtUw4MiufWtxgojaroJpuwkH2Wlv95tu1d4m8GO5f2duibQStE-sLWYaLJFPrW6g', 120, 2, 3, '2023-03-27 05:58:50.280019', '2023-03-27 05:58:50.280019'),
(41, 'grilled-salmon-fillet', '60000', '6000', 'https://lh3.googleusercontent.com/_n7FHJGG0AC2pskjMeiQlYe7GnioxtM0ojgi-HAvoRvDNqWfGufVNGqNTlDaO26bxvjcX3Vv_e2IaDiC6xwiE5-oZ8tp888UWuzpwvWs', 120, 2, 3, '2023-03-27 06:00:11.117503', '2023-03-27 06:00:11.117503'),
(42, 'noodles', '6000', '3000', 'https://lh3.googleusercontent.com/P3Dazd6dk8BHD1UVDZNY_SY_BgZLcQH4NDQ6mRy7pJ4aAcQrdWOiKg4L-BqyD_DmYOZvBEG_Bh6sbfEKK5AOhebBBpmmUtERIe1JhzmF', 50, 2, 3, '2023-03-27 06:01:10.725579', '2023-03-27 06:01:10.725579'),
(43, 'pastas', '25000', '5000', 'https://lh3.googleusercontent.com/dN_hNdXw8gDYdbB2kzjfu4ars9QkhL3ezQNN-PbV2CFyK06cL8w_e71xad3BOdGBazsKNdNMs81zXK2FXaRaGrDgG-hx1D2m38kZ7H8', 110, 2, 3, '2023-03-27 06:07:09.972495', '2023-03-27 06:07:09.972495'),
(44, 'pizzas', '25000', '5000', 'https://lh3.googleusercontent.com/7gMF5lbiiyaQIY2oyWQlMH8uQBncsr0m5YTGTeetKKRdVjupdusZ6F1LqDaXbt2fJyqEDjoZ0aMakFY1KSBQ94WEbsymhgMJ0aaOMu_g', 110, 2, 3, '2023-03-27 06:08:05.022761', '2023-03-27 06:08:05.022761'),
(45, 'sea', '25000', '5000', 'https://lh3.googleusercontent.com/XJJoRlhAncNTs7WCXFhPjAsIWM4Nw8nbGI3ySrwegPBattSn7OAQNf2M_mIqpE418gwxttZ6-Kxk7T3GzjbxLZjMmiliLcRycGcpUZM', 90, 2, 3, '2023-03-27 06:09:14.890941', '2023-03-27 06:09:14.890941'),
(46, 'sliders', '25000', '5000', 'https://lh3.googleusercontent.com/5WhVY3tE5akzhFj0IsxbG3EjsA4c6rHAufRk1D53Ucyhr4FcCBW9ABzd7ROVLWfDQ-l-DxEWYa3BAuTz7RaWdwuaJtFVO5GqLKU0wPf7Bg', 80, 2, 3, '2023-03-27 06:10:10.259138', '2023-03-27 06:10:10.259138'),
(47, 'cake', '250000', '50000', 'https://lh3.googleusercontent.com/73Vln1-BNQn-tWSQnz3VOGVijbKIUtGXUkp1AmWiYSciYvxTY5lqH3HLSdPC0Agf2pCeyaaZprmzOPJkjqo3SD6xuVb6KGNpZnV_PNM', 50, 3, 7, '2023-03-27 06:13:17.280021', '2023-03-27 06:13:17.280021'),
(48, 'chocolate', '25000', '5000', 'https://lh3.googleusercontent.com/Ep51Vro4vaHblxQXGz2ztYdcsaS-O5mROi9KxPgCF1IEbYgR54ywKUYAmKMH37jJIp-OlmxmfuQHk6nHNkdW29XsjlmZjYNAOzFNZI9K', 80, 3, 7, '2023-03-27 06:14:21.214523', '2023-03-27 06:14:21.214523'),
(49, 'creamy cup cakes', '25000', '5000', 'https://lh3.googleusercontent.com/bBGloodvDOpolAXA85nYfxbJyMNIepPDWzisLEcOphDTpghPMfn6vklvohVMQs9hYnD4iZKRWTfVlsnnQi6NzE-L8cPM7KdkDI6Gv5xF', 70, 3, 7, '2023-03-27 06:15:21.738201', '2023-03-27 06:15:21.738201'),
(50, 'cup cake', '20000', '3000', 'https://lh3.googleusercontent.com/bBGloodvDOpolAXA85nYfxbJyMNIepPDWzisLEcOphDTpghPMfn6vklvohVMQs9hYnD4iZKRWTfVlsnnQi6NzE-L8cPM7KdkDI6Gv5xF', 60, 3, 7, '2023-03-27 06:16:32.187402', '2023-03-27 06:16:32.187402'),
(51, 'rolex', '20000', '3000', 'https://lh3.googleusercontent.com/ZRG5BCEDGBNHA9S_uaB29nzGB5l7pzvwLNscZetjvg_uYizjmsdgEnUKHaTY3vBQSIn5I2Xd_JRTEQuvaG2g93CNxpmWQ8fVWMnkHdmv', 40, 3, 4, '2023-03-27 06:19:02.429322', '2023-03-27 06:19:02.429322'),
(52, 'sandwich', '25000', '5000', 'https://lh3.googleusercontent.com/AOIXvJffq55ztAwJBxjB6R-yjN2CDCV5TzwlyOaieHHt2M-f0cha903ECOyg1dlzQIzmKRr6oYFGyNhNA5CeDy38yBWo_JJuxAx_Ar65', 30, 3, 4, '2023-03-27 06:19:59.239396', '2023-03-27 06:19:59.239396'),
(53, 'side', '25000', '5000', 'https://lh3.googleusercontent.com/jb0pKmqcP-WMqCGQU0Fwgta5Euv6UHd_bye0seFPkyy09SNHXqBv_MIvbiYap7jYeCteAP6JiXMpCs7JlAJNTTjhar0oSSNa2xRz7BZiHg', 90, 3, 4, '2023-03-27 06:21:55.795135', '2023-03-27 06:21:55.795135'),
(54, 'sliders1', '25000', '5000', 'https://lh3.googleusercontent.com/g0mS5_dYVx46Efc_r_qRS_A6sfprfV_ZaIWPg9E-OBIHq8_pYO77Ilcg9pRcnOmZ3xORN3N_LCyFnbINzhy5P_YYlD8_24G4uyaOapwT', 90, 3, 4, '2023-03-27 06:23:16.524596', '2023-03-27 06:23:16.524596'),
(55, 'starter', '25000', '5000', 'https://lh3.googleusercontent.com/dlLnQjg3XGfNY8MY5-1Hli8wZPN8XPxqoNKL6058zMb-shkk67yDoJmeKix9F0ICI1nYTOCtP9P_w4r5lmxKYpHZVWFiye2-jVv7rOE', 50, 3, 9, '2023-03-27 06:25:39.036388', '2023-03-27 06:25:39.036388'),
(56, 'strawberry-parfait', '25000', '500', 'https://lh3.googleusercontent.com/dlLnQjg3XGfNY8MY5-1Hli8wZPN8XPxqoNKL6058zMb-shkk67yDoJmeKix9F0ICI1nYTOCtP9P_w4r5lmxKYpHZVWFiye2-jVv7rOE', 150, 3, 9, '2023-03-27 06:27:20.605965', '2023-03-27 06:27:20.605965'),
(58, 'vegetable-salad', '25000', '500', 'https://lh3.googleusercontent.com/ZnqjAdgiClu7i-OIAJdpEKGj6JWGA6NEnoPJ1Ze_1W7OXN9VTLFkUQZVRphnNpfB_Zws9ryl0SkUC_jHuv34khYs_8pIfO0EE3rHsxw', 100, 3, 9, '2023-03-27 06:31:16.968712', '2023-03-27 06:31:16.968712');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `food_item_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `quantity`, `status`, `address_id`, `created_by`, `food_item_id`, `created_at`, `updated_at`) VALUES
(2, '5kgs', 'confirmed', 2, 9, 3, '2023-03-27 06:38:50.072845', '2023-03-27 13:44:51.941730'),
(4, '4kgs', 'Confirmed', 3, 9, 4, '2023-03-27 07:04:24.616134', '2023-03-27 07:04:24.616134');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Southern Region1 ', 7, '2023-03-23 02:41:30.538135', '2023-03-23 11:47:25.471932'),
(2, 'Central Region ', 2, '2023-03-23 02:58:25.841157', '2023-03-23 09:58:25.841157'),
(3, 'Western Region ', 3, '2023-03-23 03:01:05.749804', '2023-03-23 10:01:05.749804'),
(4, 'Eastern Region ', 5, '2023-03-23 03:27:06.797518', '2023-03-23 10:27:06.797518');

-- --------------------------------------------------------

--
-- Table structure for table `sub_food_categories`
--

CREATE TABLE `sub_food_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `food_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_food_categories`
--

INSERT INTO `sub_food_categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`, `food_category_id`) VALUES
(1, 'Fast foods', 2, '2023-03-24 00:01:35.854679', '2023-03-24 07:31:17.430927', 1),
(2, 'Continental foods', 3, '2023-03-24 00:08:05.207088', '2023-03-24 00:08:05.207088', 2),
(3, 'Deserts', 3, '2023-03-24 00:08:37.443483', '2023-03-24 00:08:37.443483', 3),
(5, 'Beverages', 4, '2023-03-24 00:11:38.028053', '2023-03-24 00:11:38.028053', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `user_type`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Okem Benard', 'benard@gmail.com', '0745634233', 'Customer', 'sha256$y0zHWODiE5cAtcMQ$2dbbfea867ae7ff1781c6349c80edbb940d3fc61eb258b32d9af0d148b95bd5a', '2023-03-22 02:58:01.022943', '2023-03-22 02:58:01.022943'),
(2, 'Abbo Fulumera', 'fulumera@gmail.com', '0787807880', 'Customer', 'sha256$jtD26s3ULimqN4P9$b9c0be099a749fc5c5b3020ed9751db73fcd03fcd2a5a4af35a2d199a84e7b0f', '2023-03-22 04:59:51.984989', '2023-03-22 04:59:51.984989'),
(3, 'Adee Joyctin', 'adeea@gmail.com', '0787807881', 'Customer', 'pbkdf2:sha256:260000$nYBkrLeKIXZjHJOb$a794d4b553302c0c7ef6d6993cab4e590b524f34a161ec91cc603afc656b5d01', '2023-03-22 05:01:35.134881', '2023-03-22 12:51:38.853018'),
(4, 'Atim Sarah', 'atim@gmail.com', '0787807882', 'Customer', 'sha256$A7jij1ElSEH5JkYe$3b96e2f1fda51e3953dd545a89e919024b327a00c23382e080a568cfe4065fbb', '2023-03-22 05:02:35.826738', '2023-03-22 05:02:35.826738'),
(5, 'Balinat Annet', 'annet@gmail.com', '0787807883', 'Customer', 'sha256$3O9VKaPGuCSCEjc0$6323d25becb11dea084a486c8e369910c325b290f3f5b0e3c8635d37e0ea1908', '2023-03-22 05:03:27.721472', '2023-03-22 05:03:27.721472'),
(7, 'Mwanguzi Joshua Emma', 'josh@gmail.com', '0787807886', 'Customer', 'sha256$7cqBIiSFjlZIvXsF$8696a7fde4e5a0dcd42763559bfb75b95aeb661281593f701b42d608367fd8ff', '2023-03-22 06:02:48.736809', '2023-03-22 13:02:48.736809'),
(8, 'Akello jane', 'jane@gmail.com', '0787807888', 'Customer', 'sha256$RTHcnlcRuRgDttPD$6e820bac2e2eace1cb3bdf09337a259f2b1dc30c34adb61bd61dcf047eeb5780', '2023-03-23 03:21:45.042020', '2023-03-23 10:21:45.042020'),
(9, 'Doreen Victory', 'victory@gmail.com', '0787807889', 'Customer', 'sha256$6zr4Y1RsILiBEugo$b1b01d3b448b6db7a9e31f9201fd7572810bc6883f75de91f40182a0a416e854', '2023-03-23 03:22:51.332196', '2023-03-23 10:22:51.332196');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `sub_food_category_id` (`sub_food_category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `food_item_id` (`food_item_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `sub_food_categories`
--
ALTER TABLE `sub_food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `food_category_id` (`food_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_food_categories`
--
ALTER TABLE `sub_food_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `districts_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD CONSTRAINT `food_categories_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `food_items`
--
ALTER TABLE `food_items`
  ADD CONSTRAINT `food_items_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `food_items_ibfk_2` FOREIGN KEY (`sub_food_category_id`) REFERENCES `sub_food_categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`food_item_id`) REFERENCES `food_items` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_food_categories`
--
ALTER TABLE `sub_food_categories`
  ADD CONSTRAINT `sub_food_categories_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sub_food_categories_ibfk_2` FOREIGN KEY (`food_category_id`) REFERENCES `food_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
