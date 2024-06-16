-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2024 at 04:30 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
  `quantity` int NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'ساعت دیجیتال', '<p>ساعت منحصر به فرد ساخته شده از فولاد ضد زنگ، ایده آل برای کسانی که ساعت های تعاملی را ترجیح می دهند.</p>\r\n<h3>ویژگی ها</h3>\r\n<ul>\r\n<li>تجهیز شده توسط Android با برنامه‌های داخلی.</li>\r\n<li>قابل تنظیم برای مناسب بودن بیشتر.</li>\r\n<li>دوام باتری طولانی، استفاده مداوم تا ۲ روز.</li> \r\n<li>طراحی سبک، راحتی روی مچ دست شما.</li>\r\n</ul>', 35000.00, 0.00, 10, 'digi.jpg', '2024-06-12 15:01:39'),
(2, 'ساعت عقربه ای', '', 20000.00, 25000.00, 10, 'aghrabe.jpg', '2022-06-13 18:52:49'),
(3, 'ساعت هوشمند', '', 50000.00, 0.00, 10, 'hoshmand.jpg', '2023-03-13 18:47:56'),
(4, 'ساعت زنانه', '', 98000.00, 0.00, 10, 'zananh.jpg', '2011-03-14 17:42:04'),
(6, 'مچ بند هوشمند', '<p>ساع صفحه نمایش روشن 1.62 اینچی AMOLED</p>\r\n<h3>ویژگی ها</h3>\r\n<ul>\r\n<li> دارای گواهی IP68 مقاومت در برابر نفوذ آب</li>\r\n<li> پایش مداوم ضربان قلب و اکسیژن خون\r\n</li>\r\n<li> باتری 180mAh با شارژدهی تا 14 روز.</li> \r\n<li>پشتبانی از زبان فارسی اعلانات\r\n</li>\r\n</ul>', 2.30, 2.20, 10, 'moch.jpg', '2024-06-26 15:13:13'),
(7, 'ساعت عقربه ای زنانه اسکمی', '\r\n\r\n\r\n\r\n<p>مخصوص خانم های سخت پسند</p>\r\n<h3>ویژگی ها</h3>\r\n<ul>\r\n<li>طراحی خاص و چشم نواز</li>\r\n<li>مقاوم در برابر نفوذ آب تا ۳۰ متر</li>\r\n<li>گارانتی ۱ ساله موتور</li> \r\n</ul>', 1.10, 1.36, 10, 'zan2.jpg', '2024-06-19 15:18:10'),
(8, 'ساعت مچی دوزمانه اسپرت یونیک', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>اسپرت مخصوص خوش سلیقه ها</p>\r\n<h3>ویژگی ها</h3>\r\n<ul>\r\n<li>کشور سازنده موتور ژاپن</li>\r\n<li> قاب و بند پی یو (پلاستیکی )\r\n</li>\r\n<li>قفل سگکی</li> \r\n<li>یکسال گارانتی آب موتور\r\n</li>\r\n</ul>', 2.25, 0.00, 10, 'sport.jpg', '2024-06-03 15:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'maryam', 'maryamghorbani2079@gmail.com', 'maryam1212'),
(2, 'mynamw', 'nemon@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'reza', 'reza@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'avasam2', 'info2@avasam.ir', 'c4ca4238a0b923820dcc509a6f75849b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
