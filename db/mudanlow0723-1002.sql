-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-19 17:18:59
-- 伺服器版本： 8.0.36
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mudanlow`
--

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `a_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `content` text,
  `key_word_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `articles`
--

INSERT INTO `articles` (`a_id`, `date`, `title`, `photos`, `content`, `key_word_id`) VALUES
(2, '2023-05-20', '一歲可愛英國長毛貓認養', '[\"84c6675af251497efd0d469ed82de858ee82d044.jpg\"]', '英國長毛貓\r\n年齡:1歲\r\n花色:白毛帶一點棕\r\n領養電話:09xxxxxxxxx\r\n已結紮', 5),
(3, '2024-02-18', '過年公休', '[\"9a604e9982cb957ca8f93e8f9c550c6c7e02102e.jpg\"]', '年後 休假公告 💕\r\n忙完大家的過年菜\r\n換我們休大假囉 💗\r\n2/19（一）～2/22（四）\r\n連休四天\r\n過個年 嘴兒嚐甜甜 …\r\n甜點🍮 大爆發 \r\n🍧杏仁涼豆腐\r\n🍨花生涼豆花', 4),
(4, '2024-04-11', '經濟午餐新菜單', '[\"500f32d2f5c792d9c8e47a23734cc9cecbc6bd74.jpg\"]', '牡丹樓 「午間定食套餐 」🍱 上架囉 💕\r\n8週年開幕慶🎉 「商業定食套餐」\r\n2人成行\r\n留下美美 照片 打卡分享上傳 iG 或 FB \r\n享 每桌 2 人同享 1人免費 一次\r\n煩請來電預約專線：\r\n06-2217509\r\n💕活動期間 即日起 ～ 4月底💕', 2),
(5, '2024-05-08', '《牡丹樓 翻新夜 | 香檳氣泡 醉中菜 | 醐閣》', '[\"a00a69b316c803bc963b3c9e36060f7e2dec74c4.jpg\"]', '嗨～ 大家好 💗\r\n5/17（五）\r\n5/17（五）\r\n5/17（五）\r\n想參加的 快跟我們說💕\r\n這整場幾乎是闆娘愛的 香檳、氣泡\r\n挑香檳功力也極好\r\n其中更有大愛的 西班牙頂款CAVA\r\n餐 搭 酒 🍷 每位$2950/位\r\n——————————————————————\r\n《牡丹樓 翻新夜 | 香檳氣泡 醉中菜 | 醐閣》\r\n.\r\n⚠️【氣泡的氣度 & 中菜的多變】\r\n各種菜系的餐酒搭配這件事情來說，中菜算是難中之難，多變的醬汁，台灣特有的複雜融合菜系，還有那堪稱奇蹟的上菜速度!! 都不是多數葡萄酒能信手拈來的。\r\n.\r\n葡萄酒款中，氣泡酒 (包含香檳)，是少數中能相對輕鬆應對各大菜系的常勝軍，醐閣 這次要與近期翻新裝潢的 『台南饕客老店 - 牡丹樓』，來場 【有氣度】 的台南在地中菜餐酒會!', 3),
(6, '2024-03-04', '更名牡丹樓!!!!!!', '[\"ed1f893dd1068f396ca5002ae0663f8ab157779d.jpg\"]', '日安 吾友們 在此問好💕\r\n要跟大家說 牡丹庭 正式更名為\r\n「牡丹樓 中菜」\r\n餐廳𧫴訂於3月24 日週日上午11:00 時將舉辦Grand Re-Open 特邀您來一同參與💗\r\n冀望未來有各位先進的支持與鼓勵指教牡丹樓 能更上層樓\r\n當日現場備有各式免費點心、飲品、酒水 招待\r\n唯望舊雨新知 一起蒞臨參與賜教💗\r\n只希望你們一起來為我們共襄熱熱鬧鬧\r\n💗牡丹樓 中菜餐廳\r\n現址：台南市中西區永福路二段160號\r\n邱靖喬 0925873025 敬邀💗 \r\n電話☎️：06-2217509\r\n牡丹樓 中菜\r\n牡丹庭漢風餐食盒', 3),
(8, '2024-06-11', 'fgagrfa', NULL, 'fgfadfgadfg', 2),
(9, '2024-07-18', 'asdfas', NULL, 'fasdfas', 3),
(10, '2024-07-18', 'asdfas', NULL, 'fasdfasasdfa', 3),
(11, '2024-05-16', 'asdfsadfa', NULL, 'asdfasdfs你好', 3),
(12, '2024-07-18', 'asdfsadf', NULL, 'asdfasdf', 3),
(13, '2024-07-18', 'asfasd', NULL, 'asdfadsf', 2),
(14, '2024-07-18', 'asfsad', NULL, 'aasdfad', 3),
(16, '2024-07-17', '54645', NULL, '4564645', 3),
(17, '2024-07-18', '54354', '17801cc7-83f1-4ebd-a6ec-bd944854e13c.jpg', 'gsdgsdrg', 2),
(18, '2024-07-18', 'afgsfg', '739f3a89-3131-4bbc-8da1-a239f3b55434.png', 'sdfgsdfg', 3),
(19, '2024-07-12', '8678678', 'a01bdc42-e675-4473-8a90-77884447525b.png', '78678678', 5),
(20, '2024-07-10', 'asdfas', '9fd4ce39-8c0c-40b6-8eed-1b6905709b8d.png', 'asdfas', 2),
(21, '2024-07-17', 'afgarg', '1bee6c29-1576-4e39-8ba3-4bd7c55b0b91.png', 'argaharh', 3),
(22, '2024-07-18', 'asdfasd', '5b4dd0dd-f7ae-43af-82b9-77fcc6f6ba7d.jpg', 'asdfasdf', 4),
(23, '2024-07-20', '123456', '', '132465', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `bento`
--

CREATE TABLE `bento` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `bento`
--

INSERT INTO `bento` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(6, 1, '功夫雞便當', 200, '4.webp', '人氣商品'),
(6, 2, '蔥爆花枝便當', 200, '3.webp', '人氣商品'),
(6, 3, '香煎鮭魚便當', 200, '2.webp', NULL),
(6, 4, '辣炒豬肉便當', 200, '1.webp', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `brand`
--

INSERT INTO `brand` (`id`, `name`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, 'adidas', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, 'PUMA', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, 'New Balance', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `cart_status`
--

CREATE TABLE `cart_status` (
  `sid` int NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `status_remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cart_status`
--

INSERT INTO `cart_status` (`sid`, `status_name`, `status_remark`) VALUES
(1, '已送出訂單', '待店家確認'),
(2, '店家以確認', '訂單處於待處理狀態'),
(3, '取消訂單', '已取消'),
(4, '完成訂單', '商品已送達');

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '服飾', NULL, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, '鞋類', NULL, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, '配件', NULL, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, '短袖上衣', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(5, '短褲', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(6, '長袖上衣', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(7, '長褲', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(8, '外套', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(9, '慢跑鞋', 2, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(10, '籃球鞋', 2, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(11, '包款', 3, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(12, '帽類', 3, '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `color`
--

CREATE TABLE `color` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `color`
--

INSERT INTO `color` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '黑', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, '白', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, '灰', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, '深藍', '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `combo_meal`
--

CREATE TABLE `combo_meal` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `combo_meal`
--

INSERT INTO `combo_meal` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(1, 1, '四人經典合菜', 4888, '\"8b1b89da1a8314400145cbb495f731caac609113.webp\"', NULL),
(1, 2, '六人經典合菜', 6888, '\"86a9b02d462155cd5397cb19e327e9236ab0348a.webp\"', NULL),
(1, 3, '八人經典合菜', 9388, '\"ba181e0e70d18726c6cfc6d898687ae414f450e7.webp\"', '人氣商品'),
(1, 4, '十人經典合菜', 11988, '\"3da35ba8b7513487ada6e6d2055cbee8e6d0b81f.webp\"', '人氣商品'),
(1, 5, '十二人經典合菜', 13988, '\"e92a62b945b9200c3722645fc6dd13db7efc5f12.webp\"', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `c_id` int NOT NULL,
  `value` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `comments`
--

INSERT INTO `comments` (`c_id`, `value`, `content`, `created_at`) VALUES
(1, 5, 'asdfasdfasd', '2024-06-03 01:48:27'),
(2, 5, 'asdfasdf', '2024-06-03 01:48:39'),
(3, 3, 'asfadsfas', '2024-06-03 01:49:37'),
(4, 5, 'asfadsfasfhsghs', '2024-06-03 01:49:57'),
(5, 3, '1234', '2024-06-06 13:54:52'),
(6, 5, '7891', '2024-06-06 13:55:04'),
(7, 4, '1234', '2024-06-06 14:13:47'),
(8, 2, '123456', '2024-06-06 14:14:00'),
(9, 4, '01234', '2024-06-06 14:15:41'),
(10, 2, '1234', '2024-06-06 14:15:53'),
(11, 5, '4567', '2024-06-06 14:16:27'),
(12, 3, '1234', '2024-06-06 14:23:24'),
(13, 3, '1234', '2024-06-06 14:24:24'),
(14, 4, '1234', '2024-06-06 14:25:37'),
(15, 1, '1234', '2024-06-06 14:25:51'),
(16, 3, '15456', '2024-06-06 14:34:02'),
(17, 3, '32415', '2024-06-06 14:34:12'),
(18, 3, '1234', '2024-06-06 14:47:09'),
(19, 4, '1234', '2024-06-06 14:58:22'),
(20, 5, 'asdfasdfas', '2024-07-01 15:39:18'),
(21, 4, 'agasrgsre', '2024-07-01 15:39:27'),
(22, 4, 'sdfasd', '2024-07-01 15:56:37'),
(23, 4, '123456', '2024-07-16 09:11:15'),
(24, 3, '1234', '2024-07-16 09:47:52'),
(25, 3, '12345', '2024-07-16 10:03:37'),
(26, 4, '123456', '2024-07-17 09:12:37'),
(27, 4, '1343465401654', '2024-07-17 10:30:34'),
(28, 4, '13456454', '2024-07-17 15:27:27'),
(29, 5, '123456', '2024-07-17 16:14:49'),
(30, 4, '你好!', '2024-07-18 16:09:44');

-- --------------------------------------------------------

--
-- 資料表結構 `contact_book`
--

CREATE TABLE `contact_book` (
  `member_profile_id` int DEFAULT NULL,
  `receive_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_mobile` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `contact_book`
--

INSERT INTO `contact_book` (`member_profile_id`, `receive_name`, `address`, `contact_mobile`) VALUES
(1, '张三', '上海市浦东新区', '13812345678'),
(4, '赵六', '北京市朝阳区', '13765432109'),
(2, '李四', '广州市天河区', '13987654321'),
(5, '小明', '深圳市南山区', '13578901234'),
(3, '王五', '成都市武侯区', '13654321098'),
(6, '小红', '武汉市江汉区', '13678901234'),
(7, '小刚', '重庆市渝中区', '13578901235'),
(8, '小李', '西安市雁塔区', '13578901236'),
(9, '小华', '郑州市中原区', '13578901237'),
(10, '小明', '南京市鼓楼区', '13578901238'),
(11, '张四', '上海市浦东新区', '13812345679'),
(12, '李五', '广州市天河区', '13987654322'),
(13, '王六', '成都市武侯区', '13654321099'),
(14, '赵七', '北京市朝阳区', '13765432110'),
(15, '小八', '深圳市南山区', '13578901235'),
(16, '小九', '武汉市江汉区', '13578907236'),
(17, '小十', '重庆市渝中区', '13578901237'),
(18, '小十一', '西安市雁塔区', '13578901238'),
(19, '小十二', '郑州市中原区', '13578901239'),
(20, '小十三', '南京市鼓楼区', '13578901240'),
(21, '张十四', '上海市浦东新区', '13812345670'),
(22, '李十五', '广州市天河区', '13987654323'),
(23, '王十六', '成都市武侯区', '13654321090'),
(24, '赵十七', '北京市朝阳区', '13765432101'),
(25, '小十八', '深圳市南山区', '13578901241'),
(26, '小十九', '武汉市江汉区', '13578901242'),
(27, '小二十', '重庆市渝中区', '13578901243'),
(28, '小二十一', '西安市雁塔区', '13578901244'),
(29, '小二十二', '郑州市中原区', '13578901245'),
(30, '小二十三', '南京市鼓楼区', '13578901246'),
(31, '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `coupons`
--

CREATE TABLE `coupons` (
  `coupons_id` int auto_increment primary key,
  `user_id` int DEFAULT NULL,
  `coupons_sentDate` date DEFAULT NULL,
  `coupons_maxAge` date DEFAULT NULL,
  `used` boolean default false,
  `over_maxAge` boolean default false,
  `cs_id` int DEFAULT NULL,
  `accumulatedAmoun` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `coupons`
--

insert into `coupons`(`user_id`, `coupons_sentDate`,`coupons_maxAge`,`cs_id`,`used`)
values
(1,'2024-07-01','2024-07-30',5,0),
(1,'2024-07-15','2024-08-14',6,1),
(1,'2024-07-17','2024-08-16',7,0);

-- --------------------------------------------------------

--
-- 資料表結構 `coupons_sample`
--

CREATE TABLE `coupons_sample` (
  `cs_id` int unique, 
  `coupons_sample_price` int,
  `coupons_explain` varchar(1000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `coupons_sample`
--

INSERT INTO `coupons_sample` (`cs_id`, `coupons_sample_price`, `coupons_explain`) VALUES
(1, 500, '累積消費滿額5000贈送折價卷500元'),
(2, 700, '累積消費滿額7000贈送折價卷700元'),
(3, 900, '累積消費滿額12000贈送折價卷900元'),
(4, 1500, '累積消費滿額20000贈送折價卷1500元'),
(5, 100, '給測試的假資料'),
(6, 200, '給測試的假資料'),
(7, 300, '給測試的假資料');

-- --------------------------------------------------------

--
-- 資料表結構 `dessert`
--

CREATE TABLE `dessert` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `dessert`
--

INSERT INTO `dessert` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(5, 1, '原味千層蛋糕', 140, '\"8d2f63dcbebed68cdc277ba6424d8b8f9c78329c.webp\"', '招牌甜點'),
(5, 2, '抹茶千層蛋糕', 160, '\"ba0e9c43b3d5eb336262a83dc9b466e066a4053d.webp\"', NULL),
(5, 3, '焦糖伯爵蛋糕', 160, '\"4819d93b9420e8113332562418f270c7c8c12a98.webp\"', NULL),
(5, 4, '經典提拉米蘇', 180, '\"6cdad2e0221d9a7249c647aa1cbe9d8fbc9e7ad4.webp\"', '人氣商品'),
(5, 5, '生巧克力蛋糕', 180, '\"b3e4eb359df6d187f991b901dd862e382c2c88c3.webp\"', NULL),
(5, 6, '一口泡芙', 180, '\"087879a0bbb5f9a2d168f766ef30154e8e95b6c6.webp\"', '人氣商品'),
(5, 7, '時令水果盤', 160, '\"97f3d3ca8da7472d2d8c978e43239fbca9cd257d.webp\"', '人氣商品');

-- --------------------------------------------------------

--
-- 資料表結構 `drink`
--

CREATE TABLE `drink` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `drink`
--

INSERT INTO `drink` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(3, 1, '氣泡礦泉水', 120, '\"5e88f8ec1927d8f5fccef1f3475667fe23c6459e.webp\"', NULL),
(3, 2, '鮮榨時令果汁', 180, '\"a3398e17d51d136b0292bbf072e81249becb48b1.webp\"', '人氣商品'),
(3, 3, '特調奶茶', 120, '\"e662779083efde88df0e5bc25861f4e8820db718.webp\"', '人氣商品'),
(3, 4, '美式咖啡', 120, '\"cbbd8356aaab707d4bb3cdec9fc138e5db974251.webp\"', NULL),
(3, 5, '拿鐵咖啡', 120, '\"a4520c17a140d86e3d0d56bbdf70f55097cb6cf3.webp\"', '人氣商品'),
(3, 6, '熱伯爵茶', 120, '\"2f0ff7df2651f4d30cf35da04fd593d820a87ce3.webp\"', '人氣商品'),
(3, 7, '可口可樂', 40, '\"4afed9f0f036b0a5e19b9d000770a46e964729c3.webp\"', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `favorite`
--

CREATE TABLE `favorite` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `uid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `favorite`
--

INSERT INTO `favorite` (`id`, `pid`, `uid`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, 1, 2, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, 2, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, 3, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(5, 5, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `key_words`
--

CREATE TABLE `key_words` (
  `k_id` int NOT NULL,
  `key_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `key_words`
--

INSERT INTO `key_words` (`k_id`, `key_name`) VALUES
(1, '所有文章'),
(2, '新菜消息'),
(3, '節慶活動'),
(4, '公休時間'),
(5, '貓咪認養');

-- --------------------------------------------------------

--
-- 資料表結構 `liquor`
--

CREATE TABLE `liquor` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `liquor`
--

INSERT INTO `liquor` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(6, 1, '安柏夫人', 1300, '\"658e07c34e0ebf24035c42b447ac50b6cc067abc.webp\"', '人氣商品'),
(6, 2, '金牌台灣啤酒', 110, '\"a1784120bc0ff9c31259ff2ac6794a55edf77ffa.webp\"', NULL),
(6, 3, '金牌生啤酒18天', 150, '\"9d923ae431356566795b0bba5b82801118a7b8de.webp\"', '人氣商品'),
(6, 4, '百威', 110, '\"a03d56d72a433784ac32a1bd59a8f84db86e7892.webp\"', NULL),
(6, 5, '海尼根', 110, '\"827bf1063e6b0c56024701216756fb809d3cfa6d.webp\"', NULL),
(6, 6, '台風精釀啤酒', 200, '\"5f5de66808dfecd64b917b57069295a1c98946a7.webp\"', '人氣商品');

-- --------------------------------------------------------

--
-- 資料表結構 `member_card`
--

CREATE TABLE `member_card` (
  `member_profile_id` int DEFAULT NULL,
  `status_id` int DEFAULT '1',
  `c_id` int DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `card_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_card`
--

INSERT INTO `member_card` (`member_profile_id`, `status_id`, `c_id`, `productName`, `price`, `quantity`, `totalPrice`, `card_date`) VALUES
(31, 1, 287575, '蝦菇奶油醬', 350.00, 3, 1050.00, '2024-06-06 14:37:26'),
(31, 1, 287575, '波士頓龍蝦', 680.00, 1, 680.00, '2024-06-06 14:37:26');

-- --------------------------------------------------------

--
-- 資料表結構 `member_login`
--

CREATE TABLE `member_login` (
  `member_profile_id` int DEFAULT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `status` enum('active','blacklist') NOT NULL DEFAULT 'active',
  `reason` varchar(255) DEFAULT NULL,
  `blacklist_date` datetime DEFAULT NULL COMMENT '黑名單日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_login`
--

INSERT INTO `member_login` (`member_profile_id`, `account`, `password`, `hash`, `role`, `status`, `reason`, `blacklist_date`) VALUES
(1, 'user1', 'admin', 'hashed_password', 'admin', 'active', NULL, NULL),
(2, 'user2', 'admin', 'hashed_password', 'admin', 'active', NULL, NULL),
(3, 'wangwu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(4, 'zhaoliu', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(5, 'xiaoming', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(6, 'xiaohong', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(7, 'xiaogang', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(8, 'xiaoli', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(9, 'xiaohua', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(10, 'xiaoming2', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(11, 'zhangsi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(12, 'liwu', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(13, 'wangliu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(14, 'zhaoqi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(15, 'xiaoba', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(16, 'xiaojiu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(17, 'xiaoshi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(18, 'xiaoshier', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(19, 'xiaoshisan', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(20, 'xiaoshisi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(21, 'zhangshisi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(22, 'lishiwu', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(23, 'wangshiliu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(24, 'zhaoshiqi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(25, 'xiaoshiba', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(26, 'xiaoshijiu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(27, 'xiaoshierling', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(28, 'xiaoshieryi', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(29, 'xiaoshierer', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(30, 'xiaoshiersan', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(31, 'asd123456', '$2y$10$GnoPoG5jAbF2vQlbsilneu.t3iGtdofNLFn2TJqZ4ORC6xiyhaQvG', '$2y$10$GnoPoG5jAbF2vQlbsilneu.t3iGtdofNLFn2TJqZ4ORC6xiyhaQvG', 'user', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `member_profile`
--

CREATE TABLE `member_profile` (
  `id` int NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_profile`
--

INSERT INTO `member_profile` (`id`, `member_name`, `gender`, `email`, `mobile`, `birthday`, `create_date`) VALUES
(1, '张三', '男', 'zhangan@example.com', '13812345678', '1990-05-15', '2024-05-01 00:00:00'),
(2, '李四', '女', 'lii@example.com', '13987654321', '1988-10-20', '2024-05-02 00:00:00'),
(3, '王五', '男', 'wanwu@example.com', '13654321098', '1995-03-08', '2024-05-03 00:00:00'),
(4, '赵六', '女', 'zhaoliu@example.com', '13765432109', '1992-08-25', '2024-05-04 00:00:00'),
(5, '小明', '男', 'xiaoing@example.com', '13578901234', '1998-12-10', '2024-05-05 00:00:00'),
(6, '小红', '女', 'xiahng@example.com', '13658909234', '1997-11-20', '2024-05-06 00:00:00'),
(7, '小刚', '男', 'xiagang@example.com', '12315151155', '1996-09-15', '2024-05-07 00:00:00'),
(8, '小李', '女', 'xiaoliexample.com', '13578901236', '1994-07-05', '2024-05-08 00:00:00'),
(9, '小华', '男', 'xiohua@example.com', '13578971237', '1993-04-25', '2024-05-09 00:00:00'),
(10, '小明', '女', 'xiaoming2@example.com', '13578901238', '1991-02-15', '2024-05-10 00:00:00'),
(11, '张四', '男', 'zhangsi@example.com', '13812345679', '1991-05-15', '2024-05-11 00:00:00'),
(12, '李五', '女', 'liwu@example.com', '13987654322', '1989-10-20', '2024-05-12 00:00:00'),
(13, '王六', '男', 'angliu@example.com', '13654321099', '1996-03-08', '2024-05-13 00:00:00'),
(14, '赵七', '女', 'zhaoqi@example.com', '13765432110', '1993-08-25', '2024-05-14 00:00:00'),
(15, '小八', '男', 'xaoba@example.com', '13578901235', '1999-12-10', '2024-05-15 00:00:00'),
(16, '小九', '女', 'xiaojiu@example.com', '73578901236', '1992-07-10', '2024-05-16 00:00:00'),
(17, '小十', '男', 'xiaohi@example.com', '13578901237', '1995-04-10', '2024-05-17 00:00:00'),
(18, '小十一', '女', 'xiaoshier@example.com', '1357890238', '1994-02-10', '2024-05-18 00:00:00'),
(19, '小十二', '男', 'aoshisan@example.com', '13578901239', '1997-11-10', '2024-05-19 00:00:00'),
(20, '小十三', '女', 'aoshisi@example.com', '13578901240', '1998-09-10', '2024-05-20 00:00:00'),
(21, '张十四', '男', 'zhanshisi@example.com', '1381235670', '1992-05-15', '2024-05-21 00:00:00'),
(22, '李十五', '女', 'lishiwu@example.com', '13987654323', '1994-10-20', '2024-05-22 00:00:00'),
(23, '王十六', '男', 'wangshiliu@example.com', '1365321090', '1998-03-08', '2024-05-23 00:00:00'),
(24, '赵十七', '女', 'zaoshiqi@example.com', '13765432101', '1991-08-25', '2024-05-24 00:00:00'),
(25, '小十八', '男', 'xiashba@example.com', '1378901241', '1996-12-10', '2024-05-25 00:00:00'),
(26, '小十九', '女', 'xiashijiu@example.com', '1358901242', '1993-07-10', '2024-05-26 00:00:00'),
(27, '小二十', '男', 'xiaohierling@example.com', '13578901243', '1995-04-10', '2024-05-27 00:00:00'),
(28, '小二十一', '女', 'xiaoshieryi@example.com', '1357801244', '1997-02-10', '2024-05-28 00:00:00'),
(29, '小二十二', '男', 'xaoshierer@example.com', '1357890245', '1999-11-10', '2024-05-29 00:00:00'),
(30, '小二十三', '女', 'xiaoshersan@example.com', '1357901246', '2000-09-10', '2024-05-30 00:00:00'),
(31, 'asd123456', '女', 'asd123456@gmail.com', '0987652323', '2024-05-07', '2024-06-06 14:35:59');

-- --------------------------------------------------------

--
-- 資料表結構 `member_profile_simple`
--

CREATE TABLE `member_profile_simple` (
  `id` int NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_profile_simple`
--

INSERT INTO `member_profile_simple` (`id`, `member_name`, `gender`, `email`, `mobile`, `birthday`, `password`, `create_date`) VALUES
(1, '牡丹樓商家', '25', 'asd123456@gmail.com', '0977555444', '2024-05-29', 'asd123456', '2024-07-18 09:56:17'),
(2, '岳泓', '25', 'cses20130312@gmail.com', '0977150546', '2024-04-10', '123456', '2024-07-18 09:56:56'),
(3, 'lee', '32', 'zxc123@gmail.com', '0912345678', '2023-02-07', 'zxc123', '2024-07-18 11:30:18');

-- --------------------------------------------------------

--
-- 資料表結構 `menu_items`
--

CREATE TABLE `menu_items` (
  `item_id` int NOT NULL,
  `item_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `menu_items`
--

INSERT INTO `menu_items` (`item_id`, `item_name`) VALUES
(1, 'combo_meal'),
(2, 'one'),
(3, 'drink'),
(4, 'liquor'),
(5, 'dessert'),
(6, 'bento');

-- --------------------------------------------------------

--
-- 資料表結構 `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `sender` int DEFAULT NULL,
  `isMerchant` tinyint(1) DEFAULT NULL,
  `message` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `messages`
--

INSERT INTO `messages` (`id`, `room`, `sender`, `isMerchant`, `message`, `timestamp`) VALUES
(1, 'room2', 1, 1, '1234', '2024-07-18 02:20:26'),
(2, 'room2', 2, 0, '5678', '2024-07-18 02:20:35'),
(3, 'room2', 1, 1, '你好嗎', '2024-07-18 02:20:53'),
(4, 'room2', 2, 0, '我很好', '2024-07-18 02:20:59'),
(5, 'room2', 1, 1, '123456', '2024-07-18 03:52:26'),
(6, 'room2', 1, 1, '123', '2024-07-18 07:45:56');

-- --------------------------------------------------------

--
-- 資料表結構 `one`
--

CREATE TABLE `one` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) NOT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `one`
--

INSERT INTO `one` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(2, 1, '招牌功夫雞', 300, '\"2.webp\"', '招牌菜'),
(2, 2, '薄脆蝦笛稣', 320, '\"1.webp\"', '人氣商品'),
(2, 3, '菌菇檸檬蝦', 380, '\"d398461028081cb2be1e7e14a440826a64fadbbb.webp\"', NULL),
(2, 4, '當日季節時蔬', 240, '\"bc39c12aac8a8b399b478a9911d6370abbc6febc.webp\"', NULL),
(2, 5, '草蝦燴時蔬', 340, '\"50a76e74aa9d6db03e476e547051ad8d4481927f.webp\"', NULL),
(2, 6, '臘味雙寶炒飯', 280, '\"66d7d35aa14326d0b0c77aac8bff424fb9f84549.webp\"', NULL),
(2, 7, '本幫紅燒肉', 480, '\"2f5c61d72ff3e97e7a0087060cd99ff4e3c6661e.webp\"', '招牌菜'),
(2, 8, '川味剁椒草蝦', 820, '\"de50fc79dbc96cfadf8106cc9f238e4a899e24bb.webp\"', NULL),
(2, 9, '招牌脆皮豬五花', 780, '\"f7fe79a9e3f2e5ab4c44b9a01e925d754660ca31.webp\"', NULL),
(2, 10, '經典三杯雞', 680, '\"4757af6c38510f42c2a083f5724886ab86d20528.webp\"', NULL),
(2, 11, '經典酥炸蝦球', 620, '\"3c783a3aaf9c61148ea0b8e85a0eefe28a231ae9.webp\"', '人氣商品'),
(2, 12, '家常炒肉絲', 300, '\"816cec51efce545d2cc1eb69692f5c70b5b28da6.webp\"', NULL),
(2, 13, '宮保雞丁', 360, '\"4f494471688117e9d2bb515f0e9ba167f0c0c9ae.webp\"', '招牌菜'),
(2, 14, '乾鍋川味辣炒羊肉', 720, '\"82001735c499d34a64f302c463f74c657642b9c5.webp\"', NULL),
(2, 15, '避風塘炒大蝦', 820, '\"55c8b0d780c0bf992f87c526342dae68946d90a7.webp\"', '人氣商品'),
(2, 16, '冷菜三拼', 250, '\"750b86d25b30a34eedb40d0a8f4f5aa0b3df3b36.webp\"', NULL),
(2, 17, '招牌糖醋魚', 320, '\"e01b9fdc74ee882226004f0e9d71b8ce75d5580a.webp\"', '人氣商品'),
(2, 18, '麻辣擔擔醬熱豆花', 100, '\"8e018ea75a4b77df2b02a060bbe5f370fe76964f.webp\"', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `orderlist`
--

CREATE TABLE `orderlist` (
  `o_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_time` datetime DEFAULT NULL,
  `product_quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `otp`
--

CREATE TABLE `otp` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `exp_timestamp` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `sn` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `photos` text,
  `stock` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `info` text,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `sn`, `name`, `brand_id`, `cat_id`, `photos`, `stock`, `price`, `info`, `color`, `size`, `tag`, `created_at`, `updated_at`) VALUES
(1, '09fdab8a-6185-4484-8bea-c47d85647d8b', '蝦菇奶油醬', 4, 9, '菜1.jpg', '90', 350, '蝦菇奶油醬是一款美味且豐富的醬料，專為喜愛海鮮和奶油風味的人士打造。這款醬料結合了鮮蝦、香菇和奶油的美妙味道，是烹飪多種菜餚的完美選擇。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, '09fdab8a-6185-4484-8bea-c47d85647d8b', '波士頓龍蝦', 4, 9, '菜2.jpg', '90', 680, '是來自北大西洋的一種龍蝦品種。它以其豐富的肉質、甜美的味道和獨特的口感而著稱。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, '09fdab8a-6185-4484-8bea-c47d85647d8b', '蛤蜊燉湯', 4, 9, '菜3.jpg', '90', 250, '以新鮮的蛤蜊為主要材料，搭配清淡的湯底和香料，是一道口感鮮美、營養豐富的湯品。。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, '09fdab8a-6185-4484-8bea-c47d85647d8b', '熱豆花', 3, 9, '菜4.jpg', '90', 90, '熱豆花是一道以嫩豆腐為主要原料製作的甜品，通常配以甜糖水或糖漿，口感滑嫩，是夏日消暑的經典選擇。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(5, '09fdab8a-6185-4484-8bea-c47d85647d8b', '中式川味麻辣魚', 4, 9, '菜5.jpg', '90', 350, '中式川味麻辣魚是一道具有濃郁川菜風味的魚類料理。其特色在於以麻辣調味為主，口感辣而麻，具有濃郁的香料風味和豐富的醬汁。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(6, '09fdab8a-6185-4484-8bea-c47d85647d8b', '古早味控肉', 1, 9, '菜6.jpg', '90', 180, '以豬腩肉為主料，經過長時間的燉煮，肉質軟嫩，入口即化。它的特色在於醬汁濃郁、味道豐富，是一道家常菜中的經典之作。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(7, '09fdab8a-6185-4484-8bea-c47d85647d8b', '藥膳香腸', 1, 9, '菜7.jpg', '90', 150, '添加了多種中藥材和調味料製成的腸製品。它不僅具有傳統香腸的口感，還有中藥材的滋補效果，是一種兼具美食與養生功效的特色食品。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(8, '', '北平烤鴨', 1, 0, '菜8.jpg', '0', 250, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(9, '', '鮮味肉包', 1, 0, '菜9.jpg', '0', 120, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(10, '', '爆炒青菜', 2, 0, '菜10.jpg', '0', 110, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(11, '', '皮蛋炒苦瓜', 2, 0, '菜11.jpg', '0', 130, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(12, '', '蒜香水炒五色時蔬', 2, 0, '菜12.jpg', '0', 130, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(13, '', '蒜炒高麗菜', 2, 0, '菜13.jpg', '0', 150, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(14, '', '清炒鮮香菇', 2, 0, '菜14.jpg', '0', 150, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(15, '', '木耳洋蔥菇', 2, 0, '菜15.jpg', '0', 150, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(16, '', '奶焗蝦', 4, 0, '菜16.jpg', '0', 430, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(17, '', '炸湯圓', 3, 0, '菜17.jpg', '0', 140, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(18, '', '杞子桂花糕', 3, 0, '菜18.jpg', '0', 170, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `product_color`
--

CREATE TABLE `product_color` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `cid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `product_size`
--

CREATE TABLE `product_size` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `sid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `tid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id` int NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` varchar(255) NOT NULL COMMENT 'UUID',
  `user_id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL COMMENT 'LINE Pay, 信用卡, ATM',
  `shipping` varchar(255) DEFAULT NULL COMMENT '7-11, Family Mart, Hi-Life, OK Mart, 郵局, 宅配',
  `status` varchar(255) DEFAULT NULL COMMENT 'pending, paid, fail, cancel, error',
  `order_info` text COMMENT 'send to line pay',
  `reservation` text COMMENT 'get from line pay',
  `confirm` text COMMENT 'confirm from line pay',
  `return_code` varchar(255) DEFAULT NULL,
  `order_name1` text,
  `order_phone1` text,
  `order_zip1` text,
  `order_county1` text,
  `order_district1` text,
  `order_address1` text,
  `order_name2` text,
  `order_phone2` text,
  `order_zip2` text,
  `order_county2` text,
  `order_district2` text,
  `order_address2` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `user_id`, `amount`, `transaction_id`, `payment`, `shipping`, `status`, `order_info`, `reservation`, `confirm`, `return_code`, `order_name1`, `order_phone1`, `order_zip1`, `order_county1`, `order_district1`, `order_address1`, `order_name2`, `order_phone2`, `order_zip2`, `order_county2`, `order_district2`, `order_address2`, `created_at`, `updated_at`) VALUES
('1d7c3148-594f-4859-8c65-94ca870996b9', 1, 520, '2024072302164200110', NULL, NULL, '已付款', '{\"orderId\":\"1d7c3148-594f-4859-8c65-94ca870996b9\",\"currency\":\"TWD\",\"amount\":520,\"packages\":[{\"id\":\"1175d81b-2369-4608-8660-44a966fd8b02\",\"amount\":520,\"products\":[{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"1d7c3148-594f-4859-8c65-94ca870996b9\",\"currency\":\"TWD\",\"amount\":520,\"packages\":[{\"id\":\"1175d81b-2369-4608-8660-44a966fd8b02\",\"amount\":520,\"products\":[{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=UXdMWkdSZ1N5TTVvRDdrZDhGTG5qWThPTmFRcFpINEg5Q29NK0l3Q2FTamI5SnZadUNQOXZDbDBzUEpnVFBuRg&locale=zh-TW_LP\",\"app\":\"line://pay/payment/UXdMWkdSZ1N5TTVvRDdrZDhGTG5qWThPTmFRcFpINEg5Q29NK0l3Q2FTamI5SnZadUNQOXZDbDBzUEpnVFBuRg\"},\"transactionId\":\"2024072302164200110\",\"paymentAccessToken\":\"272158513841\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164200110\",\"orderId\":\"1d7c3148-594f-4859-8c65-94ca870996b9\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":520,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"1175d81b-2369-4608-8660-44a966fd8b02\",\"amount\":520,\"userFeeAmount\":0,\"products\":[{\"id\":\"7\",\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150},{\"id\":\"8\",\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":\"9\",\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:45:45', '2024-07-23 22:46:06'),
('2401feee-9a22-4eef-bc16-adcc9afc0444', 1, 120, '2024072302164201910', NULL, NULL, '完成訂單', '{\"orderId\":\"2401feee-9a22-4eef-bc16-adcc9afc0444\",\"currency\":\"TWD\",\"amount\":120,\"packages\":[{\"id\":\"c6365123-940a-4b1d-8136-2491296d507e\",\"amount\":120,\"products\":[{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"2401feee-9a22-4eef-bc16-adcc9afc0444\",\"currency\":\"TWD\",\"amount\":120,\"packages\":[{\"id\":\"c6365123-940a-4b1d-8136-2491296d507e\",\"amount\":120,\"products\":[{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=cXBUWkdWQ2x6TTZ3ci8wZElCbk5rL2E0Ri9oT0FOL2FtUmxMVE01VVV6SUc5em5zMVQxYnVCL3dSeWcwUk1CRg&locale=zh-TW_LP\",\"app\":\"line://pay/payment/cXBUWkdWQ2x6TTZ3ci8wZElCbk5rL2E0Ri9oT0FOL2FtUmxMVE01VVV6SUc5em5zMVQxYnVCL3dSeWcwUk1CRg\"},\"transactionId\":\"2024072302164201910\",\"paymentAccessToken\":\"456020569749\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164201910\",\"orderId\":\"2401feee-9a22-4eef-bc16-adcc9afc0444\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":120,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"c6365123-940a-4b1d-8136-2491296d507e\",\"amount\":120,\"userFeeAmount\":0,\"products\":[{\"id\":\"9\",\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:50:38', '2024-07-23 22:50:56'),
('56f35cc5-ad3e-4c89-8701-21e9976bc5db', 1, 1030, '2024072302164199610', NULL, NULL, '完成訂單', '{\"orderId\":\"56f35cc5-ad3e-4c89-8701-21e9976bc5db\",\"currency\":\"TWD\",\"amount\":1030,\"packages\":[{\"id\":\"fe00014b-6fe3-473d-a07f-a987d23b2ed8\",\"amount\":1030,\"products\":[{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"56f35cc5-ad3e-4c89-8701-21e9976bc5db\",\"currency\":\"TWD\",\"amount\":1030,\"packages\":[{\"id\":\"fe00014b-6fe3-473d-a07f-a987d23b2ed8\",\"amount\":1030,\"products\":[{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=U1NlbkdFZzZPY1U0YWxxTzBDREZPd0ZqeG5RcDdsYklTNDhlQUdBL0RiTU01eFhOK2NsWW9KaFh4Lzc4WUhhUQ&locale=zh-TW_LP\",\"app\":\"line://pay/payment/U1NlbkdFZzZPY1U0YWxxTzBDREZPd0ZqeG5RcDdsYklTNDhlQUdBL0RiTU01eFhOK2NsWW9KaFh4Lzc4WUhhUQ\"},\"transactionId\":\"2024072302164199610\",\"paymentAccessToken\":\"339200904847\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164199610\",\"orderId\":\"56f35cc5-ad3e-4c89-8701-21e9976bc5db\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":1030,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"fe00014b-6fe3-473d-a07f-a987d23b2ed8\",\"amount\":1030,\"userFeeAmount\":0,\"products\":[{\"id\":\"2\",\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":\"5\",\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:44:14', '2024-07-23 22:44:37'),
('70bae735-e452-40cd-b7d2-271838ab29f4', 1, 1630, '2024072302164199210', NULL, NULL, '完成訂單', '{\"orderId\":\"70bae735-e452-40cd-b7d2-271838ab29f4\",\"currency\":\"TWD\",\"amount\":1630,\"packages\":[{\"id\":\"dc55349e-2d10-4bf1-b1b5-818d6849eb06\",\"amount\":1630,\"products\":[{\"id\":1,\"name\":\"蝦菇奶油醬\",\"quantity\":1,\"price\":350},{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":3,\"name\":\"蛤蜊燉湯\",\"quantity\":1,\"price\":250},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"70bae735-e452-40cd-b7d2-271838ab29f4\",\"currency\":\"TWD\",\"amount\":1630,\"packages\":[{\"id\":\"dc55349e-2d10-4bf1-b1b5-818d6849eb06\",\"amount\":1630,\"products\":[{\"id\":1,\"name\":\"蝦菇奶油醬\",\"quantity\":1,\"price\":350},{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":3,\"name\":\"蛤蜊燉湯\",\"quantity\":1,\"price\":250},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=UlJpbkdDakNPTVZZWUZPT2tFY3FPNXZFK0RzZTExTStHcHJ5RVpjYWI2RkR4QTUxZmlNN2Rvbm5QczNESlBrdg&locale=zh-TW_LP\",\"app\":\"line://pay/payment/UlJpbkdDakNPTVZZWUZPT2tFY3FPNXZFK0RzZTExTStHcHJ5RVpjYWI2RkR4QTUxZmlNN2Rvbm5QczNESlBrdg\"},\"transactionId\":\"2024072302164199210\",\"paymentAccessToken\":\"217224854406\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164199210\",\"orderId\":\"70bae735-e452-40cd-b7d2-271838ab29f4\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":1630,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"dc55349e-2d10-4bf1-b1b5-818d6849eb06\",\"amount\":1630,\"userFeeAmount\":0,\"products\":[{\"id\":\"1\",\"name\":\"蝦菇奶油醬\",\"quantity\":1,\"price\":350},{\"id\":\"2\",\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":\"3\",\"name\":\"蛤蜊燉湯\",\"quantity\":1,\"price\":250},{\"id\":\"5\",\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:43:13', '2024-07-23 22:43:42'),
('c2d13ab7-b482-4dc5-a151-c454f932b680', 1, 750, '2024072302164199910', NULL, NULL, '完成訂單', '{\"orderId\":\"c2d13ab7-b482-4dc5-a151-c454f932b680\",\"currency\":\"TWD\",\"amount\":750,\"packages\":[{\"id\":\"01ab935e-bf8c-4cd4-bc71-3f77b13dfb7f\",\"amount\":750,\"products\":[{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"c2d13ab7-b482-4dc5-a151-c454f932b680\",\"currency\":\"TWD\",\"amount\":750,\"packages\":[{\"id\":\"01ab935e-bf8c-4cd4-bc71-3f77b13dfb7f\",\"amount\":750,\"products\":[{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=akRLbkdHQ1VPY1dnc1YrT3dFTTVQQ2djZWZIb2dVQ0NCZlRIeStxZjMyN1ZUSFRWcFUrUTFCSmxlaXZ1aFdtcw&locale=zh-TW_LP\",\"app\":\"line://pay/payment/akRLbkdHQ1VPY1dnc1YrT3dFTTVQQ2djZWZIb2dVQ0NCZlRIeStxZjMyN1ZUSFRWcFUrUTFCSmxlaXZ1aFdtcw\"},\"transactionId\":\"2024072302164199910\",\"paymentAccessToken\":\"683315685043\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164199910\",\"orderId\":\"c2d13ab7-b482-4dc5-a151-c454f932b680\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":750,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"01ab935e-bf8c-4cd4-bc71-3f77b13dfb7f\",\"amount\":750,\"userFeeAmount\":0,\"products\":[{\"id\":\"5\",\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350},{\"id\":\"8\",\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":\"7\",\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:45:03', '2024-07-23 22:45:24'),
('ce087cd2-5c00-4b26-a343-6de144c60225', 1, 140, '2024072302164202310', NULL, NULL, '已付款', '{\"orderId\":\"ce087cd2-5c00-4b26-a343-6de144c60225\",\"currency\":\"TWD\",\"amount\":140,\"packages\":[{\"id\":\"5340be2e-5f03-433d-a19f-ef167f8c6ae6\",\"amount\":140,\"products\":[{\"id\":17,\"name\":\"炸湯圓\",\"quantity\":1,\"price\":140}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"ce087cd2-5c00-4b26-a343-6de144c60225\",\"currency\":\"TWD\",\"amount\":140,\"packages\":[{\"id\":\"5340be2e-5f03-433d-a19f-ef167f8c6ae6\",\"amount\":140,\"products\":[{\"id\":17,\"name\":\"炸湯圓\",\"quantity\":1,\"price\":140}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=Zy9MWkdSaVV6ODVvclNrZThPYVVsMFVXZWRJd1V0QXo5N25EMHo3bWxRMVhQK2tTa09ianZKTW5OSkR0QkRSdw&locale=zh-TW_LP\",\"app\":\"line://pay/payment/Zy9MWkdSaVV6ODVvclNrZThPYVVsMFVXZWRJd1V0QXo5N25EMHo3bWxRMVhQK2tTa09ianZKTW5OSkR0QkRSdw\"},\"transactionId\":\"2024072302164202310\",\"paymentAccessToken\":\"046072494563\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164202310\",\"orderId\":\"ce087cd2-5c00-4b26-a343-6de144c60225\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":140,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"5340be2e-5f03-433d-a19f-ef167f8c6ae6\",\"amount\":140,\"userFeeAmount\":0,\"products\":[{\"id\":\"17\",\"name\":\"炸湯圓\",\"quantity\":1,\"price\":140}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:51:20', '2024-07-23 22:51:38'),
('e1d133de-3b53-49e3-af26-2923b78ecae1', 1, 260, '2024072302164200810', NULL, NULL, '已取消訂單', '{\"orderId\":\"e1d133de-3b53-49e3-af26-2923b78ecae1\",\"currency\":\"TWD\",\"amount\":260,\"packages\":[{\"id\":\"3639801a-a129-4996-9232-630e70206392\",\"amount\":260,\"products\":[{\"id\":10,\"name\":\"爆炒青菜\",\"quantity\":1,\"price\":110},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"e1d133de-3b53-49e3-af26-2923b78ecae1\",\"currency\":\"TWD\",\"amount\":260,\"packages\":[{\"id\":\"3639801a-a129-4996-9232-630e70206392\",\"amount\":260,\"products\":[{\"id\":10,\"name\":\"爆炒青菜\",\"quantity\":1,\"price\":110},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=aWh6WkdWRGt5TTZ3WU1VZElFLzJqaTRaT2llejlVZ2RBcEpyeXdKTEVnUldNUDlSNG1IelFMMTBuY0JZbURFMA&locale=zh-TW_LP\",\"app\":\"line://pay/payment/aWh6WkdWRGt5TTZ3WU1VZElFLzJqaTRaT2llejlVZ2RBcEpyeXdKTEVnUldNUDlSNG1IelFMMTBuY0JZbURFMA\"},\"transactionId\":\"2024072302164200810\",\"paymentAccessToken\":\"964590328859\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164200810\",\"orderId\":\"e1d133de-3b53-49e3-af26-2923b78ecae1\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":260,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"3639801a-a129-4996-9232-630e70206392\",\"amount\":260,\"userFeeAmount\":0,\"products\":[{\"id\":\"10\",\"name\":\"爆炒青菜\",\"quantity\":1,\"price\":110},{\"id\":\"7\",\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:47:49', '2024-07-23 22:48:07'),
('ec99fefe-096f-4894-8fad-a871d4ce0816', 1, 130, '2024072302164201510', NULL, NULL, '已取消訂單', '{\"orderId\":\"ec99fefe-096f-4894-8fad-a871d4ce0816\",\"currency\":\"TWD\",\"amount\":130,\"packages\":[{\"id\":\"44f6827e-b0ce-4bb7-ab56-914040fa6308\",\"amount\":130,\"products\":[{\"id\":11,\"name\":\"皮蛋炒苦瓜\",\"quantity\":1,\"price\":130}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"ec99fefe-096f-4894-8fad-a871d4ce0816\",\"currency\":\"TWD\",\"amount\":130,\"packages\":[{\"id\":\"44f6827e-b0ce-4bb7-ab56-914040fa6308\",\"amount\":130,\"products\":[{\"id\":11,\"name\":\"皮蛋炒苦瓜\",\"quantity\":1,\"price\":130}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=cG9YWkdUQXR6TTdRcGZZZDREOHlreW9Fa3ZobG5JNmdneHJxdjE0RlM2MTRXcWRXOEg0NGJIVnpobWFJTXg5aw&locale=zh-TW_LP\",\"app\":\"line://pay/payment/cG9YWkdUQXR6TTdRcGZZZDREOHlreW9Fa3ZobG5JNmdneHJxdjE0RlM2MTRXcWRXOEg0NGJIVnpobWFJTXg5aw\"},\"transactionId\":\"2024072302164201510\",\"paymentAccessToken\":\"338431565971\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164201510\",\"orderId\":\"ec99fefe-096f-4894-8fad-a871d4ce0816\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":130,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"44f6827e-b0ce-4bb7-ab56-914040fa6308\",\"amount\":130,\"userFeeAmount\":0,\"products\":[{\"id\":\"11\",\"name\":\"皮蛋炒苦瓜\",\"quantity\":1,\"price\":130}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:49:16', '2024-07-23 22:49:36');

-- --------------------------------------------------------

--
-- 資料表結構 `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `qrcode`
--

INSERT INTO `qrcode` (`id`, `amount`, `detail`, `time`) VALUES
(94, 0, '', '2024-07-16 14:10:52'),
(95, 0, '', '2024-07-16 14:15:43'),
(96, 5340, '芭樂檸檬 NT$180 × 1; 分解茶 NT$100 × 1; 蘋果汁 NT$380 × 1; 台風芳草 NT$180 × 1; 羅蘭香檳 NT$4500 × 1', '2024-07-16 15:30:19'),
(97, 200, '抹茶千層 NT$120 × 1; 杏仁豆腐 NT$80 × 1', '2024-07-18 09:27:06'),
(98, 620, '蝦迪酥 NT$320 × 1; 功夫雞 NT$300 × 1', '2024-07-18 09:29:27'),
(99, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-18 09:48:33'),
(100, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-18 09:50:46'),
(101, 5980, '安柏夫人 NT$1300 × 1; 羅蘭香檳 NT$4500 × 1; 台風芳草 NT$180 × 1', '2024-07-18 10:53:50'),
(102, 600, '功夫雞 NT$300 × 2', '2024-07-18 10:56:16'),
(103, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-18 10:57:43'),
(104, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-18 10:57:51'),
(105, 200, '抹茶千層 NT$120 × 1; 杏仁豆腐 NT$80 × 1', '2024-07-18 11:01:19'),
(106, 18640, '功夫雞 NT$300 × 5; 蝦迪酥 NT$280 × 3; 熱豆花 NT$110 × 4; 杏仁豆腐 NT$80 × 3; 抹茶千層 NT$120 × 4; 安柏夫人 NT$1300 × 3; 羅蘭香檳 NT$4500 × 2; 台風芳草 NT$180 × 3; 蘋果汁 NT$380 × 3; 分解茶 NT$100 × 2; 芭樂檸檬 NT$180 × 2', '2024-07-18 14:08:49'),
(107, 220, '熱豆花 NT$110 × 2', '2024-07-18 16:45:16'),
(108, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-19 09:57:09'),
(109, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-19 09:58:30'),
(110, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-19 09:58:49'),
(111, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-19 10:01:53'),
(112, 1800, '招牌功夫雞 NT$300 × 6', '2024-07-19 11:10:03'),
(113, 6240, '本幫紅燒肉 NT$480 × 13', '2024-07-19 11:15:13'),
(114, 1240, '招牌功夫雞 NT$300 × 1; 薄脆蝦笛稣 NT$320 × 1; 菌菇檸檬蝦 NT$380 × 1; 當日季節時蔬 NT$240 × 1', '2024-07-19 11:19:16'),
(115, 1240, '招牌功夫雞 NT$300 × 1; 薄脆蝦笛稣 NT$320 × 1; 菌菇檸檬蝦 NT$380 × 1; 當日季節時蔬 NT$240 × 1', '2024-07-19 11:21:42'),
(116, 1240, '招牌功夫雞 NT$300 × 2; 薄脆蝦笛稣 NT$320 × 2', '2024-07-19 11:22:42'),
(117, 1000, '招牌功夫雞 NT$300 × 1; 薄脆蝦笛稣 NT$320 × 1; 菌菇檸檬蝦 NT$380 × 1', '2024-07-19 11:24:14'),
(118, 1200, '招牌功夫雞 NT$300 × 4', '2024-07-19 16:10:25');

-- --------------------------------------------------------

--
-- 資料表結構 `qrcode_ecpay`
--

CREATE TABLE `qrcode_ecpay` (
  `id` varchar(255) NOT NULL COMMENT 'UUID',
  `user_id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL COMMENT 'LINE Pay, 信用卡, ATM',
  `shipping` varchar(255) DEFAULT NULL COMMENT '7-11, Family Mart, Hi-Life, OK Mart, 郵局, 宅配',
  `status` varchar(255) DEFAULT NULL COMMENT 'pending, paid, fail, cancel, error',
  `order_info` text COMMENT 'send to line pay',
  `reservation` text COMMENT 'get from line pay',
  `confirm` text COMMENT 'confirm from line pay',
  `return_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `qrcode_ecpay`
--

INSERT INTO `qrcode_ecpay` (`id`, `user_id`, `amount`, `transaction_id`, `payment`, `shipping`, `status`, `order_info`, `reservation`, `confirm`, `return_code`, `created_at`, `updated_at`) VALUES
('1732b282-fa9e-4620-9c8d-fd4e9607b285', 1, 1240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"1732b282-fa9e-4620-9c8d-fd4e9607b285\",\"currency\":\"TWD\",\"amount\":1240,\"packages\":[{\"id\":\"609c6315-ba66-4f92-867f-b13066a08787\",\"amount\":1240,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":1,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":1,\"price\":320},{\"name\":\"菌菇檸檬蝦\",\"quantity\":1,\"price\":380},{\"name\":\"當日季節時蔬\",\"quantity\":1,\"price\":240}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:19:16', '2024-07-19 11:19:16'),
('19d16664-c380-475a-a0a0-3155056e7819', 1, 1240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"19d16664-c380-475a-a0a0-3155056e7819\",\"currency\":\"TWD\",\"amount\":1240,\"packages\":[{\"id\":\"bdd95720-e7c1-4093-8c5e-9a4ab376bd45\",\"amount\":1240,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":2,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":2,\"price\":320}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:22:42', '2024-07-19 11:22:42'),
('27739229-2831-49f2-8345-04250dea4ed6', 1, 11370, NULL, NULL, NULL, 'pending', '{\"orderId\":\"27739229-2831-49f2-8345-04250dea4ed6\",\"currency\":\"TWD\",\"amount\":11370,\"packages\":[{\"id\":\"a7e97023-9ac1-45bd-97e9-4fd000c0f785\",\"amount\":11370,\"products\":[{\"name\":\"臘味雙寶炒飯\",\"quantity\":1,\"price\":280},{\"name\":\"川味剁椒草蝦\",\"quantity\":1,\"price\":820},{\"name\":\"家常炒肉絲\",\"quantity\":1,\"price\":300},{\"name\":\"宮保雞丁\",\"quantity\":1,\"price\":360},{\"name\":\"台風精釀啤酒\",\"quantity\":4,\"price\":200},{\"name\":\"金牌生啤酒18天\",\"quantity\":6,\"price\":150},{\"name\":\"金牌台灣啤酒\",\"quantity\":1,\"price\":110},{\"name\":\"安柏夫人\",\"quantity\":6,\"price\":1300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 10:55:58', '2024-07-19 10:55:58'),
('319d2e65-766b-4d47-8bc0-9e01f4e412d1', 1, 1800, NULL, NULL, NULL, 'pending', '{\"orderId\":\"319d2e65-766b-4d47-8bc0-9e01f4e412d1\",\"currency\":\"TWD\",\"amount\":1800,\"packages\":[{\"id\":\"2d444b1c-2115-4859-a413-3c7966c20cdc\",\"amount\":1800,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":6,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:08:14', '2024-07-19 11:08:14'),
('3535ffa1-d57f-46ce-b621-977a228e4b3e', 1, 6240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"3535ffa1-d57f-46ce-b621-977a228e4b3e\",\"currency\":\"TWD\",\"amount\":6240,\"packages\":[{\"id\":\"9ade668f-e56a-4e59-b664-a96f0c43afd1\",\"amount\":6240,\"products\":[{\"name\":\"本幫紅燒肉\",\"quantity\":13,\"price\":480}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:15:13', '2024-07-19 11:15:13'),
('87e726eb-2179-4868-95e7-d13028c486d5', 1, 1800, NULL, NULL, NULL, 'pending', '{\"orderId\":\"87e726eb-2179-4868-95e7-d13028c486d5\",\"currency\":\"TWD\",\"amount\":1800,\"packages\":[{\"id\":\"f91c240a-d26f-4985-b499-faea76b1f5f3\",\"amount\":1800,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":6,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:10:03', '2024-07-19 11:10:03'),
('8acc37de-ff88-4761-95b2-89079e367fad', 1, 1000, NULL, NULL, NULL, 'pending', '{\"orderId\":\"8acc37de-ff88-4761-95b2-89079e367fad\",\"currency\":\"TWD\",\"amount\":1000,\"packages\":[{\"id\":\"a3b13085-1a53-454b-b9af-673b2c051e67\",\"amount\":1000,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":1,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":1,\"price\":320},{\"name\":\"菌菇檸檬蝦\",\"quantity\":1,\"price\":380}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:24:14', '2024-07-19 11:24:14'),
('a655174b-6f7e-433e-a457-7bc9175e27d6', 1, 4800, NULL, NULL, NULL, 'pending', '{\"orderId\":\"a655174b-6f7e-433e-a457-7bc9175e27d6\",\"currency\":\"TWD\",\"amount\":4800,\"packages\":[{\"id\":\"8c26354a-544f-4cf2-b6f8-44c556822c2b\",\"amount\":4800,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":16,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 10:57:38', '2024-07-19 10:57:38'),
('bf21045f-3fa6-40b2-8ceb-e4ab89f71e34', 1, 1240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"bf21045f-3fa6-40b2-8ceb-e4ab89f71e34\",\"currency\":\"TWD\",\"amount\":1240,\"packages\":[{\"id\":\"16eaff6a-0b52-4072-8a01-fc1b4a2e85eb\",\"amount\":1240,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":1,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":1,\"price\":320},{\"name\":\"菌菇檸檬蝦\",\"quantity\":1,\"price\":380},{\"name\":\"當日季節時蔬\",\"quantity\":1,\"price\":240}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:21:42', '2024-07-19 11:21:42'),
('bf8d821f-6edf-4dd4-a9c1-adee539d30aa', 1, 1200, NULL, NULL, NULL, 'pending', '{\"orderId\":\"bf8d821f-6edf-4dd4-a9c1-adee539d30aa\",\"currency\":\"TWD\",\"amount\":1200,\"packages\":[{\"id\":\"427fd2b6-255d-4bed-b3f5-e41807b31a02\",\"amount\":1200,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":4,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 16:10:25', '2024-07-19 16:10:25'),
('fd311834-c979-4525-a5d8-ad8752fa050d', 1, 2740, NULL, NULL, NULL, 'pending', '{\"orderId\":\"fd311834-c979-4525-a5d8-ad8752fa050d\",\"currency\":\"TWD\",\"amount\":2740,\"packages\":[{\"id\":\"1d16a3c9-0975-4fe8-8c10-89cf7b91ebba\",\"amount\":2740,\"products\":[{\"name\":\"薄脆蝦笛稣\",\"quantity\":2,\"price\":320},{\"name\":\"招牌功夫雞\",\"quantity\":7,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:09:13', '2024-07-19 11:09:13');

-- --------------------------------------------------------

--
-- 資料表結構 `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `member_profile_id` int NOT NULL,
  `table_type` varchar(255) NOT NULL,
  `people` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `dining_method` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `reservationsimple`
--

CREATE TABLE `reservationsimple` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `numberOfPeople` varchar(20) NOT NULL,
  `selectedDate` varchar(255) NOT NULL,
  `selectedTime` varchar(255) NOT NULL,
  `menuSelect` varchar(255) NOT NULL,
  `selectedTableType` varchar(255) NOT NULL,
  `textAreaInput` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `reservationsimple`
--

INSERT INTO `reservationsimple` (`id`, `member_id`, `member_name`, `mobile`, `numberOfPeople`, `selectedDate`, `selectedTime`, `menuSelect`, `selectedTableType`, `textAreaInput`, `status`, `created_at`) VALUES
(16, 1, '牡丹樓商家', '0977555444', '5人', '2024-07-18', '17:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:11:40'),
(17, 1, '牡丹樓商家', '0977555444', '5人', '2024-07-18', '19:30', '現場單點', '4人桌', '', 3, '2024-07-18 06:11:54'),
(23, 2, '岳泓', '0977150546', '5人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:28:18'),
(24, 2, '岳泓', '0977150546', '5人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:28:30'),
(25, 2, '岳泓', '0977150546', '7人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:28:41'),
(26, 2, '岳泓', '0977150546', '6人', '2024-07-18', '13:00', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:04'),
(27, 2, '岳泓', '0977150546', '4人', '2024-07-18', '18:00', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:21'),
(28, 2, '岳泓', '0977150546', '6人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:31'),
(29, 2, '岳泓', '0977150546', '6人', '2024-07-18', '12:00', '無菜單料理', '4人桌', '', 3, '2024-07-18 06:37:40'),
(30, 2, '岳泓', '0977150546', '6人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:55'),
(32, 1, '牡丹樓商家', '0977555444', '6人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 07:24:51');

-- --------------------------------------------------------

--
-- 資料表結構 `reservationsmileback`
--

CREATE TABLE `reservationsmileback` (
  `id` int NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `savemoneysystem`
--

CREATE TABLE `savemoneysystem` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `PayMoney` int NOT NULL,
  `cardNumber` varchar(18) NOT NULL,
  `cvc` varchar(4) NOT NULL,
  `expiry` varchar(7) NOT NULL,
  `balance` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `savemoneysystem`
--

INSERT INTO `savemoneysystem` (`id`, `member_id`, `member_name`, `mobile`, `name`, `email`, `PayMoney`, `cardNumber`, `cvc`, `expiry`, `balance`, `created_at`) VALUES
(1, 1, '牡丹樓商家', '0977555444', '李伯皇', 'cses20130312@gmail.com', 4000, '4516516516165165', '999', '1250', 5000, '2024-07-18 02:05:53'),
(2, 2, '岳泓', '0977150546', '652165', 'asd123456@gmail.com', 2000, '1651651651616515', '888', '1250', 11000, '2024-07-18 02:08:54');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `size`
--

CREATE TABLE `size` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `size`
--

INSERT INTO `size` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(2, 'M', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(3, 'L', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(4, 'XL', '2024-07-19 09:12:59', '2024-07-19 09:12:59');

-- --------------------------------------------------------

--
-- 資料表結構 `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `tag`
--

INSERT INTO `tag` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '男性', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(2, '女性', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(3, '中性', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(4, '兒童', '2024-07-19 09:12:59', '2024-07-19 09:12:59');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `google_uid` varchar(255) DEFAULT NULL,
  `line_uid` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `line_access_token` text,
  `name1` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `zip1` varchar(255) DEFAULT NULL,
  `county1` varchar(255) DEFAULT NULL,
  `district1` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `zip2` varchar(255) DEFAULT NULL,
  `county2` varchar(255) DEFAULT NULL,
  `district2` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`, `avatar`, `birth_date`, `sex`, `phone`, `google_uid`, `line_uid`, `photo_url`, `line_access_token`, `name1`, `phone1`, `zip1`, `county1`, `district1`, `address1`, `name2`, `phone2`, `zip2`, `county2`, `district2`, `address2`, `created_at`, `updated_at`) VALUES
(1, '張皓程', 'asd123456', '$2b$10$r.NUJ1XhT/TpDJu47V99ZubcZcHR1QLVDl2U58Nt6qNagVzLE0AOq', 'herry@test.com', '', '1980-07-13', '男', '0906102808', NULL, NULL, NULL, NULL, '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', '', '', '', '', '', '', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(2, '金妮', 'ginny', '$2b$10$KntQs9QRCSaWFOUbqwNET.8gYbMG5JcuSoqEl5/j6O2c52B46BTLG', 'ginny@test.com', '', '1981-08-11', '女', '0946840920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(3, '妙麗', 'mione', '$2b$10$TV9eixliLSt8SkHcKIukt.K8VWRX8K6BFs5Esv1JFgxAMoHzFofG.', 'mione@test.com', '', '1979-09-19', '女', '0912541534', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(4, 'Sung', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Ubcaf08dd5b783a9b62140e6ba8db529e', 'https://profile.line-scdn.net/0hCROOIdCBHH1yNg4mzbZjKk5zEhAFGBo1ClMBHFQ0FUpeUwwoGVVRG1EyQRhXDl8rS1hVEwAyQkVb', 'eyJhbGciOiJIUzI1NiJ9.qXolcpjDKxc7ZhmeL1HNvK5qxHsts9KMYhO915T9MHmrObqVrPA6wLuLzgfnOIdnWnTMe01hzKK72gRiIx4mkT7m_DquwZteKsJ3aoo9eSjxRR69uGrl5ADiABElZqg1l_suA7FsMPgw4H4BJGeicvjrFcEZ6X-IMCAr5XFJTk4.GrHeT446DnSZJBic6PEIpvUq0ljAbYG_b84QJ9XeWhA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 15:05:18', '2024-07-19 15:05:18');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `key_word_id` (`key_word_id`);

--
-- 資料表索引 `bento`
--
ALTER TABLE `bento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cart_status`
--
ALTER TABLE `cart_status`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `combo_meal`
--
ALTER TABLE `combo_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- 資料表索引 `contact_book`
--
ALTER TABLE `contact_book`
  ADD KEY `member_profile_id` (`member_profile_id`);

--
-- 資料表索引 `coupons`
--
ALTER TABLE `coupons`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cs_id` (`cs_id`);

--
-- 資料表索引 `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `key_words`
--
ALTER TABLE `key_words`
  ADD PRIMARY KEY (`k_id`);

--
-- 資料表索引 `liquor`
--
ALTER TABLE `liquor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `member_card`
--
ALTER TABLE `member_card`
  ADD KEY `member_profile_id` (`member_profile_id`),
  ADD KEY `status_id` (`status_id`);

--
-- 資料表索引 `member_login`
--
ALTER TABLE `member_login`
  ADD KEY `member_profile_id` (`member_profile_id`);

--
-- 資料表索引 `member_profile`
--
ALTER TABLE `member_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- 資料表索引 `member_profile_simple`
--
ALTER TABLE `member_profile_simple`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- 資料表索引 `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`item_id`);

--
-- 資料表索引 `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `one`
--
ALTER TABLE `one`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `qrcode_ecpay`
--
ALTER TABLE `qrcode_ecpay`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_profile_id` (`member_profile_id`);

--
-- 資料表索引 `reservationsimple`
--
ALTER TABLE `reservationsimple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `reservationsmileback`
--
ALTER TABLE `reservationsmileback`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `savemoneysystem`
--
ALTER TABLE `savemoneysystem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 資料表索引 `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `a_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bento`
--
ALTER TABLE `bento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_status`
--
ALTER TABLE `cart_status`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `combo_meal`
--
ALTER TABLE `combo_meal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dessert`
--
ALTER TABLE `dessert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `liquor`
--
ALTER TABLE `liquor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_profile`
--
ALTER TABLE `member_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_profile_simple`
--
ALTER TABLE `member_profile_simple`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `one`
--
ALTER TABLE `one`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2492;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2506;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2036;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `purchase_item`
--
ALTER TABLE `purchase_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservationsimple`
--
ALTER TABLE `reservationsimple`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservationsmileback`
--
ALTER TABLE `reservationsmileback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `savemoneysystem`
--
ALTER TABLE `savemoneysystem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `size`
--
ALTER TABLE `size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`key_word_id`) REFERENCES `key_words` (`k_id`);

--
-- 資料表的限制式 `bento`
--
ALTER TABLE `bento`
  ADD CONSTRAINT `bento_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `combo_meal`
--
ALTER TABLE `combo_meal`
  ADD CONSTRAINT `combo_meal_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `contact_book`
--
ALTER TABLE `contact_book`
  ADD CONSTRAINT `contact_book_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `coupons_ibfk_2` FOREIGN KEY (`cs_id`) REFERENCES `coupons_sample` (`cs_id`);

--
-- 資料表的限制式 `dessert`
--
ALTER TABLE `dessert`
  ADD CONSTRAINT `dessert_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `drink`
--
ALTER TABLE `drink`
  ADD CONSTRAINT `drink_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `liquor`
--
ALTER TABLE `liquor`
  ADD CONSTRAINT `liquor_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `member_card`
--
ALTER TABLE `member_card`
  ADD CONSTRAINT `member_card_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`),
  ADD CONSTRAINT `member_card_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `cart_status` (`sid`);

--
-- 資料表的限制式 `member_login`
--
ALTER TABLE `member_login`
  ADD CONSTRAINT `member_login_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `one`
--
ALTER TABLE `one`
  ADD CONSTRAINT `one_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `reservationsimple`
--
ALTER TABLE `reservationsimple`
  ADD CONSTRAINT `reservationsimple_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_profile_simple` (`id`);

--
-- 資料表的限制式 `savemoneysystem`
--
ALTER TABLE `savemoneysystem`
  ADD CONSTRAINT `savemoneysystem_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_profile_simple` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-19 17:18:59
-- 伺服器版本： 8.0.36
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mudanlow`
--

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `a_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `content` text,
  `key_word_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `articles`
--

INSERT INTO `articles` (`a_id`, `date`, `title`, `photos`, `content`, `key_word_id`) VALUES
(1, '2023-02-01', '公休公告 - 春節期間', '[\"c7a4ccf5b5e2c74e003454a93baaa9fc8f3c0173.jpg\"]', '本餐廳春節期間將於2月10日至2月15日公休，2月16日正常營業，敬請見諒。', 4),
(2, '2023-02-16', '新年狂歡夜', '[\"a10c5f1395ab28e7b0f5ea65db68651c0f745076.webp\"]', '歡迎來參加新年狂歡夜，精選菜單、現場音樂表演和新年倒數活動。', 3),
(3, '2023-09-01', '公休公告 - 中秋節', '[\"05f4698c106541fce7a4cc4246475eca17353817.jpg\"]', '中秋節當天（9月21日）本餐廳將公休一天，9月22日恢復正常營業，謝謝理解。', 4),
(4, '2023-10-31', '感恩節家庭聚餐', '[\"76e934d58e2e1a6ae93b2bf70f0406387e8b2512.webp\"]', '感恩節特別推出家庭聚餐套餐，感恩之夜與家人共享豐盛大餐，享受溫馨時刻。', 3),
(5, '2023-05-20', '一歲可愛英國長毛貓認養', '[\"84c6675af251497efd0d469ed82de858ee82d044.jpg\"]', '英國長毛貓\r\n年齡:1歲\r\n花色:白毛帶一點棕\r\n領養電話:09xxxxxxxxx\r\n已結紮', 5),
(6, '2023-12-20', '聖誕大餐特別活動', '[\"ee7badd96e66e2b794dcc33977a9f7063a6b2c20.webp\"]', '餐廳提供聖誕節特別套餐，享受美味大餐並有機會贏取聖誕禮物。', 3),
(7, '2024-01-29', '溫柔虎斑貓 - 斑斑', '[\"925d418a8036ec8a2ce941acccfadc7c63ae1dc7.jpg\"]', '一歲虎斑貓斑斑，喜愛安靜環境，善解人意，適合獨居人士或小家庭的最佳伴侶。', 5),
(8, '2024-02-01', '情人節浪漫晚餐', '[\"6f47aa919973d6cb1073dfec0fe2b9f3d6e11deb.webp\"]', '情人節特別推出浪漫雙人套餐，包含甜品和香檳，與愛人共度浪漫時光。', 3),
(9, '2024-02-12', '俏皮黑貓 - 黑豆', '[\"5e2e944bcf74a4d5401d913bd15a856f27470a2c.webp\"]', '半歲小黑貓黑豆，充滿好奇心，喜歡互動和玩耍，非常適合有孩子的家庭領養。', 5),
(10, '2024-02-18', '過年公休', '[\"9a604e9982cb957ca8f93e8f9c550c6c7e02102e.jpg\"]', '年後 休假公告 💕\r\n忙完大家的過年菜\r\n換我們休大假囉 💗\r\n2/19（一）～2/22（四）\r\n連休四天\r\n過個年 嘴兒嚐甜甜 …\r\n甜點🍮 大爆發 \r\n🍧杏仁涼豆腐\r\n🍨花生涼豆花', 4),
(11, '2024-03-04', '更名牡丹樓!!!!!!', '[\"ed1f893dd1068f396ca5002ae0663f8ab157779d.jpg\"]', '日安 吾友們 在此問好💕\r\n要跟大家說 牡丹庭 正式更名為\r\n「牡丹樓 中菜」\r\n餐廳𧫴訂於3月24 日週日上午11:00 時將舉辦Grand Re-Open 特邀您來一同參與💗\r\n冀望未來有各位先進的支持與鼓勵指教牡丹樓 能更上層樓\r\n當日現場備有各式免費點心、飲品、酒水 招待\r\n唯望舊雨新知 一起蒞臨參與賜教💗\r\n只希望你們一起來為我們共襄熱熱鬧鬧\r\n💗牡丹樓 中菜餐廳\r\n現址：台南市中西區永福路二段160號\r\n邱靖喬 0925873025 敬邀💗 \r\n電話☎️：06-2217509\r\n牡丹樓 中菜\r\n牡丹庭漢風餐食盒', 3),
(12, '2024-03-18', '乖巧牛奶貓 - 小花', '[\"19655142505957fe4e588e58ed054ef002e25334.webp\"]', '兩歲奶牛貓小花，性格乖巧，喜歡依偎在主人身邊，是理想的伴侶動物，適合所有家庭。', 5),
(13, '2024-04-11', '經濟午餐新菜單', '[\"500f32d2f5c792d9c8e47a23734cc9cecbc6bd74.jpg\"]', '牡丹樓 「午間定食套餐 」🍱 上架囉 💕\r\n8週年開幕慶🎉 「商業定食套餐」\r\n2人成行\r\n留下美美 照片 打卡分享上傳 iG 或 FB \r\n享 每桌 2 人同享 1人免費 一次\r\n煩請來電預約專線：\r\n06-2217509\r\n💕活動期間 即日起 ～ 4月底💕', 2),
(14, '2024-04-13', '優雅短毛貓 - 小白', '[\"f2c71da7a1a3347668c0fa13d2af2023b0b04dde.jpg\"]', '三歲短毛貓小白，活潑好動，喜歡探索新環境，非常適合喜愛活潑貓咪的飼主領養。', 5),
(15, '2024-04-16', '可愛橘貓 - 米克斯', '[\"d454aa88f4fd3d2f8e6d312adedaab9f5e7e9b56.webp\"]', '兩歲橘貓米克斯，性格溫和，喜愛被撫摸和玩毛線球，已結紮，非常適合有愛心的家庭領養。', 5),
(16, '2024-05-08', '《牡丹樓 翻新夜 | 香檳氣泡 醉中菜 | 醐閣》', '[\"a00a69b316c803bc963b3c9e36060f7e2dec74c4.jpg\"]', '嗨～ 大家好 💗\r\n5/17（五）\r\n5/17（五）\r\n5/17（五）\r\n想參加的 快跟我們說💕\r\n這整場幾乎是闆娘愛的 香檳、氣泡\r\n挑香檳功力也極好\r\n其中更有大愛的 西班牙頂款CAVA\r\n餐 搭 酒 🍷 每位$2950/位\r\n——————————————————————\r\n《牡丹樓 翻新夜 | 香檳氣泡 醉中菜 | 醐閣》\r\n.\r\n⚠️【氣泡的氣度 & 中菜的多變】\r\n各種菜系的餐酒搭配這件事情來說，中菜算是難中之難，多變的醬汁，台灣特有的複雜融合菜系，還有那堪稱奇蹟的上菜速度!! 都不是多數葡萄酒能信手拈來的。\r\n.\r\n葡萄酒款中，氣泡酒 (包含香檳)，是少數中能相對輕鬆應對各大菜系的常勝軍，醐閣 這次要與近期翻新裝潢的 『台南饕客老店 - 牡丹樓』，來場 【有氣度】 的台南在地中菜餐酒會!', 3),
(17, '2024-07-07', '中秋賞月晚會', '[\"e5505de929be1449fd4b21f0a8378e745ce4cd29.webp\"]', '中秋節特別活動，享用美味月餅和傳統美食，並有賞月活動和燈籠遊行。', 3),
(18, '2024-07-24', '新啤酒推出!!!!!!!!!!', '[\"b2f6e3489dc3132f293c9801a2936353f947fcf0.jpg\"]', '睽違三年的桶陳啤酒沐樽系列「如煙」終於來了！準備參加年底的IBC國際啤酒大賽！\r\n往事如煙隨風去，\r\n懷念綿長入夢來。\r\n特殊煙燻麥芽釀造的8％琥珀色艾爾，放入美國白橡木桶陳放，萃取歲月的滋味。戀戀夏日，花火夜空綻放，這一口桶陳沐樽下肚，是否也令你回憶起曾經絢爛卻已消逝的美好？\r\n保存期限：12個月\r\n#台風造酒\r\n#TaiwindBeer \r\n#2024沐樽\r\n#如煙\r\n#桶陳煙燻啤酒\r\n#限量\r\n350/瓶 \r\n詳洽牡丹樓06-2217509\r\n🈲酒後不開車\r\n🈲未滿18歲禁止飲酒', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `bento`
--

CREATE TABLE `bento` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `bento`
--

INSERT INTO `bento` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(6, 1, '功夫雞便當', 200, '4.webp', '人氣商品'),
(6, 2, '蔥爆花枝便當', 200, '3.webp', '人氣商品'),
(6, 3, '香煎鮭魚便當', 200, '2.webp', NULL),
(6, 4, '辣炒豬肉便當', 200, '1.webp', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `brand`
--

INSERT INTO `brand` (`id`, `name`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, 'adidas', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, 'PUMA', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, 'New Balance', '', 'This is the description of the brand', '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `cart_status`
--

CREATE TABLE `cart_status` (
  `sid` int NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `status_remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cart_status`
--

INSERT INTO `cart_status` (`sid`, `status_name`, `status_remark`) VALUES
(1, '已送出訂單', '待店家確認'),
(2, '店家以確認', '訂單處於待處理狀態'),
(3, '取消訂單', '已取消'),
(4, '完成訂單', '商品已送達');

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '服飾', NULL, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, '鞋類', NULL, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, '配件', NULL, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, '短袖上衣', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(5, '短褲', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(6, '長袖上衣', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(7, '長褲', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(8, '外套', 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(9, '慢跑鞋', 2, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(10, '籃球鞋', 2, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(11, '包款', 3, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(12, '帽類', 3, '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `color`
--

CREATE TABLE `color` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `color`
--

INSERT INTO `color` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '黑', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, '白', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, '灰', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, '深藍', '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `combo_meal`
--

CREATE TABLE `combo_meal` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `combo_meal`
--

INSERT INTO `combo_meal` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(1, 1, '四人經典合菜', 4888, '\"8b1b89da1a8314400145cbb495f731caac609113.webp\"', NULL),
(1, 2, '六人經典合菜', 6888, '\"86a9b02d462155cd5397cb19e327e9236ab0348a.webp\"', NULL),
(1, 3, '八人經典合菜', 9388, '\"ba181e0e70d18726c6cfc6d898687ae414f450e7.webp\"', '人氣商品'),
(1, 4, '十人經典合菜', 11988, '\"3da35ba8b7513487ada6e6d2055cbee8e6d0b81f.webp\"', '人氣商品'),
(1, 5, '十二人經典合菜', 13988, '\"e92a62b945b9200c3722645fc6dd13db7efc5f12.webp\"', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `c_id` int NOT NULL,
  `value` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `comments`
--

INSERT INTO `comments` (`c_id`, `value`, `content`, `created_at`) VALUES
(1, 5, '食物很好吃!', '2024-07-26 14:53:17'),
(2, 4, '內用氛圍很好，很享受', '2024-07-26 14:53:51'),
(3, 3, '官網很順暢', '2024-07-26 14:54:01'),
(4, 5, '跟家人一起來吃，服務很好，東西美味', '2024-07-26 14:54:30'),
(5, 4, '沒有吃過那麼好吃的餐廳了', '2024-07-26 14:54:45');
-- --------------------------------------------------------

--
-- 資料表結構 `contact_book`
--

CREATE TABLE `contact_book` (
  `member_profile_id` int DEFAULT NULL,
  `receive_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_mobile` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `contact_book`
--

INSERT INTO `contact_book` (`member_profile_id`, `receive_name`, `address`, `contact_mobile`) VALUES
(1, '张三', '上海市浦东新区', '13812345678'),
(4, '赵六', '北京市朝阳区', '13765432109'),
(2, '李四', '广州市天河区', '13987654321'),
(5, '小明', '深圳市南山区', '13578901234'),
(3, '王五', '成都市武侯区', '13654321098'),
(6, '小红', '武汉市江汉区', '13678901234'),
(7, '小刚', '重庆市渝中区', '13578901235'),
(8, '小李', '西安市雁塔区', '13578901236'),
(9, '小华', '郑州市中原区', '13578901237'),
(10, '小明', '南京市鼓楼区', '13578901238'),
(11, '张四', '上海市浦东新区', '13812345679'),
(12, '李五', '广州市天河区', '13987654322'),
(13, '王六', '成都市武侯区', '13654321099'),
(14, '赵七', '北京市朝阳区', '13765432110'),
(15, '小八', '深圳市南山区', '13578901235'),
(16, '小九', '武汉市江汉区', '13578907236'),
(17, '小十', '重庆市渝中区', '13578901237'),
(18, '小十一', '西安市雁塔区', '13578901238'),
(19, '小十二', '郑州市中原区', '13578901239'),
(20, '小十三', '南京市鼓楼区', '13578901240'),
(21, '张十四', '上海市浦东新区', '13812345670'),
(22, '李十五', '广州市天河区', '13987654323'),
(23, '王十六', '成都市武侯区', '13654321090'),
(24, '赵十七', '北京市朝阳区', '13765432101'),
(25, '小十八', '深圳市南山区', '13578901241'),
(26, '小十九', '武汉市江汉区', '13578901242'),
(27, '小二十', '重庆市渝中区', '13578901243'),
(28, '小二十一', '西安市雁塔区', '13578901244'),
(29, '小二十二', '郑州市中原区', '13578901245'),
(30, '小二十三', '南京市鼓楼区', '13578901246'),
(31, '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `coupons`
--

CREATE TABLE `coupons` (
  `coupons_id` int auto_increment primary key,
  `user_id` int DEFAULT NULL,
  `coupons_sentDate` date DEFAULT NULL,
  `coupons_maxAge` date DEFAULT NULL,
  `used` boolean default false,
  `over_maxAge` boolean default false,
  `cs_id` int DEFAULT NULL,
  `accumulatedAmoun` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `coupons`
--

insert into `coupons`(`user_id`, `coupons_sentDate`,`coupons_maxAge`,`cs_id`,`used`)
values
(1,'2024-07-01','2024-07-30',5,0),
(1,'2024-07-15','2024-08-14',6,1),
(1,'2024-07-17','2024-08-16',7,0);

-- --------------------------------------------------------

--
-- 資料表結構 `coupons_sample`
--

CREATE TABLE `coupons_sample` (
  `cs_id` int unique, 
  `coupons_sample_price` int,
  `coupons_explain` varchar(1000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `coupons_sample`
--

INSERT INTO `coupons_sample` (`cs_id`, `coupons_sample_price`, `coupons_explain`) VALUES
(1, 500, '累積消費滿額5000贈送折價卷500元'),
(2, 700, '累積消費滿額7000贈送折價卷700元'),
(3, 900, '累積消費滿額12000贈送折價卷900元'),
(4, 1500, '累積消費滿額20000贈送折價卷1500元'),
(5, 100, '給測試的假資料'),
(6, 200, '給測試的假資料'),
(7, 300, '給測試的假資料');

-- --------------------------------------------------------

--
-- 資料表結構 `dessert`
--

CREATE TABLE `dessert` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `dessert`
--

INSERT INTO `dessert` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(5, 1, '原味千層蛋糕', 140, '\"8d2f63dcbebed68cdc277ba6424d8b8f9c78329c.webp\"', '招牌甜點'),
(5, 2, '抹茶千層蛋糕', 160, '\"ba0e9c43b3d5eb336262a83dc9b466e066a4053d.webp\"', NULL),
(5, 3, '焦糖伯爵蛋糕', 160, '\"4819d93b9420e8113332562418f270c7c8c12a98.webp\"', NULL),
(5, 4, '經典提拉米蘇', 180, '\"6cdad2e0221d9a7249c647aa1cbe9d8fbc9e7ad4.webp\"', '人氣商品'),
(5, 5, '生巧克力蛋糕', 180, '\"b3e4eb359df6d187f991b901dd862e382c2c88c3.webp\"', NULL),
(5, 6, '一口泡芙', 180, '\"087879a0bbb5f9a2d168f766ef30154e8e95b6c6.webp\"', '人氣商品'),
(5, 7, '時令水果盤', 160, '\"97f3d3ca8da7472d2d8c978e43239fbca9cd257d.webp\"', '人氣商品');

-- --------------------------------------------------------

--
-- 資料表結構 `drink`
--

CREATE TABLE `drink` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `drink`
--

INSERT INTO `drink` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(3, 1, '氣泡礦泉水', 120, '\"5e88f8ec1927d8f5fccef1f3475667fe23c6459e.webp\"', NULL),
(3, 2, '鮮榨時令果汁', 180, '\"a3398e17d51d136b0292bbf072e81249becb48b1.webp\"', '人氣商品'),
(3, 3, '特調奶茶', 120, '\"e662779083efde88df0e5bc25861f4e8820db718.webp\"', '人氣商品'),
(3, 4, '美式咖啡', 120, '\"cbbd8356aaab707d4bb3cdec9fc138e5db974251.webp\"', NULL),
(3, 5, '拿鐵咖啡', 120, '\"a4520c17a140d86e3d0d56bbdf70f55097cb6cf3.webp\"', '人氣商品'),
(3, 6, '熱伯爵茶', 120, '\"2f0ff7df2651f4d30cf35da04fd593d820a87ce3.webp\"', '人氣商品'),
(3, 7, '可口可樂', 40, '\"4afed9f0f036b0a5e19b9d000770a46e964729c3.webp\"', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `favorite`
--

CREATE TABLE `favorite` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `uid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `favorite`
--

INSERT INTO `favorite` (`id`, `pid`, `uid`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, 1, 2, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, 2, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, 3, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(5, 5, 1, '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `key_words`
--

CREATE TABLE `key_words` (
  `k_id` int NOT NULL,
  `key_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `key_words`
--

INSERT INTO `key_words` (`k_id`, `key_name`) VALUES
(1, '所有文章'),
(2, '新菜消息'),
(3, '節慶活動'),
(4, '公休時間'),
(5, '貓咪認養');

-- --------------------------------------------------------

--
-- 資料表結構 `liquor`
--

CREATE TABLE `liquor` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `liquor`
--

INSERT INTO `liquor` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(6, 1, '安柏夫人', 1300, '\"658e07c34e0ebf24035c42b447ac50b6cc067abc.webp\"', '人氣商品'),
(6, 2, '金牌台灣啤酒', 110, '\"a1784120bc0ff9c31259ff2ac6794a55edf77ffa.webp\"', NULL),
(6, 3, '金牌生啤酒18天', 150, '\"9d923ae431356566795b0bba5b82801118a7b8de.webp\"', '人氣商品'),
(6, 4, '百威', 110, '\"a03d56d72a433784ac32a1bd59a8f84db86e7892.webp\"', NULL),
(6, 5, '海尼根', 110, '\"827bf1063e6b0c56024701216756fb809d3cfa6d.webp\"', NULL),
(6, 6, '台風精釀啤酒', 200, '\"5f5de66808dfecd64b917b57069295a1c98946a7.webp\"', '人氣商品');

-- --------------------------------------------------------

--
-- 資料表結構 `member_card`
--

CREATE TABLE `member_card` (
  `member_profile_id` int DEFAULT NULL,
  `status_id` int DEFAULT '1',
  `c_id` int DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `card_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_card`
--

INSERT INTO `member_card` (`member_profile_id`, `status_id`, `c_id`, `productName`, `price`, `quantity`, `totalPrice`, `card_date`) VALUES
(31, 1, 287575, '蝦菇奶油醬', 350.00, 3, 1050.00, '2024-06-06 14:37:26'),
(31, 1, 287575, '波士頓龍蝦', 680.00, 1, 680.00, '2024-06-06 14:37:26');

-- --------------------------------------------------------

--
-- 資料表結構 `member_login`
--

CREATE TABLE `member_login` (
  `member_profile_id` int DEFAULT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `status` enum('active','blacklist') NOT NULL DEFAULT 'active',
  `reason` varchar(255) DEFAULT NULL,
  `blacklist_date` datetime DEFAULT NULL COMMENT '黑名單日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_login`
--

INSERT INTO `member_login` (`member_profile_id`, `account`, `password`, `hash`, `role`, `status`, `reason`, `blacklist_date`) VALUES
(1, 'user1', 'admin', 'hashed_password', 'admin', 'active', NULL, NULL),
(2, 'user2', 'admin', 'hashed_password', 'admin', 'active', NULL, NULL),
(3, 'wangwu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(4, 'zhaoliu', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(5, 'xiaoming', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(6, 'xiaohong', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(7, 'xiaogang', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(8, 'xiaoli', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(9, 'xiaohua', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(10, 'xiaoming2', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(11, 'zhangsi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(12, 'liwu', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(13, 'wangliu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(14, 'zhaoqi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(15, 'xiaoba', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(16, 'xiaojiu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(17, 'xiaoshi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(18, 'xiaoshier', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(19, 'xiaoshisan', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(20, 'xiaoshisi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(21, 'zhangshisi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(22, 'lishiwu', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(23, 'wangshiliu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(24, 'zhaoshiqi', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(25, 'xiaoshiba', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(26, 'xiaoshijiu', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(27, 'xiaoshierling', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(28, 'xiaoshieryi', 'password456', 'hashed_password', 'user', 'active', NULL, NULL),
(29, 'xiaoshierer', 'password789', 'hashed_password', 'user', 'active', NULL, NULL),
(30, 'xiaoshiersan', 'password123', 'hashed_password', 'user', 'active', NULL, NULL),
(31, 'asd123456', '$2y$10$GnoPoG5jAbF2vQlbsilneu.t3iGtdofNLFn2TJqZ4ORC6xiyhaQvG', '$2y$10$GnoPoG5jAbF2vQlbsilneu.t3iGtdofNLFn2TJqZ4ORC6xiyhaQvG', 'user', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `member_profile`
--

CREATE TABLE `member_profile` (
  `id` int NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_profile`
--

INSERT INTO `member_profile` (`id`, `member_name`, `gender`, `email`, `mobile`, `birthday`, `create_date`) VALUES
(1, '张三', '男', 'zhangan@example.com', '13812345678', '1990-05-15', '2024-05-01 00:00:00'),
(2, '李四', '女', 'lii@example.com', '13987654321', '1988-10-20', '2024-05-02 00:00:00'),
(3, '王五', '男', 'wanwu@example.com', '13654321098', '1995-03-08', '2024-05-03 00:00:00'),
(4, '赵六', '女', 'zhaoliu@example.com', '13765432109', '1992-08-25', '2024-05-04 00:00:00'),
(5, '小明', '男', 'xiaoing@example.com', '13578901234', '1998-12-10', '2024-05-05 00:00:00'),
(6, '小红', '女', 'xiahng@example.com', '13658909234', '1997-11-20', '2024-05-06 00:00:00'),
(7, '小刚', '男', 'xiagang@example.com', '12315151155', '1996-09-15', '2024-05-07 00:00:00'),
(8, '小李', '女', 'xiaoliexample.com', '13578901236', '1994-07-05', '2024-05-08 00:00:00'),
(9, '小华', '男', 'xiohua@example.com', '13578971237', '1993-04-25', '2024-05-09 00:00:00'),
(10, '小明', '女', 'xiaoming2@example.com', '13578901238', '1991-02-15', '2024-05-10 00:00:00'),
(11, '张四', '男', 'zhangsi@example.com', '13812345679', '1991-05-15', '2024-05-11 00:00:00'),
(12, '李五', '女', 'liwu@example.com', '13987654322', '1989-10-20', '2024-05-12 00:00:00'),
(13, '王六', '男', 'angliu@example.com', '13654321099', '1996-03-08', '2024-05-13 00:00:00'),
(14, '赵七', '女', 'zhaoqi@example.com', '13765432110', '1993-08-25', '2024-05-14 00:00:00'),
(15, '小八', '男', 'xaoba@example.com', '13578901235', '1999-12-10', '2024-05-15 00:00:00'),
(16, '小九', '女', 'xiaojiu@example.com', '73578901236', '1992-07-10', '2024-05-16 00:00:00'),
(17, '小十', '男', 'xiaohi@example.com', '13578901237', '1995-04-10', '2024-05-17 00:00:00'),
(18, '小十一', '女', 'xiaoshier@example.com', '1357890238', '1994-02-10', '2024-05-18 00:00:00'),
(19, '小十二', '男', 'aoshisan@example.com', '13578901239', '1997-11-10', '2024-05-19 00:00:00'),
(20, '小十三', '女', 'aoshisi@example.com', '13578901240', '1998-09-10', '2024-05-20 00:00:00'),
(21, '张十四', '男', 'zhanshisi@example.com', '1381235670', '1992-05-15', '2024-05-21 00:00:00'),
(22, '李十五', '女', 'lishiwu@example.com', '13987654323', '1994-10-20', '2024-05-22 00:00:00'),
(23, '王十六', '男', 'wangshiliu@example.com', '1365321090', '1998-03-08', '2024-05-23 00:00:00'),
(24, '赵十七', '女', 'zaoshiqi@example.com', '13765432101', '1991-08-25', '2024-05-24 00:00:00'),
(25, '小十八', '男', 'xiashba@example.com', '1378901241', '1996-12-10', '2024-05-25 00:00:00'),
(26, '小十九', '女', 'xiashijiu@example.com', '1358901242', '1993-07-10', '2024-05-26 00:00:00'),
(27, '小二十', '男', 'xiaohierling@example.com', '13578901243', '1995-04-10', '2024-05-27 00:00:00'),
(28, '小二十一', '女', 'xiaoshieryi@example.com', '1357801244', '1997-02-10', '2024-05-28 00:00:00'),
(29, '小二十二', '男', 'xaoshierer@example.com', '1357890245', '1999-11-10', '2024-05-29 00:00:00'),
(30, '小二十三', '女', 'xiaoshersan@example.com', '1357901246', '2000-09-10', '2024-05-30 00:00:00'),
(31, 'asd123456', '女', 'asd123456@gmail.com', '0987652323', '2024-05-07', '2024-06-06 14:35:59');

-- --------------------------------------------------------

--
-- 資料表結構 `member_profile_simple`
--

CREATE TABLE `member_profile_simple` (
  `id` int NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_profile_simple`
--

INSERT INTO `member_profile_simple` (`id`, `member_name`, `gender`, `email`, `mobile`, `birthday`, `password`, `create_date`) VALUES
(1, '牡丹樓商家', '25', 'asd123456@gmail.com', '0977555444', '2024-05-29', 'asd123456', '2024-07-18 09:56:17'),
(2, '岳泓', '25', 'cses20130312@gmail.com', '0977150546', '2024-04-10', '123456', '2024-07-18 09:56:56'),
(3, 'lee', '32', 'zxc123@gmail.com', '0912345678', '2023-02-07', 'zxc123', '2024-07-18 11:30:18');

-- --------------------------------------------------------

--
-- 資料表結構 `menu_items`
--

CREATE TABLE `menu_items` (
  `item_id` int NOT NULL,
  `item_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `menu_items`
--

INSERT INTO `menu_items` (`item_id`, `item_name`) VALUES
(1, 'combo_meal'),
(2, 'one'),
(3, 'drink'),
(4, 'liquor'),
(5, 'dessert'),
(6, 'bento');

-- --------------------------------------------------------

--
-- 資料表結構 `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `sender` int DEFAULT NULL,
  `isMerchant` tinyint(1) DEFAULT NULL,
  `message` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `messages`
--

INSERT INTO `messages` (`id`, `room`, `sender`, `isMerchant`, `message`, `timestamp`) VALUES
(1, 'room2', 1, 1, '1234', '2024-07-18 02:20:26'),
(2, 'room2', 2, 0, '5678', '2024-07-18 02:20:35'),
(3, 'room2', 1, 1, '你好嗎', '2024-07-18 02:20:53'),
(4, 'room2', 2, 0, '我很好', '2024-07-18 02:20:59'),
(5, 'room2', 1, 1, '123456', '2024-07-18 03:52:26'),
(6, 'room2', 1, 1, '123', '2024-07-18 07:45:56');

-- --------------------------------------------------------

--
-- 資料表結構 `one`
--

CREATE TABLE `one` (
  `item_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` varchar(80) NOT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT '[]',
  `popularity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `one`
--

INSERT INTO `one` (`item_id`, `id`, `name`, `price`, `image`, `popularity`) VALUES
(2, 1, '招牌功夫雞', 300, '\"2.webp\"', '招牌菜'),
(2, 2, '薄脆蝦笛稣', 320, '\"1.webp\"', '人氣商品'),
(2, 3, '菌菇檸檬蝦', 380, '\"d398461028081cb2be1e7e14a440826a64fadbbb.webp\"', NULL),
(2, 4, '當日季節時蔬', 240, '\"bc39c12aac8a8b399b478a9911d6370abbc6febc.webp\"', NULL),
(2, 5, '草蝦燴時蔬', 340, '\"50a76e74aa9d6db03e476e547051ad8d4481927f.webp\"', NULL),
(2, 6, '臘味雙寶炒飯', 280, '\"66d7d35aa14326d0b0c77aac8bff424fb9f84549.webp\"', NULL),
(2, 7, '本幫紅燒肉', 480, '\"2f5c61d72ff3e97e7a0087060cd99ff4e3c6661e.webp\"', '招牌菜'),
(2, 8, '川味剁椒草蝦', 820, '\"de50fc79dbc96cfadf8106cc9f238e4a899e24bb.webp\"', NULL),
(2, 9, '招牌脆皮豬五花', 780, '\"f7fe79a9e3f2e5ab4c44b9a01e925d754660ca31.webp\"', NULL),
(2, 10, '經典三杯雞', 680, '\"4757af6c38510f42c2a083f5724886ab86d20528.webp\"', NULL),
(2, 11, '經典酥炸蝦球', 620, '\"3c783a3aaf9c61148ea0b8e85a0eefe28a231ae9.webp\"', '人氣商品'),
(2, 12, '家常炒肉絲', 300, '\"816cec51efce545d2cc1eb69692f5c70b5b28da6.webp\"', NULL),
(2, 13, '宮保雞丁', 360, '\"4f494471688117e9d2bb515f0e9ba167f0c0c9ae.webp\"', '招牌菜'),
(2, 14, '乾鍋川味辣炒羊肉', 720, '\"82001735c499d34a64f302c463f74c657642b9c5.webp\"', NULL),
(2, 15, '避風塘炒大蝦', 820, '\"55c8b0d780c0bf992f87c526342dae68946d90a7.webp\"', '人氣商品'),
(2, 16, '冷菜三拼', 250, '\"750b86d25b30a34eedb40d0a8f4f5aa0b3df3b36.webp\"', NULL),
(2, 17, '招牌糖醋魚', 320, '\"e01b9fdc74ee882226004f0e9d71b8ce75d5580a.webp\"', '人氣商品'),
(2, 18, '麻辣擔擔醬熱豆花', 100, '\"8e018ea75a4b77df2b02a060bbe5f370fe76964f.webp\"', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `orderlist`
--

CREATE TABLE `orderlist` (
  `o_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_time` datetime DEFAULT NULL,
  `product_quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `otp`
--

CREATE TABLE `otp` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `exp_timestamp` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `sn` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `photos` text,
  `stock` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `info` text,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `sn`, `name`, `brand_id`, `cat_id`, `photos`, `stock`, `price`, `info`, `color`, `size`, `tag`, `created_at`, `updated_at`) VALUES
(1, '09fdab8a-6185-4484-8bea-c47d85647d8b', '蝦菇奶油醬', 4, 9, '菜1.jpg', '90', 350, '蝦菇奶油醬是一款美味且豐富的醬料，專為喜愛海鮮和奶油風味的人士打造。這款醬料結合了鮮蝦、香菇和奶油的美妙味道，是烹飪多種菜餚的完美選擇。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(2, '09fdab8a-6185-4484-8bea-c47d85647d8b', '波士頓龍蝦', 4, 9, '菜2.jpg', '90', 680, '是來自北大西洋的一種龍蝦品種。它以其豐富的肉質、甜美的味道和獨特的口感而著稱。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(3, '09fdab8a-6185-4484-8bea-c47d85647d8b', '蛤蜊燉湯', 4, 9, '菜3.jpg', '90', 250, '以新鮮的蛤蜊為主要材料，搭配清淡的湯底和香料，是一道口感鮮美、營養豐富的湯品。。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(4, '09fdab8a-6185-4484-8bea-c47d85647d8b', '熱豆花', 3, 9, '菜4.jpg', '90', 90, '熱豆花是一道以嫩豆腐為主要原料製作的甜品，通常配以甜糖水或糖漿，口感滑嫩，是夏日消暑的經典選擇。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(5, '09fdab8a-6185-4484-8bea-c47d85647d8b', '中式川味麻辣魚', 4, 9, '菜5.jpg', '90', 350, '中式川味麻辣魚是一道具有濃郁川菜風味的魚類料理。其特色在於以麻辣調味為主，口感辣而麻，具有濃郁的香料風味和豐富的醬汁。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(6, '09fdab8a-6185-4484-8bea-c47d85647d8b', '古早味控肉', 1, 9, '菜6.jpg', '90', 180, '以豬腩肉為主料，經過長時間的燉煮，肉質軟嫩，入口即化。它的特色在於醬汁濃郁、味道豐富，是一道家常菜中的經典之作。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(7, '09fdab8a-6185-4484-8bea-c47d85647d8b', '藥膳香腸', 1, 9, '菜7.jpg', '90', 150, '添加了多種中藥材和調味料製成的腸製品。它不僅具有傳統香腸的口感，還有中藥材的滋補效果，是一種兼具美食與養生功效的特色食品。', '2,3,4,1', '3,4,1,2', '2,1', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(8, '', '北平烤鴨', 1, 0, '菜8.jpg', '0', 250, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(9, '', '鮮味肉包', 1, 0, '菜9.jpg', '0', 120, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(10, '', '爆炒青菜', 2, 0, '菜10.jpg', '0', 110, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(11, '', '皮蛋炒苦瓜', 2, 0, '菜11.jpg', '0', 130, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(12, '', '蒜香水炒五色時蔬', 2, 0, '菜12.jpg', '0', 130, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(13, '', '蒜炒高麗菜', 2, 0, '菜13.jpg', '0', 150, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(14, '', '清炒鮮香菇', 2, 0, '菜14.jpg', '0', 150, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(15, '', '木耳洋蔥菇', 2, 0, '菜15.jpg', '0', 150, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(16, '', '奶焗蝦', 4, 0, '菜16.jpg', '0', 430, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(17, '', '炸湯圓', 3, 0, '菜17.jpg', '0', 140, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52'),
(18, '', '杞子桂花糕', 3, 0, '菜18.jpg', '0', 170, '', '', '', '', '2024-07-19 09:12:52', '2024-07-19 09:12:52');

-- --------------------------------------------------------

--
-- 資料表結構 `product_color`
--

CREATE TABLE `product_color` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `cid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `product_size`
--

CREATE TABLE `product_size` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `sid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int NOT NULL,
  `pid` int NOT NULL,
  `tid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id` int NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 資料表結構 `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` varchar(255) NOT NULL COMMENT 'UUID',
  `user_id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL COMMENT 'LINE Pay, 信用卡, ATM',
  `shipping` varchar(255) DEFAULT NULL COMMENT '7-11, Family Mart, Hi-Life, OK Mart, 郵局, 宅配',
  `status` varchar(255) DEFAULT NULL COMMENT 'pending, paid, fail, cancel, error',
  `order_info` text COMMENT 'send to line pay',
  `reservation` text COMMENT 'get from line pay',
  `confirm` text COMMENT 'confirm from line pay',
  `return_code` varchar(255) DEFAULT NULL,
  `order_name1` text,
  `order_phone1` text,
  `order_zip1` text,
  `order_county1` text,
  `order_district1` text,
  `order_address1` text,
  `order_name2` text,
  `order_phone2` text,
  `order_zip2` text,
  `order_county2` text,
  `order_district2` text,
  `order_address2` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `user_id`, `amount`, `transaction_id`, `payment`, `shipping`, `status`, `order_info`, `reservation`, `confirm`, `return_code`, `order_name1`, `order_phone1`, `order_zip1`, `order_county1`, `order_district1`, `order_address1`, `order_name2`, `order_phone2`, `order_zip2`, `order_county2`, `order_district2`, `order_address2`, `created_at`, `updated_at`) VALUES
('1d7c3148-594f-4859-8c65-94ca870996b9', 1, 520, '2024072302164200110', NULL, NULL, '已付款', '{\"orderId\":\"1d7c3148-594f-4859-8c65-94ca870996b9\",\"currency\":\"TWD\",\"amount\":520,\"packages\":[{\"id\":\"1175d81b-2369-4608-8660-44a966fd8b02\",\"amount\":520,\"products\":[{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"1d7c3148-594f-4859-8c65-94ca870996b9\",\"currency\":\"TWD\",\"amount\":520,\"packages\":[{\"id\":\"1175d81b-2369-4608-8660-44a966fd8b02\",\"amount\":520,\"products\":[{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=UXdMWkdSZ1N5TTVvRDdrZDhGTG5qWThPTmFRcFpINEg5Q29NK0l3Q2FTamI5SnZadUNQOXZDbDBzUEpnVFBuRg&locale=zh-TW_LP\",\"app\":\"line://pay/payment/UXdMWkdSZ1N5TTVvRDdrZDhGTG5qWThPTmFRcFpINEg5Q29NK0l3Q2FTamI5SnZadUNQOXZDbDBzUEpnVFBuRg\"},\"transactionId\":\"2024072302164200110\",\"paymentAccessToken\":\"272158513841\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164200110\",\"orderId\":\"1d7c3148-594f-4859-8c65-94ca870996b9\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":520,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"1175d81b-2369-4608-8660-44a966fd8b02\",\"amount\":520,\"userFeeAmount\":0,\"products\":[{\"id\":\"7\",\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150},{\"id\":\"8\",\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":\"9\",\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:45:45', '2024-07-23 22:46:06'),
('2401feee-9a22-4eef-bc16-adcc9afc0444', 1, 120, '2024072302164201910', NULL, NULL, '已付款', '{\"orderId\":\"2401feee-9a22-4eef-bc16-adcc9afc0444\",\"currency\":\"TWD\",\"amount\":120,\"packages\":[{\"id\":\"c6365123-940a-4b1d-8136-2491296d507e\",\"amount\":120,\"products\":[{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"2401feee-9a22-4eef-bc16-adcc9afc0444\",\"currency\":\"TWD\",\"amount\":120,\"packages\":[{\"id\":\"c6365123-940a-4b1d-8136-2491296d507e\",\"amount\":120,\"products\":[{\"id\":9,\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=cXBUWkdWQ2x6TTZ3ci8wZElCbk5rL2E0Ri9oT0FOL2FtUmxMVE01VVV6SUc5em5zMVQxYnVCL3dSeWcwUk1CRg&locale=zh-TW_LP\",\"app\":\"line://pay/payment/cXBUWkdWQ2x6TTZ3ci8wZElCbk5rL2E0Ri9oT0FOL2FtUmxMVE01VVV6SUc5em5zMVQxYnVCL3dSeWcwUk1CRg\"},\"transactionId\":\"2024072302164201910\",\"paymentAccessToken\":\"456020569749\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164201910\",\"orderId\":\"2401feee-9a22-4eef-bc16-adcc9afc0444\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":120,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"c6365123-940a-4b1d-8136-2491296d507e\",\"amount\":120,\"userFeeAmount\":0,\"products\":[{\"id\":\"9\",\"name\":\"鮮味肉包\",\"quantity\":1,\"price\":120}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:50:38', '2024-07-23 22:50:56'),
('56f35cc5-ad3e-4c89-8701-21e9976bc5db', 1, 1030, '2024072302164199610', NULL, NULL, '完成訂單', '{\"orderId\":\"56f35cc5-ad3e-4c89-8701-21e9976bc5db\",\"currency\":\"TWD\",\"amount\":1030,\"packages\":[{\"id\":\"fe00014b-6fe3-473d-a07f-a987d23b2ed8\",\"amount\":1030,\"products\":[{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"56f35cc5-ad3e-4c89-8701-21e9976bc5db\",\"currency\":\"TWD\",\"amount\":1030,\"packages\":[{\"id\":\"fe00014b-6fe3-473d-a07f-a987d23b2ed8\",\"amount\":1030,\"products\":[{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=U1NlbkdFZzZPY1U0YWxxTzBDREZPd0ZqeG5RcDdsYklTNDhlQUdBL0RiTU01eFhOK2NsWW9KaFh4Lzc4WUhhUQ&locale=zh-TW_LP\",\"app\":\"line://pay/payment/U1NlbkdFZzZPY1U0YWxxTzBDREZPd0ZqeG5RcDdsYklTNDhlQUdBL0RiTU01eFhOK2NsWW9KaFh4Lzc4WUhhUQ\"},\"transactionId\":\"2024072302164199610\",\"paymentAccessToken\":\"339200904847\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164199610\",\"orderId\":\"56f35cc5-ad3e-4c89-8701-21e9976bc5db\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":1030,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"fe00014b-6fe3-473d-a07f-a987d23b2ed8\",\"amount\":1030,\"userFeeAmount\":0,\"products\":[{\"id\":\"2\",\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":\"5\",\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:44:14', '2024-07-23 22:44:37'),
('70bae735-e452-40cd-b7d2-271838ab29f4', 1, 1630, '2024072302164199210', NULL, NULL, '完成訂單', '{\"orderId\":\"70bae735-e452-40cd-b7d2-271838ab29f4\",\"currency\":\"TWD\",\"amount\":1630,\"packages\":[{\"id\":\"dc55349e-2d10-4bf1-b1b5-818d6849eb06\",\"amount\":1630,\"products\":[{\"id\":1,\"name\":\"蝦菇奶油醬\",\"quantity\":1,\"price\":350},{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":3,\"name\":\"蛤蜊燉湯\",\"quantity\":1,\"price\":250},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"70bae735-e452-40cd-b7d2-271838ab29f4\",\"currency\":\"TWD\",\"amount\":1630,\"packages\":[{\"id\":\"dc55349e-2d10-4bf1-b1b5-818d6849eb06\",\"amount\":1630,\"products\":[{\"id\":1,\"name\":\"蝦菇奶油醬\",\"quantity\":1,\"price\":350},{\"id\":2,\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":3,\"name\":\"蛤蜊燉湯\",\"quantity\":1,\"price\":250},{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=UlJpbkdDakNPTVZZWUZPT2tFY3FPNXZFK0RzZTExTStHcHJ5RVpjYWI2RkR4QTUxZmlNN2Rvbm5QczNESlBrdg&locale=zh-TW_LP\",\"app\":\"line://pay/payment/UlJpbkdDakNPTVZZWUZPT2tFY3FPNXZFK0RzZTExTStHcHJ5RVpjYWI2RkR4QTUxZmlNN2Rvbm5QczNESlBrdg\"},\"transactionId\":\"2024072302164199210\",\"paymentAccessToken\":\"217224854406\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164199210\",\"orderId\":\"70bae735-e452-40cd-b7d2-271838ab29f4\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":1630,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"dc55349e-2d10-4bf1-b1b5-818d6849eb06\",\"amount\":1630,\"userFeeAmount\":0,\"products\":[{\"id\":\"1\",\"name\":\"蝦菇奶油醬\",\"quantity\":1,\"price\":350},{\"id\":\"2\",\"name\":\"波士頓龍蝦\",\"quantity\":1,\"price\":680},{\"id\":\"3\",\"name\":\"蛤蜊燉湯\",\"quantity\":1,\"price\":250},{\"id\":\"5\",\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:43:13', '2024-07-23 22:43:42'),
('c2d13ab7-b482-4dc5-a151-c454f932b680', 1, 750, '2024072302164199910', NULL, NULL, '完成訂單', '{\"orderId\":\"c2d13ab7-b482-4dc5-a151-c454f932b680\",\"currency\":\"TWD\",\"amount\":750,\"packages\":[{\"id\":\"01ab935e-bf8c-4cd4-bc71-3f77b13dfb7f\",\"amount\":750,\"products\":[{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"c2d13ab7-b482-4dc5-a151-c454f932b680\",\"currency\":\"TWD\",\"amount\":750,\"packages\":[{\"id\":\"01ab935e-bf8c-4cd4-bc71-3f77b13dfb7f\",\"amount\":750,\"products\":[{\"id\":5,\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350},{\"id\":8,\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=akRLbkdHQ1VPY1dnc1YrT3dFTTVQQ2djZWZIb2dVQ0NCZlRIeStxZjMyN1ZUSFRWcFUrUTFCSmxlaXZ1aFdtcw&locale=zh-TW_LP\",\"app\":\"line://pay/payment/akRLbkdHQ1VPY1dnc1YrT3dFTTVQQ2djZWZIb2dVQ0NCZlRIeStxZjMyN1ZUSFRWcFUrUTFCSmxlaXZ1aFdtcw\"},\"transactionId\":\"2024072302164199910\",\"paymentAccessToken\":\"683315685043\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164199910\",\"orderId\":\"c2d13ab7-b482-4dc5-a151-c454f932b680\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":750,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"01ab935e-bf8c-4cd4-bc71-3f77b13dfb7f\",\"amount\":750,\"userFeeAmount\":0,\"products\":[{\"id\":\"5\",\"name\":\"中式川味麻辣魚\",\"quantity\":1,\"price\":350},{\"id\":\"8\",\"name\":\"北平烤鴨\",\"quantity\":1,\"price\":250},{\"id\":\"7\",\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:45:03', '2024-07-23 22:45:24'),
('ce087cd2-5c00-4b26-a343-6de144c60225', 1, 140, '2024072302164202310', NULL, NULL, '完成訂單', '{\"orderId\":\"ce087cd2-5c00-4b26-a343-6de144c60225\",\"currency\":\"TWD\",\"amount\":140,\"packages\":[{\"id\":\"5340be2e-5f03-433d-a19f-ef167f8c6ae6\",\"amount\":140,\"products\":[{\"id\":17,\"name\":\"炸湯圓\",\"quantity\":1,\"price\":140}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"ce087cd2-5c00-4b26-a343-6de144c60225\",\"currency\":\"TWD\",\"amount\":140,\"packages\":[{\"id\":\"5340be2e-5f03-433d-a19f-ef167f8c6ae6\",\"amount\":140,\"products\":[{\"id\":17,\"name\":\"炸湯圓\",\"quantity\":1,\"price\":140}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=Zy9MWkdSaVV6ODVvclNrZThPYVVsMFVXZWRJd1V0QXo5N25EMHo3bWxRMVhQK2tTa09ianZKTW5OSkR0QkRSdw&locale=zh-TW_LP\",\"app\":\"line://pay/payment/Zy9MWkdSaVV6ODVvclNrZThPYVVsMFVXZWRJd1V0QXo5N25EMHo3bWxRMVhQK2tTa09ianZKTW5OSkR0QkRSdw\"},\"transactionId\":\"2024072302164202310\",\"paymentAccessToken\":\"046072494563\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164202310\",\"orderId\":\"ce087cd2-5c00-4b26-a343-6de144c60225\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":140,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"5340be2e-5f03-433d-a19f-ef167f8c6ae6\",\"amount\":140,\"userFeeAmount\":0,\"products\":[{\"id\":\"17\",\"name\":\"炸湯圓\",\"quantity\":1,\"price\":140}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:51:20', '2024-07-23 22:51:38'),
('e1d133de-3b53-49e3-af26-2923b78ecae1', 1, 260, '2024072302164200810', NULL, NULL, '已取消訂單', '{\"orderId\":\"e1d133de-3b53-49e3-af26-2923b78ecae1\",\"currency\":\"TWD\",\"amount\":260,\"packages\":[{\"id\":\"3639801a-a129-4996-9232-630e70206392\",\"amount\":260,\"products\":[{\"id\":10,\"name\":\"爆炒青菜\",\"quantity\":1,\"price\":110},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"e1d133de-3b53-49e3-af26-2923b78ecae1\",\"currency\":\"TWD\",\"amount\":260,\"packages\":[{\"id\":\"3639801a-a129-4996-9232-630e70206392\",\"amount\":260,\"products\":[{\"id\":10,\"name\":\"爆炒青菜\",\"quantity\":1,\"price\":110},{\"id\":7,\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=aWh6WkdWRGt5TTZ3WU1VZElFLzJqaTRaT2llejlVZ2RBcEpyeXdKTEVnUldNUDlSNG1IelFMMTBuY0JZbURFMA&locale=zh-TW_LP\",\"app\":\"line://pay/payment/aWh6WkdWRGt5TTZ3WU1VZElFLzJqaTRaT2llejlVZ2RBcEpyeXdKTEVnUldNUDlSNG1IelFMMTBuY0JZbURFMA\"},\"transactionId\":\"2024072302164200810\",\"paymentAccessToken\":\"964590328859\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164200810\",\"orderId\":\"e1d133de-3b53-49e3-af26-2923b78ecae1\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":260,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"3639801a-a129-4996-9232-630e70206392\",\"amount\":260,\"userFeeAmount\":0,\"products\":[{\"id\":\"10\",\"name\":\"爆炒青菜\",\"quantity\":1,\"price\":110},{\"id\":\"7\",\"name\":\"藥膳香腸\",\"quantity\":1,\"price\":150}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:47:49', '2024-07-23 22:48:07'),
('ec99fefe-096f-4894-8fad-a871d4ce0816', 1, 130, '2024072302164201510', NULL, NULL, '已取消訂單', '{\"orderId\":\"ec99fefe-096f-4894-8fad-a871d4ce0816\",\"currency\":\"TWD\",\"amount\":130,\"packages\":[{\"id\":\"44f6827e-b0ce-4bb7-ab56-914040fa6308\",\"amount\":130,\"products\":[{\"id\":11,\"name\":\"皮蛋炒苦瓜\",\"quantity\":1,\"price\":130}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', '{\"orderId\":\"ec99fefe-096f-4894-8fad-a871d4ce0816\",\"currency\":\"TWD\",\"amount\":130,\"packages\":[{\"id\":\"44f6827e-b0ce-4bb7-ab56-914040fa6308\",\"amount\":130,\"products\":[{\"id\":11,\"name\":\"皮蛋炒苦瓜\",\"quantity\":1,\"price\":130}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}},\"paymentUrl\":{\"web\":\"https://sandbox-web-pay.line.me/web/payment/wait?transactionReserveId=cG9YWkdUQXR6TTdRcGZZZDREOHlreW9Fa3ZobG5JNmdneHJxdjE0RlM2MTRXcWRXOEg0NGJIVnpobWFJTXg5aw&locale=zh-TW_LP\",\"app\":\"line://pay/payment/cG9YWkdUQXR6TTdRcGZZZDREOHlreW9Fa3ZobG5JNmdneHJxdjE0RlM2MTRXcWRXOEg0NGJIVnpobWFJTXg5aw\"},\"transactionId\":\"2024072302164201510\",\"paymentAccessToken\":\"338431565971\"}', '{\"returnCode\":\"0000\",\"returnMessage\":\"Success.\",\"info\":{\"transactionId\":\"2024072302164201510\",\"orderId\":\"ec99fefe-096f-4894-8fad-a871d4ce0816\",\"payInfo\":[{\"method\":\"CREDIT_CARD\",\"amount\":130,\"maskedCreditCardNumber\":\"************1111\"}],\"packages\":[{\"id\":\"44f6827e-b0ce-4bb7-ab56-914040fa6308\",\"amount\":130,\"userFeeAmount\":0,\"products\":[{\"id\":\"11\",\"name\":\"皮蛋炒苦瓜\",\"quantity\":1,\"price\":130}]}]}}', '0000', '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 22:49:16', '2024-07-23 22:49:36');

-- --------------------------------------------------------

--
-- 資料表結構 `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `qrcode`
--

INSERT INTO `qrcode` (`id`, `amount`, `detail`, `time`) VALUES
(94, 0, '', '2024-07-16 14:10:52'),
(95, 0, '', '2024-07-16 14:15:43'),
(96, 5340, '芭樂檸檬 NT$180 × 1; 分解茶 NT$100 × 1; 蘋果汁 NT$380 × 1; 台風芳草 NT$180 × 1; 羅蘭香檳 NT$4500 × 1', '2024-07-16 15:30:19'),
(97, 200, '抹茶千層 NT$120 × 1; 杏仁豆腐 NT$80 × 1', '2024-07-18 09:27:06'),
(98, 620, '蝦迪酥 NT$320 × 1; 功夫雞 NT$300 × 1', '2024-07-18 09:29:27'),
(99, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-18 09:48:33'),
(100, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-18 09:50:46'),
(101, 5980, '安柏夫人 NT$1300 × 1; 羅蘭香檳 NT$4500 × 1; 台風芳草 NT$180 × 1', '2024-07-18 10:53:50'),
(102, 600, '功夫雞 NT$300 × 2', '2024-07-18 10:56:16'),
(103, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-18 10:57:43'),
(104, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-18 10:57:51'),
(105, 200, '抹茶千層 NT$120 × 1; 杏仁豆腐 NT$80 × 1', '2024-07-18 11:01:19'),
(106, 18640, '功夫雞 NT$300 × 5; 蝦迪酥 NT$280 × 3; 熱豆花 NT$110 × 4; 杏仁豆腐 NT$80 × 3; 抹茶千層 NT$120 × 4; 安柏夫人 NT$1300 × 3; 羅蘭香檳 NT$4500 × 2; 台風芳草 NT$180 × 3; 蘋果汁 NT$380 × 3; 分解茶 NT$100 × 2; 芭樂檸檬 NT$180 × 2', '2024-07-18 14:08:49'),
(107, 220, '熱豆花 NT$110 × 2', '2024-07-18 16:45:16'),
(108, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-19 09:57:09'),
(109, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-19 09:58:30'),
(110, 580, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1', '2024-07-19 09:58:49'),
(111, 690, '功夫雞 NT$300 × 1; 蝦迪酥 NT$280 × 1; 熱豆花 NT$110 × 1', '2024-07-19 10:01:53'),
(112, 1800, '招牌功夫雞 NT$300 × 6', '2024-07-19 11:10:03'),
(113, 6240, '本幫紅燒肉 NT$480 × 13', '2024-07-19 11:15:13'),
(114, 1240, '招牌功夫雞 NT$300 × 1; 薄脆蝦笛稣 NT$320 × 1; 菌菇檸檬蝦 NT$380 × 1; 當日季節時蔬 NT$240 × 1', '2024-07-19 11:19:16'),
(115, 1240, '招牌功夫雞 NT$300 × 1; 薄脆蝦笛稣 NT$320 × 1; 菌菇檸檬蝦 NT$380 × 1; 當日季節時蔬 NT$240 × 1', '2024-07-19 11:21:42'),
(116, 1240, '招牌功夫雞 NT$300 × 2; 薄脆蝦笛稣 NT$320 × 2', '2024-07-19 11:22:42'),
(117, 1000, '招牌功夫雞 NT$300 × 1; 薄脆蝦笛稣 NT$320 × 1; 菌菇檸檬蝦 NT$380 × 1', '2024-07-19 11:24:14'),
(118, 1200, '招牌功夫雞 NT$300 × 4', '2024-07-19 16:10:25');

-- --------------------------------------------------------

--
-- 資料表結構 `qrcode_ecpay`
--

CREATE TABLE `qrcode_ecpay` (
  `id` varchar(255) NOT NULL COMMENT 'UUID',
  `user_id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL COMMENT 'LINE Pay, 信用卡, ATM',
  `shipping` varchar(255) DEFAULT NULL COMMENT '7-11, Family Mart, Hi-Life, OK Mart, 郵局, 宅配',
  `status` varchar(255) DEFAULT NULL COMMENT 'pending, paid, fail, cancel, error',
  `order_info` text COMMENT 'send to line pay',
  `reservation` text COMMENT 'get from line pay',
  `confirm` text COMMENT 'confirm from line pay',
  `return_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `qrcode_ecpay`
--

INSERT INTO `qrcode_ecpay` (`id`, `user_id`, `amount`, `transaction_id`, `payment`, `shipping`, `status`, `order_info`, `reservation`, `confirm`, `return_code`, `created_at`, `updated_at`) VALUES
('1732b282-fa9e-4620-9c8d-fd4e9607b285', 1, 1240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"1732b282-fa9e-4620-9c8d-fd4e9607b285\",\"currency\":\"TWD\",\"amount\":1240,\"packages\":[{\"id\":\"609c6315-ba66-4f92-867f-b13066a08787\",\"amount\":1240,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":1,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":1,\"price\":320},{\"name\":\"菌菇檸檬蝦\",\"quantity\":1,\"price\":380},{\"name\":\"當日季節時蔬\",\"quantity\":1,\"price\":240}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:19:16', '2024-07-19 11:19:16'),
('19d16664-c380-475a-a0a0-3155056e7819', 1, 1240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"19d16664-c380-475a-a0a0-3155056e7819\",\"currency\":\"TWD\",\"amount\":1240,\"packages\":[{\"id\":\"bdd95720-e7c1-4093-8c5e-9a4ab376bd45\",\"amount\":1240,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":2,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":2,\"price\":320}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:22:42', '2024-07-19 11:22:42'),
('27739229-2831-49f2-8345-04250dea4ed6', 1, 11370, NULL, NULL, NULL, 'pending', '{\"orderId\":\"27739229-2831-49f2-8345-04250dea4ed6\",\"currency\":\"TWD\",\"amount\":11370,\"packages\":[{\"id\":\"a7e97023-9ac1-45bd-97e9-4fd000c0f785\",\"amount\":11370,\"products\":[{\"name\":\"臘味雙寶炒飯\",\"quantity\":1,\"price\":280},{\"name\":\"川味剁椒草蝦\",\"quantity\":1,\"price\":820},{\"name\":\"家常炒肉絲\",\"quantity\":1,\"price\":300},{\"name\":\"宮保雞丁\",\"quantity\":1,\"price\":360},{\"name\":\"台風精釀啤酒\",\"quantity\":4,\"price\":200},{\"name\":\"金牌生啤酒18天\",\"quantity\":6,\"price\":150},{\"name\":\"金牌台灣啤酒\",\"quantity\":1,\"price\":110},{\"name\":\"安柏夫人\",\"quantity\":6,\"price\":1300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 10:55:58', '2024-07-19 10:55:58'),
('319d2e65-766b-4d47-8bc0-9e01f4e412d1', 1, 1800, NULL, NULL, NULL, 'pending', '{\"orderId\":\"319d2e65-766b-4d47-8bc0-9e01f4e412d1\",\"currency\":\"TWD\",\"amount\":1800,\"packages\":[{\"id\":\"2d444b1c-2115-4859-a413-3c7966c20cdc\",\"amount\":1800,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":6,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:08:14', '2024-07-19 11:08:14'),
('3535ffa1-d57f-46ce-b621-977a228e4b3e', 1, 6240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"3535ffa1-d57f-46ce-b621-977a228e4b3e\",\"currency\":\"TWD\",\"amount\":6240,\"packages\":[{\"id\":\"9ade668f-e56a-4e59-b664-a96f0c43afd1\",\"amount\":6240,\"products\":[{\"name\":\"本幫紅燒肉\",\"quantity\":13,\"price\":480}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:15:13', '2024-07-19 11:15:13'),
('87e726eb-2179-4868-95e7-d13028c486d5', 1, 1800, NULL, NULL, NULL, 'pending', '{\"orderId\":\"87e726eb-2179-4868-95e7-d13028c486d5\",\"currency\":\"TWD\",\"amount\":1800,\"packages\":[{\"id\":\"f91c240a-d26f-4985-b499-faea76b1f5f3\",\"amount\":1800,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":6,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:10:03', '2024-07-19 11:10:03'),
('8acc37de-ff88-4761-95b2-89079e367fad', 1, 1000, NULL, NULL, NULL, 'pending', '{\"orderId\":\"8acc37de-ff88-4761-95b2-89079e367fad\",\"currency\":\"TWD\",\"amount\":1000,\"packages\":[{\"id\":\"a3b13085-1a53-454b-b9af-673b2c051e67\",\"amount\":1000,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":1,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":1,\"price\":320},{\"name\":\"菌菇檸檬蝦\",\"quantity\":1,\"price\":380}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:24:14', '2024-07-19 11:24:14'),
('a655174b-6f7e-433e-a457-7bc9175e27d6', 1, 4800, NULL, NULL, NULL, 'pending', '{\"orderId\":\"a655174b-6f7e-433e-a457-7bc9175e27d6\",\"currency\":\"TWD\",\"amount\":4800,\"packages\":[{\"id\":\"8c26354a-544f-4cf2-b6f8-44c556822c2b\",\"amount\":4800,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":16,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 10:57:38', '2024-07-19 10:57:38'),
('bf21045f-3fa6-40b2-8ceb-e4ab89f71e34', 1, 1240, NULL, NULL, NULL, 'pending', '{\"orderId\":\"bf21045f-3fa6-40b2-8ceb-e4ab89f71e34\",\"currency\":\"TWD\",\"amount\":1240,\"packages\":[{\"id\":\"16eaff6a-0b52-4072-8a01-fc1b4a2e85eb\",\"amount\":1240,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":1,\"price\":300},{\"name\":\"薄脆蝦笛稣\",\"quantity\":1,\"price\":320},{\"name\":\"菌菇檸檬蝦\",\"quantity\":1,\"price\":380},{\"name\":\"當日季節時蔬\",\"quantity\":1,\"price\":240}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:21:42', '2024-07-19 11:21:42'),
('bf8d821f-6edf-4dd4-a9c1-adee539d30aa', 1, 1200, NULL, NULL, NULL, 'pending', '{\"orderId\":\"bf8d821f-6edf-4dd4-a9c1-adee539d30aa\",\"currency\":\"TWD\",\"amount\":1200,\"packages\":[{\"id\":\"427fd2b6-255d-4bed-b3f5-e41807b31a02\",\"amount\":1200,\"products\":[{\"name\":\"招牌功夫雞\",\"quantity\":4,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 16:10:25', '2024-07-19 16:10:25'),
('fd311834-c979-4525-a5d8-ad8752fa050d', 1, 2740, NULL, NULL, NULL, 'pending', '{\"orderId\":\"fd311834-c979-4525-a5d8-ad8752fa050d\",\"currency\":\"TWD\",\"amount\":2740,\"packages\":[{\"id\":\"1d16a3c9-0975-4fe8-8c10-89cf7b91ebba\",\"amount\":2740,\"products\":[{\"name\":\"薄脆蝦笛稣\",\"quantity\":2,\"price\":320},{\"name\":\"招牌功夫雞\",\"quantity\":7,\"price\":300}]}],\"options\":{\"display\":{\"locale\":\"zh_TW\"}}}', NULL, NULL, NULL, '2024-07-19 11:09:13', '2024-07-19 11:09:13');

-- --------------------------------------------------------

--
-- 資料表結構 `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `member_profile_id` int NOT NULL,
  `table_type` varchar(255) NOT NULL,
  `people` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `dining_method` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `reservationsimple`
--

CREATE TABLE `reservationsimple` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `numberOfPeople` varchar(20) NOT NULL,
  `selectedDate` varchar(255) NOT NULL,
  `selectedTime` varchar(255) NOT NULL,
  `menuSelect` varchar(255) NOT NULL,
  `selectedTableType` varchar(255) NOT NULL,
  `textAreaInput` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `reservationsimple`
--

INSERT INTO `reservationsimple` (`id`, `member_id`, `member_name`, `mobile`, `numberOfPeople`, `selectedDate`, `selectedTime`, `menuSelect`, `selectedTableType`, `textAreaInput`, `status`, `created_at`) VALUES
(16, 1, '牡丹樓商家', '0977555444', '5人', '2024-07-18', '17:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:11:40'),
(17, 1, '牡丹樓商家', '0977555444', '5人', '2024-07-18', '19:30', '現場單點', '4人桌', '', 3, '2024-07-18 06:11:54'),
(23, 2, '岳泓', '0977150546', '5人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:28:18'),
(24, 2, '岳泓', '0977150546', '5人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:28:30'),
(25, 2, '岳泓', '0977150546', '7人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:28:41'),
(26, 2, '岳泓', '0977150546', '6人', '2024-07-18', '13:00', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:04'),
(27, 2, '岳泓', '0977150546', '4人', '2024-07-18', '18:00', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:21'),
(28, 2, '岳泓', '0977150546', '6人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:31'),
(29, 2, '岳泓', '0977150546', '6人', '2024-07-18', '12:00', '無菜單料理', '4人桌', '', 3, '2024-07-18 06:37:40'),
(30, 2, '岳泓', '0977150546', '6人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 06:37:55'),
(32, 1, '牡丹樓商家', '0977555444', '6人', '2024-07-18', '12:30', '合菜料理', '4人桌', '', 3, '2024-07-18 07:24:51');

-- --------------------------------------------------------

--
-- 資料表結構 `reservationsmileback`
--

CREATE TABLE `reservationsmileback` (
  `id` int NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `savemoneysystem`
--

CREATE TABLE `savemoneysystem` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `PayMoney` int NOT NULL,
  `cardNumber` varchar(18) NOT NULL,
  `cvc` varchar(4) NOT NULL,
  `expiry` varchar(7) NOT NULL,
  `balance` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `savemoneysystem`
--

INSERT INTO `savemoneysystem` (`id`, `member_id`, `member_name`, `mobile`, `name`, `email`, `PayMoney`, `cardNumber`, `cvc`, `expiry`, `balance`, `created_at`) VALUES
(1, 1, '牡丹樓商家', '0977555444', '李伯皇', 'cses20130312@gmail.com', 4000, '4516516516165165', '999', '1250', 5000, '2024-07-18 02:05:53'),
(2, 2, '岳泓', '0977150546', '652165', 'asd123456@gmail.com', 2000, '1651651651616515', '888', '1250', 11000, '2024-07-18 02:08:54');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `size`
--

CREATE TABLE `size` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `size`
--

INSERT INTO `size` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(2, 'M', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(3, 'L', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(4, 'XL', '2024-07-19 09:12:59', '2024-07-19 09:12:59');

-- --------------------------------------------------------

--
-- 資料表結構 `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `tag`
--

INSERT INTO `tag` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '男性', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(2, '女性', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(3, '中性', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(4, '兒童', '2024-07-19 09:12:59', '2024-07-19 09:12:59');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `google_uid` varchar(255) DEFAULT NULL,
  `line_uid` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `line_access_token` text,
  `name1` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `zip1` varchar(255) DEFAULT NULL,
  `county1` varchar(255) DEFAULT NULL,
  `district1` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `zip2` varchar(255) DEFAULT NULL,
  `county2` varchar(255) DEFAULT NULL,
  `district2` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`, `avatar`, `birth_date`, `sex`, `phone`, `google_uid`, `line_uid`, `photo_url`, `line_access_token`, `name1`, `phone1`, `zip1`, `county1`, `district1`, `address1`, `name2`, `phone2`, `zip2`, `county2`, `district2`, `address2`, `created_at`, `updated_at`) VALUES
(1, '張皓程', 'asd123456', '$2b$10$TlQxtX5bU5WLzdX5cI4EyOYYpouIpctBYrP59xE6j7v2VKdaQuNG6', 'herry@test.com', '', '1980-07-13', '男', '0912345678', NULL, NULL, NULL, NULL, '張皓程', '0912345678', '100', '台北市', '中正區', '忠孝東路一段1號', '', '', '', '', '', '', '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(2, '李小明', 'ginny', '$2b$10$KntQs9QRCSaWFOUbqwNET.8gYbMG5JcuSoqEl5/j6O2c52B46BTLG', 'ginny@test.com', '', '1981-08-11', '女', '0946840920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(3, '李小明', 'mione', '$2b$10$TV9eixliLSt8SkHcKIukt.K8VWRX8K6BFs5Esv1JFgxAMoHzFofG.', 'mione@test.com', '', '1979-09-19', '女', '0912541534', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 09:12:59', '2024-07-19 09:12:59'),
(4, 'Sung', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Ubcaf08dd5b783a9b62140e6ba8db529e', 'https://profile.line-scdn.net/0hCROOIdCBHH1yNg4mzbZjKk5zEhAFGBo1ClMBHFQ0FUpeUwwoGVVRG1EyQRhXDl8rS1hVEwAyQkVb', 'eyJhbGciOiJIUzI1NiJ9.qXolcpjDKxc7ZhmeL1HNvK5qxHsts9KMYhO915T9MHmrObqVrPA6wLuLzgfnOIdnWnTMe01hzKK72gRiIx4mkT7m_DquwZteKsJ3aoo9eSjxRR69uGrl5ADiABElZqg1l_suA7FsMPgw4H4BJGeicvjrFcEZ6X-IMCAr5XFJTk4.GrHeT446DnSZJBic6PEIpvUq0ljAbYG_b84QJ9XeWhA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 15:05:18', '2024-07-19 15:05:18');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `key_word_id` (`key_word_id`);

--
-- 資料表索引 `bento`
--
ALTER TABLE `bento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cart_status`
--
ALTER TABLE `cart_status`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `combo_meal`
--
ALTER TABLE `combo_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- 資料表索引 `contact_book`
--
ALTER TABLE `contact_book`
  ADD KEY `member_profile_id` (`member_profile_id`);

--
-- 資料表索引 `coupons`
--
ALTER TABLE `coupons`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cs_id` (`cs_id`);

--
-- 資料表索引 `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `key_words`
--
ALTER TABLE `key_words`
  ADD PRIMARY KEY (`k_id`);

--
-- 資料表索引 `liquor`
--
ALTER TABLE `liquor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `member_card`
--
ALTER TABLE `member_card`
  ADD KEY `member_profile_id` (`member_profile_id`),
  ADD KEY `status_id` (`status_id`);

--
-- 資料表索引 `member_login`
--
ALTER TABLE `member_login`
  ADD KEY `member_profile_id` (`member_profile_id`);

--
-- 資料表索引 `member_profile`
--
ALTER TABLE `member_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- 資料表索引 `member_profile_simple`
--
ALTER TABLE `member_profile_simple`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- 資料表索引 `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`item_id`);

--
-- 資料表索引 `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `one`
--
ALTER TABLE `one`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- 資料表索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `qrcode_ecpay`
--
ALTER TABLE `qrcode_ecpay`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_profile_id` (`member_profile_id`);

--
-- 資料表索引 `reservationsimple`
--
ALTER TABLE `reservationsimple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `reservationsmileback`
--
ALTER TABLE `reservationsmileback`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `savemoneysystem`
--
ALTER TABLE `savemoneysystem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 資料表索引 `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `a_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bento`
--
ALTER TABLE `bento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_status`
--
ALTER TABLE `cart_status`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `combo_meal`
--
ALTER TABLE `combo_meal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dessert`
--
ALTER TABLE `dessert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `liquor`
--
ALTER TABLE `liquor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_profile`
--
ALTER TABLE `member_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_profile_simple`
--
ALTER TABLE `member_profile_simple`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `one`
--
ALTER TABLE `one`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2492;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2506;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2036;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `purchase_item`
--
ALTER TABLE `purchase_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservationsimple`
--
ALTER TABLE `reservationsimple`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reservationsmileback`
--
ALTER TABLE `reservationsmileback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `savemoneysystem`
--
ALTER TABLE `savemoneysystem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `size`
--
ALTER TABLE `size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`key_word_id`) REFERENCES `key_words` (`k_id`);

--
-- 資料表的限制式 `bento`
--
ALTER TABLE `bento`
  ADD CONSTRAINT `bento_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `combo_meal`
--
ALTER TABLE `combo_meal`
  ADD CONSTRAINT `combo_meal_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `contact_book`
--
ALTER TABLE `contact_book`
  ADD CONSTRAINT `contact_book_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `coupons_ibfk_2` FOREIGN KEY (`cs_id`) REFERENCES `coupons_sample` (`cs_id`);

--
-- 資料表的限制式 `dessert`
--
ALTER TABLE `dessert`
  ADD CONSTRAINT `dessert_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `drink`
--
ALTER TABLE `drink`
  ADD CONSTRAINT `drink_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `liquor`
--
ALTER TABLE `liquor`
  ADD CONSTRAINT `liquor_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `member_card`
--
ALTER TABLE `member_card`
  ADD CONSTRAINT `member_card_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`),
  ADD CONSTRAINT `member_card_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `cart_status` (`sid`);

--
-- 資料表的限制式 `member_login`
--
ALTER TABLE `member_login`
  ADD CONSTRAINT `member_login_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `one`
--
ALTER TABLE `one`
  ADD CONSTRAINT `one_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`item_id`);

--
-- 資料表的限制式 `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`member_profile_id`) REFERENCES `member_profile` (`id`);

--
-- 資料表的限制式 `reservationsimple`
--
ALTER TABLE `reservationsimple`
  ADD CONSTRAINT `reservationsimple_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_profile_simple` (`id`);

--
-- 資料表的限制式 `savemoneysystem`
--
ALTER TABLE `savemoneysystem`
  ADD CONSTRAINT `savemoneysystem_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_profile_simple` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;