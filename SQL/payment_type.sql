-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-07 12:11:41
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `jsmart`
--

-- --------------------------------------------------------

--
-- 資料表結構 `payment_type`
--

CREATE TABLE `payment_type` (
  `paymentTypeId` int(11) NOT NULL COMMENT '付款方式編號(流水號)',
  `paymentTypeName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式名稱',
  `paymentTypeImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式圖片',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更改時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='付款方式';

--
-- 傾印資料表的資料 `payment_type`
--

INSERT INTO `payment_type` (`paymentTypeId`, `paymentTypeName`, `paymentTypeImg`, `created_at`, `updated_at`) VALUES
(1, '超商取貨付款', 'storePay.jpg', '2021-05-06 21:50:01', '2021-05-06 21:50:01'),
(2, '信用卡', 'cardPay.jpg', '2021-05-06 21:50:15', '2021-05-06 21:50:15'),
(3, 'LINE Pay', 'linePay.jpg', '2021-05-06 21:50:31', '2021-05-06 21:50:31'),
(4, 'Apple Pay', 'applePay.jpg', '2021-05-06 21:50:41', '2021-05-06 21:50:41');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`paymentTypeId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `paymentTypeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '付款方式編號(流水號)', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
