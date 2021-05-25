-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 09:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(8) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `res_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `name`, `email`, `salary`) VALUES
(1, 'Neha', 'neha@gmail.com', 25000),
(2, 'Suman', 'suman@gmail.com', 35000),
(3, 'Juhi', 'juhi@gmail.com', 15000),
(4, 'Kishu', 'kishu@gmail.com', 30000),
(5, 'Micki', 'micki@gmail.com', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `phone`, `status`) VALUES
(1, 'first', 'first@gmail.com', '123', '1'),
(2, 'second', 'second@gmail.com', '434', '1'),
(3, 'third', 'third@gmail.com', '454', '0'),
(4, 'kishu', 'kishu@gmail.com', '444444444', '1'),
(5, 'juhi', 'juhi@gmail.com', '555555555', '1'),
(6, 'micki', 'micki@gmail.com', '666666666', '0');

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE `employee_address` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `employee_postal_address` varchar(255) DEFAULT NULL,
  `employee_permanent_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`id`, `emp_id`, `employee_postal_address`, `employee_permanent_address`) VALUES
(1, '1', '801109', 'Patna'),
(2, '2', '800026', 'Danapur'),
(3, '3', '801119', 'Indore'),
(4, '4', '801109', 'Patna'),
(5, '5', '800026', 'Danapur'),
(6, '6', '801119', 'Indore');

-- --------------------------------------------------------

--
-- Table structure for table `employee_department`
--

CREATE TABLE `employee_department` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `department_title` varchar(255) NOT NULL,
  `department_manager` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_department`
--

INSERT INTO `employee_department` (`id`, `emp_id`, `department_title`, `department_manager`) VALUES
(1, '1', 'HR', 'Suman'),
(2, '2', 'IT', 'Neha'),
(3, '3', 'SALES', 'Rahul'),
(4, '4', 'HR', 'Suman'),
(5, '5', 'IT', 'Neha'),
(6, '6', 'SALES', 'Rahul');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `adhar` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iid` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `file_name`, `adhar`, `name`, `iid`, `judul`, `path`) VALUES
(51, '', '12.jpg', '', 61, '', 'D:/xamp/htdocs/ci/practice/img/12.jpg'),
(52, '', '23.jpg', '', 61, '', 'D:/xamp/htdocs/ci/practice/img/23.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `s_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `size` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `mobile`, `gender`, `qualification`, `pic`, `path`, `date`, `size`, `status`) VALUES
(148, 'Neha', 'neha@gmail.com', '123', '', 'Female', 'MCA,BCA', 'dextop.jpg', '', '0000-00-00', '', 1),
(149, 'Bunty', 'bunty@gmail.com', '', '9304879388', 'Female', 'MCA,BCA', 'man2.jpg', '', '0000-00-00', '', 0),
(178, 'suman', 'suman@gmail.com', 'Admin!@#5', '9430031287', '', '', 'logo21.png', '', '2021-04-28', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_two`
--

CREATE TABLE `login_two` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_two`
--

INSERT INTO `login_two` (`id`, `name`, `last`) VALUES
(1, 'Demo1', 36);

-- --------------------------------------------------------

--
-- Table structure for table `meenu`
--

CREATE TABLE `meenu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meenu`
--

INSERT INTO `meenu` (`id`, `title`, `parent_id`, `page`, `sort_order`) VALUES
(1, 'Home', NULL, 'index.php', 1),
(2, 'Products', NULL, NULL, 100),
(3, 'Services', NULL, NULL, 2),
(4, 'About', NULL, 'about.php', 100),
(6, 'Service 1', 3, 'service1.php', 100),
(7, 'Service 2', 3, 'service2.php', 100),
(8, 'Product 1', 2, 'product1.php', 100),
(9, 'Product 2', 2, 'product2.php', 100),
(10, 'Product 3', 2, 'product3.php', 100),
(11, 'Product 4', 2, 'product4.php', 100),
(12, 'Product 5', 2, 'product5.php', 100),
(14, 'Contact', NULL, 'contact.php', 100),
(15, 'Service 1.1', 6, 'service1.1.php', 100),
(16, 'Service 1.2', 6, 'service1.2.php', 100),
(17, 'Service 1.1.1', 15, NULL, 100),
(18, 'Service 2.1', 7, NULL, 100),
(19, 'Service 2.2', 7, NULL, 100),
(20, 'Service 2.3', 7, NULL, 100),
(21, 'Service 2.4', 7, NULL, 100),
(22, 'Service 2.5', 7, NULL, 100);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `menu_id` varchar(100) DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `menu_id`, `page`) VALUES
(1, 'Home', NULL, 'index.php'),
(2, 'Products', NULL, NULL),
(3, 'Services', NULL, NULL),
(4, 'About', NULL, 'about.php'),
(5, 'Service 1', '3', 'service1.php'),
(6, 'Service2', '3', 'service2.php'),
(7, 'Product1', '2', 'product1.php'),
(8, 'Product2', '2', 'product2.php'),
(9, 'Product3', '2', 'product3.php'),
(10, 'Product4', '2', 'product4.php'),
(11, 'Product5', '2', 'product5.php'),
(12, 'Contact', NULL, 'contact.php');

-- --------------------------------------------------------

--
-- Table structure for table `my1`
--

CREATE TABLE `my1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my1`
--

INSERT INTO `my1` (`id`, `name`, `age`) VALUES
(1, 'suman', 30),
(2, 'neha', 25),
(3, 'Life', 22);

--
-- Triggers `my1`
--
DELIMITER $$
CREATE TRIGGER `tr_my` AFTER INSERT ON `my1` FOR EACH ROW BEGIN
INSERT INTO my2 VALUES (NULL,NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `my2`
--

CREATE TABLE `my2` (
  `id` int(11) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my2`
--

INSERT INTO `my2` (`id`, `msg`) VALUES
(1, 'insert success'),
(2, 'an new record insert'),
(3, '2020-11-04 08:34:07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `neha`
-- (See below for the actual view)
--
CREATE TABLE `neha` (
`id` int(11)
,`name` varchar(100)
,`email` varchar(100)
,`password` varchar(100)
,`mobile` varchar(100)
,`gender` varchar(100)
,`qualification` varchar(100)
,`pic` varchar(100)
,`path` varchar(100)
,`date` date
,`size` varchar(100)
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `O_Id` int(11) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `P_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `P_Id` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`P_Id`, `LastName`, `FirstName`, `Address`, `City`) VALUES
(1, 'kumar', 'suman', 'naubat pur', 'patna');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `name`, `email`, `password`, `pic`) VALUES
(1, 'Suman', 'suman@gmail.com', '1533c67e5e70ae7439a9aa993d6a3393', ''),
(2, 'Neha', 'neha@gmail.com', '262f5bdd0af9098e7443ab1f8e435290', ''),
(4, 'Admin11', 'admin21@gmail.com', '5fec4ba8376f207d1ff2f0cac0882b01', ''),
(5, 'neha2', 'neha2@gmail.com', '262f5bdd0af9098e7443ab1f8e435290', ''),
(7, 'suman', 'suman1@gmail.com', '123', ''),
(8, 'rahul889', 'rahul1@gmail.com', '123', ''),
(9, 'aashu', 'aashu@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(10, 'kabutar', 'kabutar@gmail.com', '8d5e957f297893487bd98fa830fa6413', ''),
(11, 'belu2', 'belhu2@gmail.com', '7f1de29e6da19d22b51c68001e7e0e54', ''),
(21, 'suman', 'suman1@gmail.com', '123', 'img/YXRZ35EhYB00uyBwqQTyChNTgLHgnlXeYIVWrVaX.jpg'),
(22, 'suman3', 'suman1@gmail.com', '123', 'public/js/POnvBI5nErZq2NrDlw7AoR71iSkKIuzkiBK8W2xn.jpg'),
(23, 'ee', 'ee@gmail.com', 'ee', 'js/tfvIyQq0CDFiZA4gSzLWdxQGNwcS7f2FkuDNI1mA.png'),
(24, 'we', 'we@gmail.com', '123', '1617955406.PNG'),
(25, 'er', 'er@gmail.com', '123', '1618032831.jpg'),
(26, 'sum', 'sum@gmail.com', '157', '1618032946.png'),
(27, 'rrr', 'r@g.com', '124', '1618039245.png'),
(29, 'kishu', 'kishu@gmail.com', '158', '1618039628.jpg'),
(30, 'kishu', 'kishu@gmail.com', '158', '1618039649.jpg'),
(45, 'suman', 'suman@gmail.com', '145879554', NULL),
(46, 'suman2', 'suman2@gmail.com', '147858774', '1618895439.png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_roll` varchar(100) NOT NULL,
  `std_suname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `std_name`, `std_roll`, `std_suname`) VALUES
(1, 'Neha', '1', 'Kumari'),
(2, 'Micki', '2', 'Kumari'),
(3, 'Ram', '4', 'Kumar'),
(4, 'Rahul 1', '5', 'Kumar'),
(5, 'Sishu 2', '6', 'Rai');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `password`, `email`) VALUES
(3, 'suman', 'kumar', '123', 'suman@gmail.com'),
(4, 'rahul', 'kumar', '123', 'rahul@gmail.com'),
(5, 'rahul2', 'kumar2', '1234456567', 'rahul2@gmail.com'),
(6, 'mici', 'kumari', '1234456567', 'micki@gmail.com'),
(7, 'dolly', 'kumari', '77547655', 'solly@gmail.com'),
(8, 'Aashu', 'kumar', '77547655', 'aashu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `u_id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`u_id`, `number`, `gender`, `address`) VALUES
(3, '774654765', 'Male', 'dsfdfdf'),
(4, '9657543344', 'Male', 'patna'),
(5, '9657543454', 'Male', 'Indore'),
(6, '9657543454', 'Male', 'Up'),
(7, '88786767676', 'Female', 'New Delhi'),
(8, '88786767676', 'Male', 'Bihar');

-- --------------------------------------------------------

--
-- Structure for view `neha`
--
DROP TABLE IF EXISTS `neha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `neha`  AS  select `login`.`id` AS `id`,`login`.`name` AS `name`,`login`.`email` AS `email`,`login`.`password` AS `password`,`login`.`mobile` AS `mobile`,`login`.`gender` AS `gender`,`login`.`qualification` AS `qualification`,`login`.`pic` AS `pic`,`login`.`path` AS `path`,`login`.`date` AS `date`,`login`.`size` AS `size`,`login`.`status` AS `status` from `login` where `login`.`id` = 2 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_department`
--
ALTER TABLE `employee_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `login_two`
--
ALTER TABLE `login_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meenu`
--
ALTER TABLE `meenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my1`
--
ALTER TABLE `my1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my2`
--
ALTER TABLE `my2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`O_Id`),
  ADD KEY `P_Id` (`P_Id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`P_Id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_address`
--
ALTER TABLE `employee_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_department`
--
ALTER TABLE `employee_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `login_two`
--
ALTER TABLE `login_two`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meenu`
--
ALTER TABLE `meenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `my1`
--
ALTER TABLE `my1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `my2`
--
ALTER TABLE `my2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `P_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`P_Id`) REFERENCES `persons` (`P_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
