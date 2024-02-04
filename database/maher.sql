-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 02:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maher`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(1, 1, 'abcd', '', 0, '', ''),
(2, 8, 'abcd', '', 0, '', ''),
(3, 1, 'abcd', '', 0, '', ''),
(4, 8, 'abcd', '', 0, '', ''),
(5, 1, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(6, 8, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(7, 1, 'abcd', '', 0, '', ''),
(8, 8, 'abcd', '', 0, '', ''),
(9, 1, 'abcd', '', 0, '', ''),
(10, 8, 'abcd', '', 0, '', ''),
(11, 1, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(12, 8, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(13, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(14, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(15, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(16, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(17, 1, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(18, 8, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(19, 1, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(20, 8, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(21, 1, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(22, 8, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(23, 11, 'admin', 'hello', 8978678909, 'h@yyy.com', 'jas skkslks kslda');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'kathiyawadi', 'Maher Special'),
(2, 'kathiyawadi', 'Ringan Olo'),
(3, 'kathiyawadi', 'Dahino Olo'),
(4, 'kathiyawadi', 'Dahi tikhari'),
(5, 'kathiyawadi', 'Bharela Ringna'),
(6, 'kathiyawadi', 'Rajwadi Bateta'),
(7, 'kathiyawadi', 'Masala bhindi'),
(8, 'kathiyawadi', 'Rajwadi Dhokli'),
(9, 'kathiyawadi', 'Save Tameta'),
(10, 'kathiyawadi', 'Mag Masala'),
(11, 'kathiyawadi', 'Chole Chana Masala'),
(12, 'kathiyawadi', 'Kaju gathiya'),
(13, 'kathiyawadi', 'Adadni Dal'),
(14, 'rajsthani', 'Bati'),
(20, 'rajsthani', 'Dal'),
(21, 'rajsthani', 'Salad'),
(22, 'rajsthani', 'Butter Milk'),
(23, 'rajsthani', 'Ghee'),
(24, 'rajsthani', 'Papad'),
(25, 'rise', 'Dal Rice'),
(26, 'rise', 'Kadhi-Khichadi'),
(27, 'rise', 'Vagharela Bhat'),
(28, 'rise', 'Rajwadi Khichadi'),
(29, 'tava', 'Rotli'),
(30, 'tava', 'Ghee Rotli'),
(31, 'tava', 'Rotla'),
(48, 'tava', 'Ghee Rotla'),
(49, 'tava', 'Bhakhari'),
(50, 'tava', 'Ghee Bhakhari'),
(51, 'tava', 'Tava Paratha'),
(52, 'tava', 'Rotlanu Churmu'),
(53, 'tava', 'Bhakhari nu Churmu'),
(54, 'tava', 'Dryfruit Churmu'),
(55, 'tava', 'Vagharelo Rotlo Dry'),
(56, 'tava', 'Vagharelo Rotlo Dahi');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(4, 'img/5e39236bc4b7bc0c2bb659c7_1580802923546.jpg'),
(5, 'img/the-gujarati-thali-served.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(4, 'kathiyawadi', 'Rajwadi Bateta', 'rajwadi bateta nu shak', 'bateta cut and fry in oil make a shak', 40, 'mimg/e7e0aa16c95cca7deae0e222e8794bb5.jpg'),
(5, 'kathiyawadi', 'Dahi tikhari', 'dahi ni tikhari', 'fry dahi in shak', 50, 'mimg/à¤•à¤¾à¤ à¤¿à¤¯à¤¾à¤µà¤¾à¤¡à¤¼à¥€-à¤¦à¤¹à¥€-à¤¤à¤¿à¤–à¤¾à¤°à¥€-khthiyawadi-dahi-tikhari-recipe-in-hindi-à¤°à¥‡à¤¸à¤¿à¤ªà¥€-à¤®à¥à¤–à¥à¤¯-à¤¤à¤¸à¥à¤µà¥€à¤°.jpg'),
(6, 'kathiyawadi', 'Masala bhindi', 'masla bhindi nu shak', 'garam masala add in bhindi nu shak', 30, 'mimg/1bhindi.jpg'),
(7, 'kathiyawadi', 'Rajwadi Dhokli', 'rajwadi dhoki nu shak', 'dhokli fry in oil and fry in dal', 40, 'mimg/hqdefault.jpg'),
(8, 'kathiyawadi', 'Save Tameta', 'save tameta nu shak', 'save add a in tomato shak and fry', 30, 'mimg/save tameta.jpg'),
(9, 'kathiyawadi', 'Mag Masala', 'masala mag nu shak', 'masala add im mag shak ', 30, 'mimg/mag masala.jpg'),
(10, 'kathiyawadi', 'Chole Chana Masala', 'chole chana masala nu shak', 'chana fry in shak with masala', 30, 'mimg/chana-masala-recipe.jpg'),
(11, 'kathiyawadi', 'Adadni Dal', 'adad ni dal', 'adaa fry in dal with masala', 30, 'mimg/Kathiyawadi_Adal_Dal_.jpg'),
(12, 'rajsthani', 'Bati', 'bati', 'rajsthani bati make by bhak', 30, 'mimg/bati.jpg'),
(13, 'rajsthani', 'Dal', 'dal', 'dal make by tuver and alad', 30, 'mimg/dal-fry-recipe-1.jpg'),
(14, 'rajsthani', 'Salad', 'salad', 'salad make by onion,tomato,beet,racket', 15, 'mimg/best-salad-7.jpg'),
(15, 'rajsthani', 'Butter Milk', 'butter milk', 'butter milk make by dhorvu', 15, 'mimg/Masala-Chaas-Recipe.jpg'),
(16, 'rajsthani', 'Ghee', 'ghee', 'ghee make by makahn', 15, 'mimg/260px-Butterschmalz-3.jpg'),
(17, 'rajsthani', 'Papad', 'papad', 'papad make by adad and khichi', 15, 'mimg/papad.jpg'),
(18, 'tava', 'Rotli', 'rotli', 'rotli make by wheet lot', 20, 'mimg/rotli-2-960x1358.jpg'),
(19, 'tava', 'Ghee Rotli', 'ghwee rotli ', 'ghee add on rotli', 20, 'mimg/desi_ghee_roti-e1542006374654.jpg'),
(20, 'tava', 'Rotla', 'rotla', 'rotla make by bajra and makai lot', 20, 'mimg/rotla_dsc2818-(16)-9-186406.jpg'),
(21, 'tava', 'Bhakhari', 'bhakhari', 'bhakhari make by wheet lot', 20, 'mimg/jowar-bhakri-recipe-main-photo.jpg'),
(22, 'tava', 'Ghee Rotla', 'ghee rotla', 'ghee add in rotla', 20, 'mimg/blogger-image--689930619.jpg'),
(23, 'tava', 'Ghee Bhakhari', '20', 'ghee add on bhakhari', 20, 'mimg/Bhakri_1.jpg'),
(24, 'tava', 'Tava Paratha', 'tava paratha', 'paratha fry in tava', 20, 'mimg/Tawa_Paratha_Recipe-7956.jpg'),
(25, 'tava', 'Rotlanu Churmu', 'rotla nu churmu', 'churmu make by rotla', 20, 'mimg/rotla nu churmu.jpg'),
(26, 'tava', 'Bhakhari nu Churmu', 'bhakhari nu churmu', 'churmu make by bhakhari', 20, 'mimg/churma-step-by-step-recipe.webp'),
(27, 'tava', 'Dryfruit Churmu', 'drufruit churmu', 'dryfruit add in furmu', 20, 'mimg/rotla nu churmu.jpg'),
(28, 'tava', 'Vagharelo Rotlo Dry', 'vagharelo rotlo dry', 'rotlo dry in oil and fry', 20, 'mimg/Vageralo-rotlo-WS.jpg'),
(29, 'tava', 'Vagharelo Rotlo Dahi', 'vagahrelo rotlo dahi', 'dahi fry in rotlo', 20, 'mimg/Vageralo-rotlo-WS.jpg'),
(30, 'rise', 'Dal Rice', 'dal rice', 'rice add in dal', 30, 'mimg/DSC_0870.jpg'),
(31, 'rise', 'Kadhi-Khichadi', '25', 'khichadi add in kadhi', 25, 'mimg/kadhi khichadi.jpg'),
(32, 'rise', 'Vagharela Bhat', 'vagahrela bhat', 'bhat fry in oli ', 25, 'mimg/vagharela-bhaat-6.jpg'),
(33, 'rise', 'Rajwadi Khichadi', 'rajwadi khichadi', 'masala add in khichadi', 25, 'mimg/rajwadi-khichdi-recipe-main-photo.jpg'),
(34, 'rajsthani', 'Dal', 'jaydip', 'nathi', 1, 'mimg/chole bhature.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Milan vagh', 'Exellent', 'best hotel oh gujarat'),
(6, 'naimish gadhiya', 'Exellent', 'abcdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
