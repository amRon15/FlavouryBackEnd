-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 06 月 29 日 15:07
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
-- 資料庫： `Flavoury`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bookmark`
--

CREATE TABLE `bookmark` (
  `Uid` int(10) NOT NULL,
  `Rid` int(10) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(273, 1, 'Vegetarian Mushroom Meatballs', 'Vegan', '40 mins', 'This is a Vegetarian Mushroom Meatballs recipe.', '2024-06-23 20:15:52', 0, '1 Serving', 'd80f4955-8dfb-4abe-b847-7a42bc1866fc'),
(275, 1, 'Lacto vegetarian mushroom pasta', 'Vegan', '90 mins', 'This is a Lacto vegetarian mushroom pasta recipe.', '2024-06-23 20:15:52', 0, '1 Serving', '672ada37-d997-445f-8211-a9e88491f838'),
(290, 1, 'oat bar', 'Fitness', '50 mins', 'This is a oat bar recipe.', '2024-06-23 20:20:39', 0, '1 Serving', '6ee3d78a-8dff-41bb-b9c5-6baf99f18e8f'),
(291, 1, 'Pan-seared Ribeye Steak with Bone', 'European', '10 mins', 'This is a Pan-seared Ribeye Steak with Bone recipe.', '2024-06-23 20:20:39', 0, '1 Serving', '65364c64-6c8b-426a-936a-cf8a8c3a07dd'),
(295, 1, 'Western Cream Baked Hairy Crab', 'European', '10 mins', 'This is a Western Cream Baked Hairy Crab recipe.', '2024-06-23 20:20:39', 0, '1 Serving', 'a35abf62-4dc0-4522-b717-f9e738f65764'),
(298, 1, 'Italian Meatball Spaghetti', 'European', '90 mins', 'This is a Italian Meatball Spaghetti recipe.', '2024-06-23 20:20:39', 0, '1 Serving', '15a751ce-4d05-4f43-9357-889e2092d2c0'),
(301, 1, 'Tomahawk Pork Chop', 'European', '> 120 mins', 'This is a Tomahawk Pork Chop recipe.', '2024-06-23 20:20:39', 0, '1 Serving', 'dc9d0dd2-b932-4de9-9395-399af296b991'),
(303, 1, 'Pan-fried flat iron steak', 'European', '30 mins', 'This is a Pan-fried flat iron steak recipe.', '2024-06-23 20:20:39', 0, '1 Serving', '6502ba29-ddbc-4c9c-ab85-704499546f47'),
(304, 1, 'Caesar Salad with Fresh Shrimp and Cheese', 'Fitness', '30 mins', 'This is a Caesar Salad with Fresh Shrimp and Cheese recipe.', '2024-06-23 20:20:39', 0, '1 Serving', 'f646c393-59ca-475f-b77a-c6d7c0802bab'),
(309, 1, 'Japanese tomatoes', 'Japanese', '15 mins', 'This is a Japanese tomatoes recipe.', '2024-06-23 20:20:39', 0, '1 Serving', 'cd231051-8c8f-404d-a602-5290f1761eb2'),
(310, 1, 'Japanese sesame oil rice balls', 'Japanese', '10 mins', 'This is a Japanese sesame oil rice balls recipe.', '2024-06-23 20:20:39', 0, '1 Serving', 'e731aa63-d20c-4973-894e-12498fb4a526'),
(311, 1, 'Chicken breast salad', 'Fitness', '30 mins', 'This is a Chicken breast salad recipe.', '2024-06-23 20:20:39', 0, '1 Serving', '7ba56039-2965-4efc-8ada-54baf5351bf2'),
(314, 1, 'Yakisoba', 'Japanese', '20 mins', 'This is a Yakisoba recipe.', '2024-06-23 20:20:39', 0, '1 Serving', 'dfc97be2-b362-438f-88fc-c704bfde928a'),
(319, 1, 'Japanese Tang Yang Chicken', 'Japanese', '40 mins', 'This is a Japanese Tang Yang Chicken recipe.', '2024-06-23 20:20:39', 0, '1 Serving', '46c161c3-f999-4a64-9be4-10f238522cf4'),
(323, 22, 'qweqwe', 'Italian', '40 mins', 'qwfqwfqw', '2024-06-25 16:06:42', 0, '3 Serving', '102d60a8-e78c-4466-aee4-64741fd74122');

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
(273, 1176, 'egg', '1'),
(273, 1177, 'oil', '1 tbsp'),
(273, 1178, 'mushroom', '1cup'),
(273, 1179, 'bread crumb', '1/4 cup'),
(273, 1180, 'ground plant-based meat', '5 oz'),
(273, 1183, 'instant oats', '3 tbsp'),
(275, 1191, 'Spaghetti', '1 bowl'),
(275, 1193, 'Bella mushrooms', '2 packs'),
(275, 1195, 'white mushrooms', '1 pack'),
(275, 1196, 'white onion', '1'),
(275, 1198, 'cloves garlic', '3'),
(275, 1200, 'spinach ', 'bag'),
(275, 1202, 'vegetable stock', '2 cups'),
(275, 1204, 'heavy cream', '1 cup'),
(275, 1207, 'basil ', '2 tbsp'),
(275, 1210, 'Romano cheese', '1.5 cup'),
(275, 1213, 'oregano', '1 tbsp'),
(275, 1217, 'ranch ', 'squirt'),
(290, 1265, 'sugar', '50g'),
(290, 1266, 'Unsalted butter', '60g'),
(290, 1267, 'Honey', '25g'),
(290, 1268, 'Oats', '50g'),
(290, 1269, 'Mixed grains', '60g'),
(290, 1270, 'Low-gluten flour', '60g'),
(290, 1271, 'Cranberries', '15g'),
(291, 1272, 'ribeye steak', '3 pieces'),
(291, 1273, 'pea shoots', 'appropriate'),
(295, 1293, 'water', '150ml'),
(295, 1295, 'crab', '200g'),
(295, 1297, 'Minced shallots', '8g'),
(295, 1299, 'White wine', '15g'),
(295, 1301, 'pepper', 'some'),
(295, 1302, 'unsalted butter', '5g'),
(295, 1304, 'flour', '5g'),
(301, 1310, 'tomahawk pork chop', '1 piece'),
(301, 1312, 'rosemary', 'small amount'),
(301, 1313, 'honey', '30 ml'),
(303, 1324, 'sea salt', '5g'),
(303, 1326, 'flat iron steak', '3 pieces'),
(309, 1346, 'black pepper', 'little'),
(309, 1347, 'sesame oil', '1 tsp'),
(309, 1348, 'kombu soy sauce', '1 tsp'),
(309, 1349, 'bonito flakes', 'some'),
(311, 1350, 'egg', '1'),
(309, 1351, 'Tomato', '3'),
(311, 1352, 'salt', 'little'),
(311, 1353, 'pepper', 'little'),
(311, 1354, 'Lettuce', '1'),
(311, 1355, 'pitaya', '1'),
(311, 1356, 'Caesar Salad Dressing', 'little'),
(311, 1357, 'chicken breast', '1 peiece'),
(311, 1359, 'Italian Spice', 'little'),
(314, 1370, 'salt', 'little'),
(314, 1371, 'pepper', 'little'),
(314, 1372, 'Oil surface', '150g'),
(314, 1373, 'Vegetables', '125g'),
(314, 1374, 'Thin pork slices', '25g'),
(319, 1390, 'Cornstarch', '2 tsp'),
(319, 1391, 'soy sauce', '2 tsp'),
(319, 1392, 'Chicken thighs', '2 peces'),
(319, 1393, 'Mirin', '1 tsp'),
(319, 1395, 'high-gluten flour', '2 tsp'),
(323, 1408, 'qfwqwf', 'qwfqwf');

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
(273, 1, 'Preheat oven to 425F.'),
(273, 2, ' Combine all ingredients thoroughly. Mould into balls. Place onto baking tray and bake for 15 mins. Rotate. Continue baking for approximately 15 mins.'),
(275, 1, 'Add evoo to pan, add onion, garlic and mushrooms (season with salt, pepper, basil and oregano) add 1 this of butter cook until mushrooms are tender and there is still some slight water in the pan from vegetables'),
(275, 2, 'Add all liquids (stock, cream and squirt of ranch) and Romano cheese'),
(275, 3, 'Should be a bit watery, simmer on low until thickens half way (u want it to be a little watery because you will be adding the pasta and it will soak up the sauce)'),
(275, 4, 'Half way through the sauce cooking start cooking the pasta (al dente) )if u over cook the pasta it will be mush by the time you add it to the sauce and eat it)'),
(275, 5, 'Add spinach to sauce half way through the cooking process of the pasta (if you add it to soon it comes brown and mushy) you want it slightly wilted when u add the pasta to the dish because it is going to continue to cook'),
(275, 6, 'Drain and add pasta to pot (best if both pasta and sauce us hot it mixes better)'),
(290, 1, 'For the mixed grains in the oat bars, you can add them according to your personal preference. However, be mindful of the size and area of the grains. Sometimes, grains with larger volume can result in a looser texture.'),
(290, 2, 'If you find it difficult to shape the bars, you can reduce the amount of grains accordingly. It is important to store the finished oat bars in an airtight container to maintain their crisp texture. They can be stored at room temperature for approximately 2-3 weeks.'),
(290, 3, 'Lastly, the honey used in this recipe is \"lychee honey,\" which adds a delightful sweetness. I highly recommend adding your favorite flavored honey or maple syrup to enhance the aroma of the final product.'),
(291, 1, 'After thawing the ribeye steak, pat it dry and sprinkle some sea salt on it. Let it sit for a moment.'),
(291, 2, 'Heat a pan and sear the steak on both sides until cooked to your desired level of doneness.'),
(291, 3, 'Cook until a nice char develops.'),
(291, 4, 'Use scissors to cut the steak into pieces, and finally, garnish with pea shoots before serving.'),
(295, 1, 'Begin by removing the claws from the hairy crab, then open the shell and extract the crab paste. Use other vegetables and remove the lungs. Place them in a pressure cooker along with an appropriate amount of water. Pressurize for 20 seconds, then turn off the heat and allow the pressure to release naturally. Open the lid and scoop out the crab meat. Use 104g of the soup and reserve 30c for later use.'),
(295, 2, 'Take a small saucepan and add minced shallots, white wine, and black pepper. Bring it to a boil to release the aroma. Then add the crab meat from step 1 and stir-fry until the sauce thickens. Turn off the heat and set it aside.'),
(295, 3, 'In another pot, melt unsalted butter over low heat. Add flour and stir-fry, then remove from heat and mix in dashi made from kombu and bonito flakes. Stir in the crab soup from step 1.'),
(295, 4, 'Place the pot back on low heat and heat until it boils. Turn off the heat and stir in the crab meat mixture from step 2.'),
(295, 5, 'Pour the mixture into a heat-resistant dish of your choice and place it in a preheated oven at 180 degrees Celsius for about 10 minutes until the surface turns golden brown.'),
(301, 1, 'Massage the pork chop with honey and let it marinate in the refrigerator for approximately 6 hours.'),
(301, 2, 'Place the marinated pork chop in the oven and bake at 280 degrees Celsius for 15 minutes. Add rosemary on top and continue baking for a fragrant aroma.'),
(303, 1, 'Ingredient preparation: After thawing the winged steak, let it sit at room temperature for about 30 minutes.'),
(303, 2, 'Heat the pan (until it smokes) and quickly sear the steak on both sides to seal in the juices. Allow each side to cook for about 90 seconds. At this point, you can reduce the heat to medium-low and repeat the process 4-5 times, depending on your preferred level of doneness. The firmer the steak feels, the more well-done it is. Adjust according to personal preference.'),
(303, 3, 'Place the cooked steak on a hot plate and let it rest for 10 minutes before slicing and serving. Sprinkle with sea salt for seasoning.'),
(309, 1, 'After making cross marks on the skin of the beef tomatoes, boil a pot of boiling water, add the tomatoes and blanch them for 30 seconds, then take them out.'),
(309, 2, 'Tear off the tomato skin from the knife and then slice the tomatoes'),
(309, 3, 'Place the tomato slices on a plate, drizzle with kombu soy sauce, sprinkle with some black pepper, drizzle with some sesame oil, and sprinkle with some bonito flakes.'),
(311, 1, 'Cut the front and back of the chicken breast horizontally and marinate with salt for 5 minutes.'),
(311, 2, 'Turn the chicken breast over and sprinkle with pepper and Italian spices Fry for 5-8 minutes until the surface is golden brown, then take it out and let it cool and cut into pieces (in the process of frying meat, you can start to boil boiled eggs to save time~)'),
(311, 3, 'Hard-boiled egg cut in half Put your favorite lettuce and drizzle with your favorite salad dressing! A delicious and healthy salad is ready! If you want to be a little healthier, you can also use yogurt instead'),
(314, 1, 'Place the pork slices on the steam grill pan and sprinkle with salt and pepper'),
(314, 2, 'Put other ingredients into a plastic bag (the oil noodles are commercially available fried noodles with sauce), mix well with 2T of water, and pour it on the meat slices'),
(314, 3, 'Put the upper lid into the furnace, enter No.141 to heat, and mix evenly after heating.'),
(319, 1, 'Marinate chicken thighs with soy sauce and mirin for 15 minutes'),
(319, 2, 'Mix the flour evenly and dip the chicken in the flour'),
(319, 3, 'Add oil to a height of about 1 cm in the pan. Heat the oil and fry the chicken until it is slightly brown. Turn over and fry until it turns golden brown and serve on a plate.'),
(323, 1, 'qwf');

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
(1, 'admin', 'admin@flavoury.com', 'admin123', '024917d2-78ef-40aa-ba25-34926e4cb7bc'),
(11, 'matthew', 'matt@gmail.com', '$2y$10$3JhG22br.Nz6Z0yM7EbmFe0kk/qyB2P.0Sozr3TMcdna8.wRnr4J6', NULL),
(12, 'here', 'here@gmail.com', '$2y$10$cc6hgPUatUJ06OG8lLLLKugNYPwXQs3Aek3Cy2xGXbvb/wQInJKj2', NULL),
(14, 'testuser123', 'testuser123@email.com', '$2y$10$92zEuXx0YPYJyu0JFRarJe/2LqXij4z7SauQA5OllAJ5NYnp3EuYS', NULL),
(16, 'testuser1234', 'testuser1234@email.com', '$2y$10$LloMunRphJ1L9dPOqeez7Oweyy4Yr5ujRLjUrakvLiVo1FO7f9IJa', NULL),
(17, 'testuser12345', 'testuser12345@email.com', '$2y$10$72Xg.J/RgwRQiw/pyluT2e4efi9PkOCWAmaekvyPwhouphV6ThI4u', NULL),
(19, 'Matthew1', 'Matthew1@gmail.com', '$2y$10$xtrfNHC2WPpKJSTGH7gP0O//W39py8Qjl9rkKa8tzhYHK86FFg0r2', NULL),
(21, '123', 'test@gmail.com', '$2y$10$tRssoyWxPD9p8qXE2mrTn.ASiDxu1dfwnZ2JtSMAfg16X/L9Kor.O', '024917d2-78ef-40aa-ba25-34926e4cb7bc'),
(22, 'ron', 'testing@gmail.com', '$2y$10$HCkOtxT/CXeDlGEDy0vZcOecd6YwC0/ohmaxaOhBCTKcL6wX029GC', '469e0fe2-7f7a-40be-820b-619c1ac72bcb'),
(23, 'matthew2', 'matthew2@gmail.com', '$2y$10$ke0ekhY.R.TQcP9P8B8wbOFt3B6OrFOSDmPwPVtTmI3QJRHHmRhRi', 'fed46a83-3b63-444e-9702-66f131e68f14'),
(24, '', '', '$2y$10$nTa4WyVnGaFWAXWizcTWnejNoi8gMo8tyCBNgcLnxse9Jdd.iG9YK', 'e155c87d-9f84-4b5f-bc08-7757ce88ec80'),
(25, 'r', 'r@gmail.com', '$2y$10$V3LH8FP6y.00bEMk2wcs/ONJJQOnODuvChiQ5fpFp01wJ28a1YPem', 'a797a66a-91df-4e5c-95a7-0919fa99d17f'),
(26, 'Toby', 'nokhimyu@gmail.com', '$2y$10$g68j8bRP.eZocuULNGzCh.3vPfjpcKwhPDsit/d2BkmLwWDzLfIbG', '1a0e106c-0401-4289-83c5-8018abc8e18b'),
(27, 'r123', 'ron123@gmail.com', '$2y$10$AtjUh9DSOzuWKBaaUCkKveoqTCVubjwivv7ug5kdjpZVsAyo6IEMG', '76ed0285-c15e-4b5c-878f-73659918444d'),
(28, 'ron123456', 'ron123456@gmail.com', '$2y$10$kx8fvkRYzyKNY37atuC/9uQrgco3x/RoZ6PIEKCBEESDOBeW57alu', '6c3d51ed-dbef-42bd-9532-f8e7f47411f9');

-- --------------------------------------------------------

--
-- 資料表結構 `userfollow`
--

CREATE TABLE `userfollow` (
  `Uid` int(10) NOT NULL,
  `Followid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `userfollow`
--

INSERT INTO `userfollow` (`Uid`, `Followid`) VALUES
(19, 22),
(22, 1),
(22, 12);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`Uid`,`Rid`),
  ADD KEY `bookmark_fk2` (`Rid`);

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
  MODIFY `Rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipeingredient`
--
ALTER TABLE `recipeingredient`
  MODIFY `Iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1409;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `bookmark`
--
ALTER TABLE `bookmark`
  ADD CONSTRAINT `bookmark_fk1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`),
  ADD CONSTRAINT `bookmark_fk2` FOREIGN KEY (`Rid`) REFERENCES `recipe` (`Rid`);

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
