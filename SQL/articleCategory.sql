-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 05 月 07 日 06:11
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
-- 資料庫： `mid`
--

-- --------------------------------------------------------

--
-- 資料表結構 `articleCategory`
--

CREATE TABLE `articleCategory` (
  `id` int(11) NOT NULL,
  `articleCategoryId` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleCategoryName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `articleCategory`
--

INSERT INTO `articleCategory` (`id`, `articleCategoryId`, `articleCategoryName`, `created_at`, `updated_at`) VALUES
(1, 'ac01', '環保', '2021-05-07 03:17:36', '2021-05-07 03:17:36'),
(2, 'ac02', '衛教', '2021-05-07 03:17:45', '2021-05-07 03:17:45'),
(3, 'ac03', '性別', '2021-05-07 03:17:56', '2021-05-07 03:17:56');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articleCategory`
--
ALTER TABLE `articleCategory`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articleCategory`
--
ALTER TABLE `articleCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
