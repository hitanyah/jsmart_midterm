-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-13 14:37:10
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
-- 資料庫： `jsmart_midterm`
--

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL COMMENT '商品流水號',
  `itemName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `itemImg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品圖片路徑',
  `itemPrice` int(11) NOT NULL COMMENT '商品價格',
  `itemQty` tinyint(3) NOT NULL COMMENT '商品數量',
  `itemDescription` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品描述',
  `itemCategoryId` int(11) NOT NULL COMMENT '商品種類編號',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `itemImg`, `itemPrice`, `itemQty`, `itemDescription`, `itemCategoryId`, `created_at`, `updated_at`) VALUES
(2, '弦月柔棉 日用薄型衛生棉 15片', 'item_20210511144727.png', 60, 100, '親膚少刺激\r\n嚴選天然無漂白素材\r\n6大無添加\r\n新升級波紋瞬潔層', 1, '2021-05-12 09:13:14', '2021-05-12 09:13:14'),
(3, '弦月柔棉 日用量多衛生棉 12片', 'item_20210511144744.png', 70, 100, '親膚少刺激\r\n嚴選天然無漂白素材\r\n6大無添加\r\n新升級波紋瞬潔層', 1, '2021-05-12 09:13:17', '2021-05-12 09:13:17'),
(4, '滿月柔棉 夜用薄型衛生棉 9片', 'item_20210511144757.png', 60, 100, '親膚少刺激\r\n嚴選天然無漂白素材\r\n6大無添加\r\n新升級波紋瞬潔層', 1, '2021-05-12 09:13:20', '2021-05-12 09:13:20'),
(5, '滿月柔棉 夜用加長衛生棉 7片', 'item_20210511144812.png', 80, 100, '親膚少刺激\r\n嚴選天然無漂白素材\r\n6大無添加\r\n新升級波紋瞬潔層', 1, '2021-05-12 09:13:23', '2021-05-12 09:13:23'),
(6, '新月柔棉 量少型衛生棉 16片', 'item_20210511145044.png', 60, 100, '親膚少刺激\r\n嚴選天然無漂白素材\r\n6大無添加\r\n新升級波紋瞬潔層', 1, '2021-05-12 09:13:25', '2021-05-12 09:13:25'),
(7, '朔月柔棉 超薄護墊 40片', 'item_20210511145100.png', 60, 100, '親膚少刺激\r\n嚴選天然無漂白素材\r\n6大無添加\r\n新升級波紋瞬潔層', 1, '2021-05-12 09:13:29', '2021-05-12 09:13:29'),
(8, '衛生棉條 一般型 10入', 'item_20210511145203.png', 150, 100, '花苞型導管、好推不沾手\r\n第1時間瞬吸 360度動作變安心不漏\r\n長達8小時吸收力\r\n一般流量適用', 3, '2021-05-12 09:13:43', '2021-05-12 09:13:43'),
(9, '衛生棉條 量少型 10入', 'item_20210511145230.png', 150, 100, '花苞型導管、好推不沾手\r\n第1時間瞬吸 360度動作變安心不漏\r\n長達8小時吸收力\r\n一般流量適用', 3, '2021-05-12 09:13:36', '2021-05-12 09:13:36'),
(10, '衛生棉條 量多型 9入', 'item_20210511145235.png', 150, 100, '花苞型導管、好推不沾手\r\n第1時間瞬吸 360度動作變安心不漏\r\n長達8小時吸收力\r\n一般流量適用', 3, '2021-05-12 09:13:40', '2021-05-12 09:13:40'),
(11, '盈月杯 一般型', 'item_20210511145312.png', 1500, 100, '可容納20ml經血\r\n台灣製造\r\n100%醫療級矽膠', 4, '2021-05-12 09:13:46', '2021-05-12 09:13:46'),
(12, '盈月杯 入門型', 'item_20210511145335.png', 1500, 100, '可容納10ml經血\r\n台灣製造\r\n100%醫療級矽膠', 4, '2021-05-12 09:13:48', '2021-05-12 09:13:48'),
(13, '盈月杯 量多型', 'item_20210511145339.png', 1500, 100, '可容納30ml經血\r\n台灣製造\r\n100%醫療級矽膠', 4, '2021-05-12 09:13:50', '2021-05-12 09:13:50'),
(14, '月暈小褲', 'item_20210511145344.png', 800, 100, '取代悶熱護墊及衛生棉\r\nMIT材質抑菌防漏、快速吸收\r\n可重覆使用，手洗機洗皆可', 5, '2021-05-12 09:13:54', '2021-05-12 09:13:54'),
(15, '測試資料', 'item_20210511153225.png', 123, 12, '123456', 1, '2021-05-12 09:14:19', '2021-05-12 09:14:19'),
(16, '測試資料', 'item_20210511153245.png', 123, 12, '123456', 1, '2021-05-12 09:14:21', '2021-05-12 09:14:21'),
(17, '測試資料', 'item_20210511153249.png', 123, 12, '123456', 1, '2021-05-12 09:14:23', '2021-05-12 09:14:23'),
(28, '測試資料', 'item_20210512091800.png', 180, 10, '123456', 1, '2021-05-13 14:36:49', '2021-05-13 14:36:49');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`) USING BTREE;

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品流水號', AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
