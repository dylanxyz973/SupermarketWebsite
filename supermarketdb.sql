
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c237_l11b_supermarketapp`
--
CREATE DATABASE IF NOT EXISTS `c237_supermarketdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `c237_supermarketdb`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `productName` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `quantity`, `price`, `image`) VALUES
(1, 'Apples', 50, 1.50, 'apples.png'),
(2, 'Bananas', 75, 0.80, 'bananas.png'),
(3, 'Milk', 50, 3.50, 'milk.png'),
(4, 'Bread', 80, 1.80, 'bread.png'),
(14, 'Tomatoes', 80, 1.50, 'tomatoes.png'),
(19, 'Broccoli', 100, 5.00, 'Broccoli.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`, `contact`, `role`) VALUES
(1, 'Peter Lim', 'peter@peter.com', '9a4dc937ac9f581c535ea262096f0af7e8002fba', 'Woodlands Ave 2', '98765432', 'admin'),
(2, 'Mary Tan', 'mary@mary.com', 'ed253aa920d1c7d0b16c9bc85fe581af8286d88f', 'Tampines Ave 1', '12345678', 'user');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
