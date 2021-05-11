-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-07 05:47:48
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `category`
--

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(20) NOT NULL COMMENT '商品類別號',
  `categoryName` varchar(100) NOT NULL COMMENT '商品類別名稱',
  `categoryParent` int(11) NOT NULL COMMENT '商品層級',
  `created_at` datetime NOT NULL COMMENT '建立時間',
  `updated_at` datetime NOT NULL COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`, `categoryParent`, `created_at`, `updated_at`) VALUES
(0, '衛生棉', 0, '2021-05-06 20:08:46', '2021-05-06 20:08:46'),
(1, '布衛生棉', 0, '2021-05-06 20:07:35', '2021-05-06 20:07:35'),
(2, '棉條', 0, '2021-05-06 20:08:46', '2021-05-06 20:08:46'),
(3, '月亮杯', 0, '2021-05-06 20:10:18', '2021-05-06 20:10:18'),
(4, '月亮褲', 0, '2021-05-06 20:07:35', '2021-05-06 20:07:35');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
