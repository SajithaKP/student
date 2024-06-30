-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 05:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course`, `department`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', '2024-06-30 00:25:41', '2024-06-30 00:25:41'),
(2, 'Mathematics', 'Maths', '2024-06-30 00:25:41', '2024-06-30 00:25:41'),
(3, 'Science', 'Science', '2024-06-30 00:25:41', '2024-06-30 00:25:41'),
(4, 'Economics', 'Science', '2024-06-30 00:25:41', '2024-06-30 00:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2024_06_29_174324_create_parent_table', 1),
(9, '2024_06_29_174643_create_course_table', 1),
(10, '2024_06_29_193425_create_students_table', 1),
(11, '2024_06_30_054626_create_student_opted_course_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Anastasia Senger II', 'oleta.braun@example.net', '2024-06-30 00:26:38', '2024-06-30 00:26:38'),
(2, 'Aurelia Kertzmann', 'opal01@example.com', '2024-06-30 00:26:38', '2024-06-30 00:26:38'),
(3, 'Adaline Wolf', 'baby.sauer@example.net', '2024-06-30 00:26:38', '2024-06-30 00:26:38'),
(4, 'Miss Rosanna Shields', 'doyle.melyssa@example.com', '2024-06-30 00:26:38', '2024-06-30 00:26:38'),
(5, 'Nathen Lindgren', 'kuphal.schuyler@example.net', '2024-06-30 00:26:38', '2024-06-30 00:26:38'),
(6, 'Lora Grimes', 'pansy.littel@example.net', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(7, 'Rossie Hagenes', 'gillian15@example.com', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(8, 'Sandrine Lueilwitz', 'bart79@example.net', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(9, 'Virginie Hane', 'caterina23@example.com', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(10, 'Trinity Crist', 'leonor17@example.com', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(11, 'Chelsey Bahringer', 'sadye84@example.org', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(12, 'Heidi Zulauf', 'igerhold@example.net', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(13, 'Dulce Torphy', 'brendan.mraz@example.com', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(14, 'Jerod Stamm', 'ollie19@example.org', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(15, 'Destini Yost', 'rgoyette@example.net', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(16, 'Mr. Graham Schultz', 'virginie.baumbach@example.com', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(17, 'Hoyt Osinski IV', 'vandervort.vella@example.org', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(18, 'Mr. Avery Little', 'lehner.darwin@example.net', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(19, 'Dr. Nyasia Hudson DVM', 'liliana.ziemann@example.org', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(20, 'Miss Maudie Leuschke', 'katheryn.stracke@example.com', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(21, 'Effie Ferry', 'lfarrell@example.net', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(22, 'Myrl Harber IV', 'johnston.elisha@example.org', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(23, 'Prof. Rosetta Reichel', 'wrunolfsdottir@example.net', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(24, 'Prof. Charley Kassulke MD', 'hailie04@example.org', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(25, 'Mr. Ulices Gerhold', 'tierra.langworth@example.com', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(26, 'Mr. Sylvan Torp', 'mpfannerstill@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(27, 'Prof. Cecile Spinka', 'streich.russell@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(28, 'Dr. Lavern Goldner II', 'shania.rutherford@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(29, 'Dr. Vivien Klein', 'laurianne.white@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(30, 'Eveline Shanahan', 'dterry@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(31, 'Prof. Dewayne Boyle V', 'larue.pollich@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(32, 'Candida Volkman', 'gottlieb.ova@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(33, 'Alexa Mraz', 'emmett.zemlak@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(34, 'Joshuah Bailey', 'koch.adan@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(35, 'Agnes Pollich III', 'luigi.collins@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(36, 'Reed Mertz I', 'fletcher.maggio@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(37, 'Nettie West', 'price.zemlak@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(38, 'Mrs. Isabella Rau', 'giovanni88@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(39, 'Aurelie Lueilwitz', 'obie.bauch@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(40, 'Mr. Jameson Wilkinson', 'hill.jordy@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(41, 'Mrs. Bernadette Huel II', 'rigoberto23@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(42, 'Kallie Renner', 'ahmed.lowe@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(43, 'Prof. Mark Ernser III', 'stokes.jadyn@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(44, 'German Pagac', 'tremblay.nona@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(45, 'Trinity Smitham Sr.', 'grant.citlalli@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(46, 'Mrs. Aisha Price', 'irenner@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(47, 'Mrs. Gwendolyn Pfannerstill', 'hoeger.marie@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(48, 'Prof. Flossie Schamberger I', 'herta.trantow@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(49, 'Prof. Kariane Erdman', 'gulgowski.cesar@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(50, 'Mrs. Bridie Ortiz', 'adella30@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(51, 'Cathy Jacobson Jr.', 'nia29@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(52, 'Dr. Rosendo Lind', 'nikki.larkin@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(53, 'Prof. Dakota Hyatt', 'cummings.werner@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(54, 'Malinda Schaden', 'autumn.bartell@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(55, 'Saul Kuvalis', 'sklocko@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(56, 'Nasir Mayer', 'vaughn82@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(57, 'Dr. Tracey Schimmel Sr.', 'dana.toy@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(58, 'Marlon Klein', 'gus65@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(59, 'Graham Smith DDS', 'rosina.dickens@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(60, 'Hubert Wiza', 'cherzog@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(61, 'Mattie Greenholt PhD', 'turner.werner@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(62, 'Lindsey Rippin', 'ena11@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(63, 'Mrs. Elyse Howell', 'audra.feeney@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(64, 'Ms. Eldora Feil', 'sroberts@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(65, 'Tyler Jaskolski', 'anjali.harvey@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(66, 'Prof. Gina Huel', 'sfadel@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(67, 'Dameon Rempel', 'flossie61@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(68, 'Wilfred Torp', 'jackson76@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(69, 'Rosalind Ebert MD', 'lizeth.nader@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(70, 'Mr. Willy Dietrich', 'earnest98@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(71, 'Prof. Russell Shields', 'angelina50@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(72, 'Colleen Frami', 'rath.lexus@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(73, 'Dr. Fredrick Kuvalis DVM', 'lang.delta@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(74, 'Mrs. Bettye Stiedemann', 'katelin.hill@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(75, 'Julio Gulgowski', 'beatrice28@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(76, 'Sydnee Feest', 'alessandro.spinka@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(77, 'Miss Lilyan Legros', 'ikoepp@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(78, 'Dulce Nienow', 'ruthie85@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(79, 'Rachael McGlynn', 'fletcher04@example.org', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(80, 'Prof. Seth Skiles PhD', 'rfriesen@example.com', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(81, 'Sherman Cremin', 'kenton09@example.net', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(82, 'Johanna Eichmann', 'homenick.letha@example.com', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(83, 'Noemy Schamberger', 'xcrooks@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(84, 'Alda Kuhic DDS', 'keebler.antwon@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(85, 'Fausto Wyman Sr.', 'cartwright.veronica@example.com', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(86, 'Herman Morissette DVM', 'arjun78@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(87, 'Estella Goyette', 'powlowski.rozella@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(88, 'Prof. Jamel Kihn', 'feest.leda@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(89, 'Dawn Trantow', 'sid15@example.com', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(90, 'Aylin Pouros', 'msatterfield@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(91, 'Bonita Leuschke Jr.', 'tdickens@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(92, 'Theresa Roob', 'shirley36@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(93, 'Alvera Hermiston', 'cicero78@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(94, 'Norene Toy IV', 'cornell45@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(95, 'Euna Hauck', 'sonia35@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(96, 'Miss Edythe Harris I', 'nova.conroy@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(97, 'Scarlett Bartell', 'pfay@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(98, 'Marjory Feeney', 'melissa.boyer@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(99, 'Katelin Lindgren I', 'verna34@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(100, 'Brandon Hand Jr.', 'zemlak.antoinette@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(101, 'Cayla Homenick', 'alan.wilderman@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(102, 'Cathryn Larkin', 'billy68@example.com', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(103, 'Consuelo Nikolaus', 'myrtis.hagenes@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(104, 'Destin Carroll', 'brain.heaney@example.net', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(105, 'Devyn Treutel', 'bart.hayes@example.org', '2024-06-30 05:01:20', '2024-06-30 05:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `fk_parent_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `fk_parent_id`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Elijah Hane', 6, 'male', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(2, 'Marty Feest', 7, 'male', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(3, 'Mr. Jovani Cronin PhD', 8, 'male', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(4, 'Ms. Leanna Gottlieb', 9, 'male', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(5, 'Maximus Stiedemann', 10, 'male', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(6, 'Prof. Korbin Effertz II', 11, 'female', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(7, 'Lawrence Kunde MD', 12, 'female', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(8, 'Grant Heaney', 13, 'female', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(9, 'Leonor Stokes Jr.', 14, 'female', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(10, 'Unique Bosco', 15, 'male', '2024-06-30 00:27:19', '2024-06-30 00:27:19'),
(11, 'Margie Satterfield DDS', 16, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(12, 'Frederique Gerlach', 17, 'female', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(13, 'Josianne Stoltenberg', 18, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(14, 'Dr. Stone Sawayn', 19, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(15, 'Flavie Kilback', 20, 'female', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(16, 'Arlo Jones', 21, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(17, 'Prof. Teresa Schinner', 22, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(18, 'Karine Wyman', 23, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(19, 'Prof. Desmond Waelchi Sr.', 24, 'male', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(20, 'Prof. Vivianne Schuppe', 25, 'female', '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(21, 'Dr. Junius Goldner', 26, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(22, 'Angelica Raynor DVM', 27, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(23, 'Miss Ellie Morissette III', 28, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(24, 'Cortez Ankunding I', 29, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(25, 'Therese Johns', 30, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(26, 'Melany Marks I', 31, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(27, 'Mr. Jarvis Hermann', 32, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(28, 'Myrtice Lockman', 33, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(29, 'Eulah Green IV', 34, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(30, 'Elton Mills', 35, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(31, 'Kara O\'Reilly', 36, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(32, 'Ford Fadel', 37, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(33, 'Dr. Kiley Hessel', 38, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(34, 'Howard Stroman', 39, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(35, 'Lessie Renner', 40, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(36, 'Warren Goldner', 41, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(37, 'Kendrick Hauck', 42, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(38, 'Amara Kuhn', 43, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(39, 'Johnathon Breitenberg', 44, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(40, 'Jennings Collier', 45, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(41, 'Delta Mayert', 46, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(42, 'Elisabeth Johns', 47, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(43, 'Leda Thiel', 48, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(44, 'Macey Senger', 49, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(45, 'Prof. Maymie Stamm PhD', 50, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(46, 'Estell O\'Hara', 51, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(47, 'Mrs. Gudrun Kautzer PhD', 52, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(48, 'Carmela Kihn V', 53, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(49, 'Vickie VonRueden DDS', 54, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(50, 'Tania Green III', 55, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(51, 'Zane Roberts', 56, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(52, 'Loma Carroll II', 57, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(53, 'Miss Yolanda Willms', 58, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(54, 'Prof. Berneice Wisozk', 59, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(55, 'Malika Treutel', 60, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(56, 'Ms. Shanna Grady', 61, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(57, 'Norene Stamm', 62, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(58, 'Oren O\'Keefe MD', 63, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(59, 'Garland Mitchell', 64, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(60, 'Prof. Aryanna Rohan MD', 65, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(61, 'Miss Erika Goyette II', 66, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(62, 'Calista Purdy', 67, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(63, 'Ricardo Monahan', 68, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(64, 'Haley Krajcik', 69, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(65, 'Shirley Rau', 70, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(66, 'Ms. Margarette Daniel DDS', 71, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(67, 'Sedrick Macejkovic', 72, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(68, 'Maverick Frami IV', 73, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(69, 'Ms. Yoshiko White', 74, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(70, 'Emelia Balistreri', 75, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(71, 'Oliver Balistreri DVM', 76, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(72, 'Mr. Jabari Kreiger DDS', 77, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(73, 'Macey Nicolas', 78, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(74, 'Blake Turner DDS', 79, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(75, 'Jailyn Labadie DVM', 80, 'female', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(76, 'Ms. Larissa King II', 81, 'male', '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(77, 'Prof. Angelica Schmidt Sr.', 82, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(78, 'Merle Hartmann', 83, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(79, 'Fernando Macejkovic', 84, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(80, 'Dr. Brice Batz', 85, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(81, 'Fabiola Fahey', 86, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(82, 'Erna Schroeder PhD', 87, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(83, 'Juston Kiehn', 88, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(84, 'Prof. Dayne Davis PhD', 89, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(85, 'Vella McClure V', 90, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(86, 'Bethel Hermann', 91, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(87, 'Laurine Swift', 92, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(88, 'Miss Loyce Batz', 93, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(89, 'Phoebe McLaughlin', 94, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(90, 'Hyman Effertz', 95, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(91, 'Florian Schamberger', 96, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(92, 'Cleveland Bogan', 97, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(93, 'Ms. Modesta Graham', 98, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(94, 'Malvina D\'Amore', 99, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(95, 'Domingo Lind', 100, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(96, 'Antonetta Treutel', 101, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(97, 'Shayne Considine', 102, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(98, 'Mrs. Laury Kertzmann', 103, 'male', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(99, 'Chadd Hoppe', 104, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(100, 'Fredrick Crooks II', 105, 'female', '2024-06-30 05:01:20', '2024-06-30 05:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_opted_course`
--

CREATE TABLE `tbl_student_opted_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_student_id` bigint(20) UNSIGNED NOT NULL,
  `fk_course_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_student_opted_course`
--

INSERT INTO `tbl_student_opted_course` (`id`, `fk_student_id`, `fk_course_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 11, 3, 0, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(2, 12, 3, 0, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(3, 13, 4, 0, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(5, 15, 1, 1, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(6, 16, 2, 1, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(8, 18, 3, 1, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(9, 19, 1, 1, '2024-06-30 01:18:01', '2024-06-30 01:18:01'),
(11, 21, 1, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(12, 22, 4, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(13, 23, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(14, 24, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(15, 25, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(16, 1, 4, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(17, 2, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(18, 3, 4, 1, '2024-06-30 05:01:19', '2024-06-30 05:25:33'),
(19, 4, 1, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(20, 5, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(21, 6, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:26:38'),
(22, 7, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:26:40'),
(23, 8, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:26:42'),
(24, 9, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:27:06'),
(25, 10, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(26, 36, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(27, 37, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(28, 38, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(29, 39, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(30, 40, 1, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(31, 41, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(32, 42, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(33, 43, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(34, 44, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(35, 45, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(36, 46, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(37, 47, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(38, 48, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(39, 49, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(40, 50, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(41, 51, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(42, 52, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(43, 53, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(44, 54, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(45, 55, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(46, 56, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(47, 57, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(48, 58, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(49, 59, 2, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(50, 60, 2, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(51, 61, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(52, 62, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(53, 63, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(54, 64, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(55, 65, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(56, 66, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(57, 67, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(58, 68, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(59, 69, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(60, 70, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(61, 71, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(62, 72, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(63, 73, 3, 1, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(64, 74, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(65, 75, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(66, 76, 3, 0, '2024-06-30 05:01:19', '2024-06-30 05:01:19'),
(67, 77, 3, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(68, 78, 3, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(69, 79, 3, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(70, 80, 3, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(71, 81, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(72, 82, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(73, 83, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(74, 84, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(75, 85, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(76, 86, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(77, 87, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(78, 88, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(79, 89, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(80, 90, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(81, 91, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(82, 92, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(83, 93, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(84, 94, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(85, 95, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(86, 96, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(87, 97, 4, 0, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(88, 98, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(89, 99, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20'),
(90, 100, 4, 1, '2024-06-30 05:01:20', '2024-06-30 05:01:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `students_fk_parent_id_foreign` (`fk_parent_id`);

--
-- Indexes for table `tbl_student_opted_course`
--
ALTER TABLE `tbl_student_opted_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_student_opted_course_fk_student_id_foreign` (`fk_student_id`),
  ADD KEY `tbl_student_opted_course_fk_course_id_foreign` (`fk_course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_student_opted_course`
--
ALTER TABLE `tbl_student_opted_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_fk_parent_id_foreign` FOREIGN KEY (`fk_parent_id`) REFERENCES `parent` (`parent_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_student_opted_course`
--
ALTER TABLE `tbl_student_opted_course`
  ADD CONSTRAINT `tbl_student_opted_course_fk_course_id_foreign` FOREIGN KEY (`fk_course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_student_opted_course_fk_student_id_foreign` FOREIGN KEY (`fk_student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
