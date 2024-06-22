-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 06 月 22 日 05:07
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `user`
--

-- --------------------------------------------------------

--
-- 資料表結構 `likerecipe`
--

CREATE TABLE `likerecipe` (
  `Uid` int(11) NOT NULL,
  `Rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `recipe`
--

CREATE TABLE `recipe` (
  `Rid` int(10) NOT NULL,
  `Uid` int(10) NOT NULL,
  `RName` text NOT NULL,
  `Category` text NOT NULL,
  `CookTime` varchar(11) NOT NULL,
  `Description` text DEFAULT NULL,
  `CreateDate` datetime DEFAULT current_timestamp(),
  `Likes` int(5) DEFAULT 0,
  `Serving` text DEFAULT NULL,
  `Imgid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `recipe`
--

INSERT INTO `recipe` (`Rid`, `Uid`, `RName`, `Category`, `CookTime`, `Description`, `CreateDate`, `Likes`, `Serving`, `Imgid`) VALUES
(1, 11, 'Fried egg', 'western', '300', 'easy to make', '2024-06-18 10:09:45', 0, '', ''),
(2, 11, 'Fried egg', 'western', '300', 'easy to make', '2024-06-18 10:17:07', 0, '', ''),
(3, 11, 'Fried rice', 'Chinese', '3', 'easy to cook', '2024-06-18 13:20:10', 0, NULL, NULL),
(4, 11, 'Fried rice', 'Chinese', '3', '123', '2024-06-18 14:16:17', 0, NULL, NULL),
(5, 11, 'fried fries', 'western', '3', 'oil to cook', '2024-06-18 16:16:38', 0, NULL, NULL),
(6, 23, 'fried egg', 'Chinese', '5 mins', '123', '2024-06-21 11:01:55', 0, '1 Serving', '3ca74487-003e-4fd4-87f4-3e783c3978bb'),
(7, 23, 'fried egg', 'Chinese', '5 mins', '123', '2024-06-21 11:01:57', 0, '1 Serving', 'a6f9f5e3-d227-4845-abbb-82deb003f51d'),
(8, 23, 'fried egg', 'Chinese', '5 mins', '123', '2024-06-21 11:26:43', 0, '1 Serving', '66f850a6-449e-4165-9970-a1901fe6d9d2'),
(9, 23, 'fried egg', 'Chinese', '5 mins', '123', '2024-06-21 11:26:43', 0, '1 Serving', '60440aa2-d85a-4eb8-899c-20e3dea09524'),
(10, 23, 'egg`', 'Dessert', '5 mins', '111', '2024-06-21 11:56:21', 0, '1 Serving', 'd5d6eb37-9046-4478-9b6b-c13697330e2f'),
(11, 23, 'egg`', 'Dessert', '5 mins', '111', '2024-06-21 11:57:33', 0, '1 Serving', 'bb944904-e96f-46af-b747-a66b0b9a7966'),
(12, 23, 'egg`', 'Dessert', '5 mins', '111', '2024-06-21 11:59:26', 0, '1 Serving', '6f7bbfa6-1f04-47e6-ba7b-1b8f71b1cf51'),
(13, 23, 'eee', 'Fitness', '5 mins', 'eeee', '2024-06-21 12:02:38', 0, '1 Serving', '37757337-cc95-4b36-991c-9c4f3612de8f'),
(14, 23, 'eee', 'Fitness', '5 mins', 'eeee', '2024-06-21 12:03:29', 0, '1 Serving', '9e3a0712-42b1-4a70-8af3-2724803dbe56'),
(15, 23, 'aaa', 'American', '5 mins', 'aaa', '2024-06-21 12:51:53', 0, '1 Serving', 'cba923e0-cbe2-41de-8a4b-0a82f84c8e6b'),
(16, 23, 'aaa', 'American', '5 mins', 'aaa', '2024-06-21 13:04:59', 0, '1 Serving', 'd107e707-84a7-4b7d-a006-321b54caa5a6'),
(17, 23, 'aaab', 'Spanish', '5 mins', 'aaab', '2024-06-21 13:11:35', 0, '1 Serving', '0102bad9-ddae-4ca7-92cc-46a8028e1cb6'),
(18, 23, 'aaabc', 'Spanish', '5 mins', 'aaab', '2024-06-21 13:13:11', 0, '1 Serving', 'ccb6e521-70c1-4d3d-9a6e-b8ddc89b02bf'),
(19, 11, 'rice', 'Chinese', '5 mins', 'rice', '2024-06-21 13:53:43', 0, '1 Serving', '8ff64f5c-0f4b-48d6-a52a-1d1d85f0c533'),
(20, 11, 'cbum', 'Dessert', '5 mins', 'bum', '2024-06-21 17:41:43', 0, '1 Serving', '5d39fc6b-6026-4a44-af05-45ee377d239e'),
(21, 22, 'adwqe', 'Fusion', '30 mins', 'qwedq', '2024-06-21 20:14:55', 0, '2 Serving', '586df765-db04-4597-935c-55e4e7ae33e2');

-- --------------------------------------------------------

--
-- 資料表結構 `recipeingredient`
--

CREATE TABLE `recipeingredient` (
  `Rid` int(11) NOT NULL,
  `Iid` int(11) NOT NULL,
  `Ingredient` text NOT NULL,
  `Portion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `recipeingredient`
--

INSERT INTO `recipeingredient` (`Rid`, `Iid`, `Ingredient`, `Portion`) VALUES
(1, 1, 'egg', '0'),
(2, 2, 'egg', '0'),
(3, 3, 'rice', '0'),
(4, 4, '124', '0'),
(5, 5, 'oil', '0'),
(5, 6, 'potato', '0'),
(5, 7, 'knife', '0'),
(18, 8, 'hhh', '1'),
(19, 9, 'rice', '1'),
(20, 10, 'protein', '1'),
(21, 11, 'qwfq', 'fqw');

-- --------------------------------------------------------

--
-- 資料表結構 `recipestep`
--

CREATE TABLE `recipestep` (
  `Rid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Step` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `recipestep`
--

INSERT INTO `recipestep` (`Rid`, `Sid`, `Step`) VALUES
(1, 1, 'crack egg into pan'),
(1, 1, 'crack egg into pan'),
(2, 1, 'crack egg into pan'),
(2, 1, 'crack egg into pan'),
(3, 1, 'rice on pan'),
(3, 1, 'rice on pan'),
(4, 1, '123'),
(4, 1, '123'),
(5, 1, 'oil in pot'),
(5, 2, 'cut potato'),
(5, 3, 'put them in pot'),
(5, 1, 'oil in pot'),
(5, 2, 'cut potato'),
(5, 3, 'put them in pot'),
(6, 1, '1234'),
(7, 1, '1234'),
(8, 1, '1234'),
(9, 1, '1234'),
(10, 1, 'egg'),
(11, 1, 'egg'),
(12, 1, 'egg'),
(13, 1, '111'),
(14, 1, '111'),
(15, 1, '222'),
(16, 1, '222'),
(17, 1, '222b'),
(18, 1, '222b'),
(19, 1, 'rice on crack'),
(20, 1, 'enjoy'),
(21, 1, 'fwqfq');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `Uid` int(10) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(345) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Iconid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`Uid`, `Username`, `Email`, `Password`, `Iconid`) VALUES
(11, 'matthew', 'matt@gmail.com', '$2y$10$3JhG22br.Nz6Z0yM7EbmFe0kk/qyB2P.0Sozr3TMcdna8.wRnr4J6', NULL),
(12, 'here', 'here@gmail.com', '$2y$10$cc6hgPUatUJ06OG8lLLLKugNYPwXQs3Aek3Cy2xGXbvb/wQInJKj2', NULL),
(14, 'testuser123', 'testuser123@email.com', '$2y$10$92zEuXx0YPYJyu0JFRarJe/2LqXij4z7SauQA5OllAJ5NYnp3EuYS', NULL),
(16, 'testuser1234', 'testuser1234@email.com', '$2y$10$LloMunRphJ1L9dPOqeez7Oweyy4Yr5ujRLjUrakvLiVo1FO7f9IJa', NULL),
(17, 'testuser12345', 'testuser12345@email.com', '$2y$10$72Xg.J/RgwRQiw/pyluT2e4efi9PkOCWAmaekvyPwhouphV6ThI4u', NULL),
(19, 'Matthew1', 'Matthew1@gmail.com', '$2y$10$xtrfNHC2WPpKJSTGH7gP0O//W39py8Qjl9rkKa8tzhYHK86FFg0r2', NULL),
(21, '123', 'test@gmail.com', '$2y$10$tRssoyWxPD9p8qXE2mrTn.ASiDxu1dfwnZ2JtSMAfg16X/L9Kor.O', '024917d2-78ef-40aa-ba25-34926e4cb7bc'),
(22, 'ron', 'testing@gmail.com', '$2y$10$HCkOtxT/CXeDlGEDy0vZcOecd6YwC0/ohmaxaOhBCTKcL6wX029GC', '469e0fe2-7f7a-40be-820b-619c1ac72bcb'),
(23, 'matthew2', 'matthew2@gmail.com', '$2y$10$ke0ekhY.R.TQcP9P8B8wbOFt3B6OrFOSDmPwPVtTmI3QJRHHmRhRi', 'fed46a83-3b63-444e-9702-66f131e68f14');

-- --------------------------------------------------------

--
-- 資料表結構 `userfollow`
--

CREATE TABLE `userfollow` (
  `Uid` int(10) NOT NULL,
  `Followid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `likerecipe`
--
ALTER TABLE `likerecipe`
  ADD PRIMARY KEY (`Uid`,`Rid`),
  ADD KEY `like_fk1` (`Rid`);

--
-- 資料表索引 `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`Rid`),
  ADD KEY `Rec_fk` (`Uid`);

--
-- 資料表索引 `recipeingredient`
--
ALTER TABLE `recipeingredient`
  ADD PRIMARY KEY (`Iid`),
  ADD KEY `Ing_fk` (`Rid`);

--
-- 資料表索引 `recipestep`
--
ALTER TABLE `recipestep`
  ADD KEY `Step_fk` (`Rid`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Uid`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- 資料表索引 `userfollow`
--
ALTER TABLE `userfollow`
  ADD PRIMARY KEY (`Uid`,`Followid`),
  ADD KEY `followid_fk` (`Followid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipe`
--
ALTER TABLE `recipe`
  MODIFY `Rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipeingredient`
--
ALTER TABLE `recipeingredient`
  MODIFY `Iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `likerecipe`
--
ALTER TABLE `likerecipe`
  ADD CONSTRAINT `like_fk1` FOREIGN KEY (`Rid`) REFERENCES `recipe` (`Rid`),
  ADD CONSTRAINT `like_fk2` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`);

--
-- 資料表的限制式 `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `Rec_fk` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`);

--
-- 資料表的限制式 `recipeingredient`
--
ALTER TABLE `recipeingredient`
  ADD CONSTRAINT `Ing_fk` FOREIGN KEY (`Rid`) REFERENCES `recipe` (`Rid`);

--
-- 資料表的限制式 `recipestep`
--
ALTER TABLE `recipestep`
  ADD CONSTRAINT `Step_fk` FOREIGN KEY (`Rid`) REFERENCES `recipe` (`Rid`);

--
-- 資料表的限制式 `userfollow`
--
ALTER TABLE `userfollow`
  ADD CONSTRAINT `followid_fk` FOREIGN KEY (`Followid`) REFERENCES `user` (`Uid`),
  ADD CONSTRAINT `uid_fk` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
