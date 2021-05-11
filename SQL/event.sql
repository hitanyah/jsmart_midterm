-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-07 03:19:59
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
-- 資料庫： `event`
--

-- --------------------------------------------------------

--
-- 資料表結構 `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `eventName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventDate` date NOT NULL,
  `eventDescription` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventLocation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventPrice` smallint(6) NOT NULL,
  `eventCategory` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `event`
--

INSERT INTO `event` (`id`, `eventId`, `eventName`, `eventDate`, `eventDescription`, `eventLocation`, `eventImg`, `eventPrice`, `eventCategory`, `created_at`, `updated_at`) VALUES
(2, 9, '花草系自然甜母女──蛋糕花藝創作', '2021-05-08', '主廚事先完成蛋糕體製作，提供給每位學員，\r\n課程中口述蛋糕體的製作方式，並提供完整食譜。 \r\n學員經由主廚指導完成火龍果內餡堆疊，\r\n並於外層抹上蔬果鮮奶油霜至整顆蛋糕完整，\r\n學員以食用花自由創作裝', '台灣台北市中山北路二段30號\r\nThe One中山食藝店\r\n位於台北捷運淡水線【中山站】，\r\n3號出口，往前步行左轉中山北路 \r\n(晶華酒店正對面)', '', 1880, '', '2021-05-05 18:59:56', '2021-05-06 09:00:35'),
(3, 6, '女聲-關於「她」、「土地」和「聆聽」', '2021-05-14', '這是一群女生，包括生物聲學科學家、\r\n野地錄音師、音樂家、聲音藝術家、\r\nAI電腦音樂設計師\r\n、電台主持人…… \r\n以所受的訓練與感官能力去聆聽這個世界，\r\n並且用獨特的方式與實踐，\r\n展演她們的「', '台灣台北市新生南路三段56巷7號2樓\r\n女書店', '', 200, '', '2021-05-05 19:03:17', '2021-05-06 16:41:08'),
(4, 7, '女神盃 Girls Surf Boardriders Taiwan', '2021-05-08', '女神盃 Girls Surf Boardriders Taiwan 活動賽事\r\n Only Girls 一場專屬於女孩們的衝浪活動賽事。 \r\n結合了衝浪賽事，衝浪體驗，瑜珈，健身體適能等... \r\n推', '台灣宜蘭縣頭城鎮濱海路二段6號外澳沙灘', '', 800, '', '2021-05-05 19:05:21', '2021-05-06 09:00:29'),
(5, 0, 'Simple talk｜給女孩的人生關鍵字：旅行生活篇', '2021-05-29', 'SLL簡單生活實驗室將攜手年輕世代、各領域專長的網紅女孩們，\r\n舉辦【Simple Talk｜給女孩的人生關鍵字】系列講座。\r\n希望透過講者分享各自的人生關鍵字，\r\n陪伴女孩們持續探索並發現自己，一起', '台灣台北市大同區承德路三段214巷29號\r\n捷運圓山站2號出口', '', 250, '', '2021-05-06 16:43:44', '2021-05-06 16:43:44'),
(6, 0, '523我愛森{白色系瑜珈自然森呼吸} APP Women台北-第57場(限女)', '2021-05-23', '523我愛森，在5月23日當天，我們一起走入大安森林公園，\r\n呼吸芬多精擁抱大地，舒展肢體樂玩戶外瑜珈，進行假日光合作用。\r\n 在溫暖的五月天裡，穿著白色體驗戶外活動，\r\n認識和妳一樣具備純淨質感的大', '台灣台北市大安森林公園\r\n五號出口集合', '', 400, '', '2021-05-06 16:49:29', '2021-05-06 16:49:29');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
