-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 07:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `featured` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `category`, `featured`, `image`) VALUES
(1, 'Apple', '38500', 'mobiles', 'yes', 'img/apple.jpg'),
(2, 'Mango', '99800', 'mobiles', 'no', 'img/mango.jpg'),
(3, 'Banana', '26000', 'mobiles', 'no', 'img/banana.jpg'),
(4, 'Pomegranate', '52000', 'mobiles', 'yes', 'img/pome.jpg'),
(5, 'Pineapple', '124000', 'mobiles', 'yes', 'img/pineaple.jpg'),
(6, 'Orange', '92000', 'mobiles', 'no', 'img/ora.jpg'),
(7, 'Watermelon', '62000', 'mobiles', 'no', 'img/watermelon.jpg'),
(8, 'Avocado', '76000', 'mobiles', 'yes', 'img/avo.jpg'),
(9, 'Strawberry', '750', 'mobiles', 'no', 'img/straw.jpg'),
(10, 'Potato', '600', 'vegie', 'yes', 'img/potato.jpg'),
(11, 'Onion', '400', 'vegie', 'no', 'img/onin.jpg'),
(12, 'Ladyfinger', '550', 'vegie', 'no', 'img/ladyfing.jpg'),
(13, 'Cauliflower', '1200', 'vegie', 'no', 'img/cauli.jpg'),
(14, 'Garlic', '24000', 'vegie', 'yes', 'img/garlic.jpg'),
(15, 'Brinjal', '450', 'vegie', 'no', 'img/brinjal.jpg'),
(16, 'Cabbage', '76000', 'vegie', 'yes', 'img/cabb.jpg'),
(17, 'Tomato', '40', 'vegie', 'yes', 'img/tomatao.jpg'),
(18, 'Wheat', '150', 'gr', 'yes', 'img/wheatnew.jpg'),
(19, 'Rice', '70', 'gr', 'yes', 'img/ricenew.jpg'),
(20, 'Barley', '50', 'gr', 'no', 'img/barley.jpg'),
(21, 'Corn(1 kg)', '200', 'gr', 'yes', 'img/cornnew.jpg'),
(22, 'Rye', '70', 'gr', 'yes', 'img/ryenew.jpg'),
(23, 'Oats', '200', 'gr', 'yes', 'img/oats.jpg'),
(24, 'Sunflower', '300', 'oil', 'yes', 'img/sunflower.jpg'),
(25, 'Coconut', '150', 'oil', 'yes', 'img/coconut oil.jpg'),
(26, 'Mustard', '160', 'oil', 'yes', 'img/mus.jpg'),
(27, 'Groundnut', '150', 'oil', 'yes', 'img/ground.jpg'),
(28, 'Ghee', '200', 'oil', 'yes', 'img/ghee.jpg'),
(29, 'Olive', '150', 'oil', 'yes', 'img/olive.jpg'),
(30, 'Gingelly', '150', 'oil', 'no', 'img/gingelly.jpg'),
(31, 'Milk', '200', 'diary', 'yes', 'img/milk.jpg'),
(32, 'Paneer', '500', 'diary', 'yes', 'img/panner.jpg'),
(33, 'Cheese', '400', 'diary', 'no', 'img/ch2.jpg'),
(34, 'Butter', '250', 'diary', 'yes', 'img/butt2.jpg'),
(35, 'Cream', '130', 'diary', 'no', 'img/amulnew.jpg'),
(36, 'Amulmate', '80', 'diary', 'no', 'img/mate.jpg'),
(37, 'Buttermilk', '50', 'diary', 'no', 'img/bnew.jpg'),
(38, 'Curd', '50', 'diary', 'yes', 'img/curdnew.jpg'),
(39, 'Amulcool', '100', 'diary', 'yes', 'img/amulcool.jpg'),
(40, 'Dhania', '50', 'masala', 'yes', 'img/dhania.jpg'),
(41, 'Sabjhi', '45', 'masala', 'yes', 'img/sabji.jpg'),
(42, 'Sambar', '70', 'masala', 'no', 'img/sambar.jpg'),
(43, 'Garam Masala', '40', 'masala', 'yes', 'img/garam.jpg'),
(44, 'Turmeric', '50', 'masala', 'yes', 'img/turm.jpg'),
(45, 'Chicken Masala', '70', 'masala', 'yes', 'img/chicken.jpg'),
(46, 'Mutton', '40', 'masala', 'no', 'img/mutton.jpg'),
(47, 'Chana', '70', 'masala', 'yes', 'img/chananew.jpg'),
(48, 'Biryani', '30', 'masala', 'yes', 'img/birnew.jpg'),
(49, 'Curry Masala', '50', 'masala', 'no', 'img/curry mas.jpg'),
(50, 'Chilli', '40', 'masala', 'yes', 'img/red.jpg'),
(51, 'Thumbsup', '50', 'bev', 'yes', 'img/thumb.jpg'),
(52, 'Cocacola', '45', 'bev', 'yes', 'img/c.jpg'),
(53, 'Boost', '40', 'bev', 'no', 'img/boost.jpg'),
(54, 'Maaza', '50', 'bev', 'yes', 'img/maznew.jpg'),
(55, 'Sprite', '40', 'bev', 'yes', 'img/spri.jpg'),
(56, 'Nescafe', '40', 'bev', 'yes', 'img/nes.jpg'),
(57, 'Tea', '40', 'bev', 'no', 'img/tea.jpg'),
(58, 'Yakult', '70', 'bev', 'yes', 'img/yak.jpg'),
(59, 'Surf', '100', 'cl', 'yes', 'img/surf.jpg'),
(60, 'Allout', '150', 'cl', 'yes', 'img/allout.jpg'),
(61, 'Mug', '70', 'cl', 'no', 'img/mug.jpg'),
(62, 'Paper Plates', '70', 'cl', 'yes', 'img/pp.jpg'),
(63, 'Lizol', '150', 'cl', 'no', 'img/liz.jpg'),
(64, 'Harpic', '150', 'cl', 'yes', 'img/harpic.jpg'),
(65, 'Vimbar', '150', 'cl', 'no', 'img/vim.jpg'),
(66, 'Egg', '100', 'eg', 'yes', 'img/e1.jpg'),
(67, 'Chicken', '300', 'eg', 'yes', 'img/chicken1.jpg'),
(68, 'Mutton', '200', 'eg', 'yes', 'img/mutt1.jpg'),
(69, 'Fish', '1000', 'eg', 'yes', 'img/fish1.jpg'),
(70, 'Prawns', '1500', 'eg', 'no', 'img/prawms1.jpg'),
(71, 'Sausage', '1500', 'eg', 'no', 'img/sau1.jpg'),
(72, 'Dairymilk', '100', 'choc', 'yes', 'img/choc.jpg'),
(73, 'Kitkat', '40', 'choc', 'no', 'img/kitkat.jpg'),
(74, 'Maggi', '20', 'choc', 'yes', 'img/MAGGI.jpg'),
(75, 'Oreo', '40', 'choc', 'no', 'img/OREO.jpg'),
(76, 'Lays', '20', 'choc', 'yes', 'img/LAYS.jpg'),
(77, 'Haldiram', '20', 'choc', 'no', 'img/HALDIRAM.jpg'),
(78, 'Honey', '70', 'choc', 'yes', 'img/HONEY.jpg'),
(79, 'Pampers', '500', 'baby', 'yes', 'img/pamp.jpg'),
(80, 'Ceralac', '200', 'baby', 'yes', 'img/cer.jpg'),
(81, 'SOAP', '200', 'baby', 'no', 'img/bs.jpg'),
(82, 'Powder', '200', 'baby', 'no', 'img/bp.jpg'),
(83, 'Oil', '300', 'baby', 'no', 'img/bo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
