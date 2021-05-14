-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 05 月 13 日 04:32
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `JSMART`
--

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL COMMENT '商品類別號',
  `categoryName` varchar(100) NOT NULL COMMENT '商品類別名稱',
  `categoryParentId` int(11) NOT NULL COMMENT '商品層級',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '建立時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`, `categoryParentId`, `created_at`, `updated_at`) VALUES
(1, '衛生棉', 0, '2021-05-10 08:30:41', '2021-05-10 08:30:41'),
(2, '布衛生棉', 0, '2021-05-10 08:37:30', '2021-05-10 08:37:30'),
(3, '棉條', 0, '2021-05-10 08:37:30', '2021-05-10 08:37:30'),
(4, '月亮杯', 0, '2021-05-10 08:38:07', '2021-05-10 08:38:07'),
(5, '月亮褲', 0, '2021-05-10 08:38:07', '2021-05-10 08:38:07'),
(7, '日用衛生棉', 1, '2021-05-12 08:16:08', '2021-05-12 08:18:26'),
(8, '夜用衛生棉', 1, '2021-05-12 08:16:19', '2021-05-12 08:18:33'),
(9, '護墊', 7, '2021-05-12 08:18:44', '2021-05-12 08:18:44'),
(10, '一般（18-21cm）', 7, '2021-05-12 08:18:57', '2021-05-12 08:18:57'),
(11, '量多（22-27cm）', 7, '2021-05-12 08:19:28', '2021-05-12 08:19:28'),
(12, '一般（28-30cm）', 8, '2021-05-12 08:19:45', '2021-05-12 08:19:45'),
(13, '量多（32-38cm）', 8, '2021-05-12 08:19:55', '2021-05-12 08:19:55'),
(14, '超長安心（40-42cm）', 8, '2021-05-12 08:20:03', '2021-05-12 08:20:03'),
(15, '護墊（16cm）', 2, '2021-05-12 08:20:15', '2021-05-12 08:20:15'),
(16, '一般（19-24cm）', 2, '2021-05-12 08:20:23', '2021-05-12 08:20:23'),
(17, '量多（28-45cm）', 2, '2021-05-12 08:20:31', '2021-05-12 08:20:31'),
(18, '額外吸收層', 2, '2021-05-12 08:20:40', '2021-05-12 08:20:40'),
(19, '量少（6-9g）', 3, '2021-05-12 08:20:58', '2021-05-12 08:20:58'),
(20, '一般（9-12g）', 3, '2021-05-12 08:21:06', '2021-05-12 08:21:06'),
(21, '量多(12-18g)', 3, '2021-05-12 08:21:14', '2021-05-12 08:21:14'),
(22, '教學杯（10ml）', 4, '2021-05-12 08:21:33', '2021-05-12 08:21:33'),
(23, '標準杯（20ml）', 4, '2021-05-12 08:21:40', '2021-05-12 08:21:40'),
(24, '滿月杯（30ml）', 4, '2021-05-12 08:21:49', '2021-05-12 08:21:49'),
(25, '攜帶盒', 4, '2021-05-12 08:21:57', '2021-05-12 08:21:57'),
(26, '一般', 5, '2021-05-12 08:22:09', '2021-05-12 08:22:09'),
(27, '運動型', 5, '2021-05-12 08:22:40', '2021-05-12 08:22:40');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品類別號', AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
