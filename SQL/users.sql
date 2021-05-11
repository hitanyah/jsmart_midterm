-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-08 17:24:44
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `smallsc`
--

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '流水號',
  `userName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者名稱',
  `userAccount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者帳號',
  `userPassword` char(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者密碼',
  `phoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '電話號碼',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信箱',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `birthday` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '生日',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `userName`, `userAccount`, `userPassword`, `phoneNumber`, `email`, `address`, `birthday`, `created_at`, `updated_at`) VALUES
(1, '洪莉軒', 'tanya', '8aca103eae125bb908422862b88e0bde2ae947b5', '0911111111', 'tanya@gmail.com', '106台北市大安區復興南路一段390號2樓', '92/1/1', '2021-05-07 00:35:57', '2021-05-07 00:35:57'),
(2, '黃薇倢', 'WEI-JIE', 'c6936ecc88a6c347af3615d411e8cd7884f87eec', '0922222222', 'WEI-JIE@gmail.com', '106台北市大安區復興南路一段390號2樓', '92/2/2', '2021-05-07 00:37:37', '2021-05-07 00:37:37'),
(3, '林思妤', 'apple', 'd0be2dc421be4fcd0172e5afceea3970e2f3d940', '0933333333', 'apple@gmail.com', '106台北市大安區復興南路一段390號2樓', '92/3/3', '2021-05-07 00:39:48', '2021-05-07 00:39:48'),
(4, '黃詩晴', 'SHI-QING', 'febb8412abadaf4f05846d31b2c862e659093fab', '0944444444', 'SHI-QING@gmail.com', '106台北市大安區復興南路一段390號2樓', '92/4/4', '2021-05-07 00:41:35', '2021-05-07 00:41:35');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
