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
-- 資料表結構 `article`
--

CREATE TABLE `article` (
  `id` int(100) NOT NULL COMMENT '流水號',
  `articleId` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章編號',
  `articleName` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章標題',
  `articleContent` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章內容',
  `articleAuthor` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章作者',
  `articleCategory` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章分類',
  `articleTag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章標籤',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `article`
--

INSERT INTO `article` (`id`, `articleId`, `articleName`, `articleContent`, `articleAuthor`, `articleCategory`, `articleTag`, `created_at`, `updated_at`) VALUES
(1, 'a0001', '女人生命中長時間相伴的「好朋友」，三種友善地球的永續生理期用品', '月經是女人生命中長時間相伴的「好朋友」，但妳想過嗎？若每個月生理期來，都使用拋棄式的衛生棉、衛生棉條等不可回收的用品，女性一生將產生這些生理期垃圾：', '吳心萍、黃靖文（主婦聯盟環境保護基金會資深主任、專員）', '環保', '#布衛生棉\r\n#月亮褲\r\n#月亮杯', '2021-05-07 03:13:03', '2021-05-07 03:13:03'),
(2, 'a0002', '從意外到等待：台灣不同世代女性的初經經驗', '「［我］小孩子的時候鄰居歐巴桑都會講起那個（笑）…那個血怎樣怎樣，我在旁邊聽到，我都會記得。」——尤阿嬤（b. 1938-）', '王秀雲（成功大學醫學系、醫學科技與社會研究中心）', '性別', '#初經', '2021-05-07 03:13:55', '2021-05-07 03:13:55'),
(3, 'a0003', '給你的寵愛身體懶人包：第一次月亮杯就上手', '月經量杯，俗稱「月亮杯」，是一種用矽膠材質製作的軟杯，柔軟有彈性，可以捲起推入陰道之中，用以承接經血的女性生理用品。1937年美國人發明月亮杯之後，它很快成為歐美女性一種生理用品的選擇。凡妮莎在自己特製的月亮杯年鑑裡發現，2003年還只有兩個品牌的月亮杯，十幾年後，至今全球已有104個了！英國 Mooncup、美國 Keeper、德國 Meluna、芬蘭 Lunette⋯⋯等', '慢慢說', '衛教', '#月亮杯', '2021-05-07 03:15:03', '2021-05-07 03:15:03'),
(4, 'a0004', '關於月亮杯你一定要知道的十件事！你也來一杯', '根據統計女人平均一生要用掉一萬片衛生棉，女人們消耗著大量的衛生棉，從23公分到42公分應有盡有， 無形中造成地球的負擔。此時衛生棉條帶著更容易被地球消化以及更體貼身體的設計出現了，但依然無法降低高單價及大量產出的問題。', '臉紅紅', '衛教', '#月亮杯', '2021-05-07 03:15:52', '2021-05-07 03:15:52'),
(5, 'a0005', '給「想對環境更溫柔，又離不開衛生棉條」的妳：這款棉條導管可重複使用，減少數億廢棄物', 'Dame 設計出一款可重複使用的衛生棉導管，搭配有機且無化學成分的衛生棉條，於 2018 年 2 月底在 Kickstarter 上集資。此款衛生棉條以可分解的材質包裝，同時，Dame 也與零售商討論，要將此產品以無包裝的方式大量生產。此外，Dame 計畫與實踐「再生農法」（ Regenerative Farming ）的農民合作，令其產品可達到「減碳正效益」（Carbon Positive），幫助減少碳排放、為改善全球溫室效應盡一份心力。', '社企流／編譯：李沂霖', '環保', '#棉條', '2021-05-07 03:16:38', '2021-05-07 03:16:38');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `article`
--
ALTER TABLE `article`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
