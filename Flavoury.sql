-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-05 15:45:30
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `flavoury`
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

--
-- 傾印資料表的資料 `bookmark`
--

INSERT INTO `bookmark` (`Uid`, `Rid`, `CreateDate`) VALUES
(22, 275, '2024-06-29 23:22:48');

-- --------------------------------------------------------

--
-- 資料表結構 `likerecipe`
--

CREATE TABLE `likerecipe` (
  `Uid` int(11) NOT NULL,
  `Rid` int(11) NOT NULL,
  `likedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `likerecipe`
--

INSERT INTO `likerecipe` (`Uid`, `Rid`, `likedate`) VALUES
(11, 304, '2024-07-04 12:46:17');

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
(273, 1, 'Vegetarian Mushroom Meatballs', 'Vegan', '40 mins', 'This is a Vegetarian Mushroom Meatballs recipe.', '2024-06-23 20:15:52', 1, '1 Serving', 'd80f4955-8dfb-4abe-b847-7a42bc1866fc'),
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
(332, 31, 'Chocolate Lava Cakes', 'Dessert', '20 mins', 'This is a Chocolate Lava Cakes recipe, it\'s easy to make within just 20mins.A great entry level dessert.', '2024-07-04 22:52:08', 0, '4 Serving', '9697e264-c75e-48d9-a509-f1e1f5223d02'),
(333, 31, 'Mango Sticky Rice', 'Dessert', '30 mins', 'This is a Mango Sticky Rice recipe. Total cooking time is 9hr 15min(includes overnight soaking) with a amount of serving. It\'s easy to make.', '2024-07-04 23:00:23', 0, '>5 Serving', '9bc9c38f-fccb-42f9-b34c-a7c30bf3746c'),
(334, 31, 'Creme Brulee', 'Dessert', '50 mins', 'This Creme Brulee Recipe is incredibly smooth and creamy with a delicate layer of caramelized sugar on top. This sweet treat is perfect for any occasion.', '2024-07-04 23:03:52', 0, '>5 Serving', 'e7b6a7ca-8f67-4049-8a5b-b5dfbd56a71e'),
(335, 31, 'CLASSIC TIRAMISU', 'Dessert', '>120 mins', 'This classic dessert never goes out of style.', '2024-07-04 23:10:16', 0, '1 Serving', '36be54c2-aa11-4680-806d-5b0c67afe67a'),
(336, 31, 'Kung Pao Chicken', 'Chinese', '40 mins', 'A copycat version of my favorite take-out dish, this Kung Pao Chicken recipe includes stir-fried chicken, peanuts, and green onion in a delicious sweet and spicy kung pao sauce, served over hot cooked rice.', '2024-07-04 23:13:54', 0, '4 Serving', 'af74180a-b17c-4f38-9797-b0513d0d4ef7'),
(337, 31, 'STEAMED BBQ PORK BUNS (CHAR SIU BAO)', 'Chinese', '>120 mins', 'This Chinese Steamed BBQ Pork Buns (Char Siu Bao) recipe unlocks the secret to the perfect steamed pork bun just like you get at the dim sum restaurant.', '2024-07-04 23:18:41', 0, '>5 Serving', '312c3b90-c90f-4969-ad28-c1e7a6c121f0'),
(338, 31, 'Beef and Broccoli Stir Fry', 'Chinese', '20 mins', 'As with any stir fry, this beef and broccoli is quick and easy to make. It\'s a perfect replacement for take out and will be on the table long before delivery arrives!', '2024-07-04 23:22:24', 0, '4 Serving', 'a58b41d4-88ae-4e81-b747-aaed75b83b10'),
(339, 31, 'Moroccan-spiced shepherd’s pie recipe', 'European', '60 mins', 'This unique riff on a classic shepherd\'s pie makes for an excellent dinner option when you\'re on your own and feel like getting experimental in the kitchen', '2024-07-04 23:26:49', 0, '1 Serving', '7cc319b0-aa67-412e-9a91-6439ccb6d808'),
(340, 31, 'Slow-cooker beef bourguignon', 'European', '>120 mins', 'Achieve rich and deep flavours for your beef bourguignon by browning the meat and caramelising the veg. Slow-cooking this dish allows the flavours to melt together, creating an intensely savoury flavour', '2024-07-04 23:30:48', 0, '4 Serving', '6ecd440f-b381-4bd5-a713-d41be58fe599'),
(341, 31, 'Ratatouille', 'European', '50 mins', 'Enjoy this super-healthy traditional ratatouille recipe for lunch or dinner, safe in the knowledge that it counts as four of your five-a-day', '2024-07-04 23:33:20', 0, '4 Serving', '2e5a3d4b-77e0-4300-9367-64c8799dc2c0'),
(342, 31, 'Salmon with Asparagus', 'Fitness', '40 mins', 'Easy. Weeknight. One-Pan. Salmon. That\'s what you need to know about the recipe we keep coming back to time after time. ', '2024-07-04 23:38:14', 0, '2 Serving', '38070c5a-7a96-4f8a-9f2d-1c24760fbb36'),
(343, 31, 'Garlic Butter Chicken and Broccoli (20 Minutes!)', 'Fitness', '20 mins', 'Chicken and broccoli cooked in a garlic butter sauce all in one pan in just 20 Minutes! This filling nutritious meal can be served with rice, bread, or as is for a tasty low-carb dinner at just 5 net carbs per serving!', '2024-07-04 23:41:17', 0, '4 Serving', 'ae548873-2662-4727-b2a8-ba7c5dcb917f'),
(344, 31, 'Overnight Oats', 'Fitness', '20 mins', 'Learn how to make overnight oats! This healthy, make-ahead breakfast is easy to customize. Try one of the variations in the recipe below, or experiment with your own combinations of mix-ins and toppings.', '2024-07-04 23:47:09', 0, '1 Serving', 'bf582455-892f-49fb-98c1-4a22af319741'),
(345, 31, 'Classic French coq au vin', 'French', '60 mins', '\"This recipe has been updated to improve your cooking experience (November 2023). This classic French coq au vin is a very special recipe for Kitchen Stories, not only because it’s incredibly delicious, but also because it was the very first Kitchen Stories recipe ever published. Filmed in 2013 in a rented cottage somewhere in Germany, the French classic quickly emerged as one of the crowd favorites on Kitchen Stories and still stands out among our ever growing collection of recipes. While we\'ve had plenty of other coq au vin variations floating around in our heads over the years (check out our coq au riesling made with white wine, for example), this one-pot recipe holds a very special place in our hearts (and stomachs!) Serve with mashed potato, crusty bread or thick cut tagliatelle noodles for wholesome, comforting dinner.\"', '2024-07-04 23:51:07', 0, '2 Serving', '5946418c-c7d8-4bd0-ac80-1119668cad80'),
(346, 31, 'Boeuf Bourguignon', 'French', '>120 mins', 'This classic French winter warmer isn’t as complicated as you’d think. This simple 2.5 hour recipe will be a favourite in no time.', '2024-07-04 23:53:44', 0, '>5 Serving', '4cbd830d-e25e-43bd-aa75-8137afad458f'),
(347, 31, 'Slow Roasted Ratatouille', 'French', '>120 mins', 'An amazingly delicious recipe for ratatouille that is slow-roasted – a perfect way to pack plenty of vegetables onto your dinner plate! You will LOVE this!', '2024-07-04 23:58:15', 0, '>5 Serving', 'c30290ab-b0c6-4e8c-ade9-fd0292173741'),
(348, 31, 'Pasta With Preserved Tomato Sauce', 'Italian', '>120 mins', 'A unique pasta sauce made from marinading canned tomatoes in spices and citrus peel.', '2024-07-05 00:02:50', 0, '>5 Serving', '71804ff2-8509-4ef8-b642-2c003e688e7c'),
(349, 31, 'Altamura Focaccia', 'Italian', '>120 mins', 'A regional flatbread from the heart of Puglia.', '2024-07-05 00:09:15', 0, '>5 Serving', 'fe725966-bd48-4197-ab09-2884175a75ed'),
(350, 31, 'Veal And Ricotta Meatballs In Spicy Tomato Sauce', 'Italian', '60 mins', 'Meatballs can be made of many things, including bread, ricotta cheese, or a variety of ground meats. I learned from my Mother-In-Law that by cooking meatballs in the sauce, you create a much more tender, juicy meatball so I generally follow that rule.', '2024-07-05 00:12:54', 0, '>5 Serving', '96da0ce8-2f40-435c-b3e6-c19299cf1968'),
(351, 31, 'Omurice (Omelette Rice)', 'Japanese', '50 mins', 'With savory tomato ketchup fried rice wrapped in a soft and thin omelette, Omurice or Omelette Rice is a Western-influenced Japanese dish that‘s popular among Japanese of all ages. This easy recipe is inspired by the Japanese drama Midnight Diner.', '2024-07-05 00:19:16', 0, '2 Serving', 'c3be92f5-b81e-44ae-b99a-02d108b0f3a5'),
(352, 31, 'Chicken katsu don', 'Japanese', '60 mins', 'Ice-cold beer and chicken katsu don – doesn’t get much better! I like to serve my katsu with some chilli oil for a kick of heat\r\n', '2024-07-05 00:23:48', 0, '1 Serving', '1f3a9674-460b-44fc-a8f7-f19cf8aa452e'),
(353, 31, 'Beef Miso Ramen', 'Japanese', '30 mins', 'This flavorful bowl of miso ramen is full of delicious flavors that will make your palate sing! If you\'ve been dreaming of Japanese cuisine, this is the perfect meal for you. Add a hard-boiled egg, mushrooms, spicy chili oil, or toppings of your choice.', '2024-07-05 00:26:25', 0, '2 Serving', '6932310b-45ef-4a2d-b8db-dc17110a076d'),
(354, 31, 'Classic Korean Bibimbap', 'Korean', '70 mins', 'Bibimbap is arguably one of the most well-known Korean dishes around the world. What makes this meal stand out? Not only is it a Korean classic, but it\'s also delicious, beautifully colorful, and easily tweaked for endless variations.', '2024-07-05 00:31:32', 0, '4 Serving', 'c2ea38a3-480c-4290-a7b7-f4cf16db0555'),
(355, 31, 'Kimchi Potato Pancakes', 'Korean', '30 mins', 'Kimchi Potato Pancakes. Crispy, savoury potato pancakes packed with umami-tasting kimchi! This is a great side dish, snack or appetizer idea. An easy 5-ingredient recipe.', '2024-07-05 00:33:46', 0, '>5 Serving', '3975eb1b-7ba9-45f1-8845-017b3bd71077'),
(356, 31, 'Jajangmyeon (Korean Black Bean Noodles)', 'Korean', '30 mins', 'Thick wheat noodles in a savory black bean sauce with pork belly, onions, cabbage, zucchini, and cucumbers. This quick and easy Jajangmyeon is restaurant quality, saves you money on takeout and is great for the whole family to enjoy!\r\n', '2024-07-05 00:36:57', 0, '3 Serving', '4e17298a-fd52-4611-b629-e033aa73b329'),
(357, 31, 'Quinoa Cakes with Tomato Chickpea Relish', 'Vegan', '80 mins', 'Quinoa Cakes with Tomato Chickpea Relish- a delicious, healthy, flavorful plant-based vegan dinner that is gluten-free. Please watch the how-to video to see how to get the quinoa to “clump”.', '2024-07-05 00:41:41', 0, '4 Serving', 'a2360fa8-5ee5-43f1-bf31-f4198176a0b2'),
(358, 31, 'Szechuan Tofu and Veggies', 'Vegan', '30 mins', 'Szechuan Tofu and Veggies! A flavorful vegan stir-fry with crispy tofu, szechuan sauce and loaded up with healthy vegetables! Quick, easy and flavorful!!!\r\n', '2024-07-05 00:44:41', 0, '2 Serving', '62b58e26-4390-4719-9010-7025a16ca88b'),
(359, 31, 'Turmeric Broth Detox Soup {Ayurvedic + Healing}', 'Vegan', '30 mins', 'Turmeric Broth Detox Soup – a naturally healing, soothing and comforting, Ayurvedic soup that is very customizable to your needs. Vegan and GF adaptable!\r\n\r\n', '2024-07-05 00:48:00', 0, '1 Serving', 'd9f7d284-9e92-4dd2-916d-a3e558020439'),
(360, 31, 'EASY BEEF MASSAMAN CURRY (RICH & AUTHENTIC FLAVOR)', 'Southeast Asia', '70 mins', 'Thai Beef Massaman Curry is perfect for Busy Weeknights. This easy recipe brings together the convenience of store-bought massaman curry paste with the rich, authentic flavors of traditional home cooking.\r\n', '2024-07-05 00:50:43', 0, '4 Serving', '7a61ad84-f8d2-42a8-98ce-d33ebb99a2ae'),
(361, 31, 'VIETNAMESE MANGO SHRIMP SALAD (GỎI XOÀI)', 'Southeast Asia', '30 mins', 'This beautiful Vietnamese mango shrimp salad serves as a simple lunch or as a side salad to any Asian main dish.\r\n', '2024-07-05 00:52:57', 0, '4 Serving', '7df892c3-5b66-40b3-89b6-35cffbce5728'),
(362, 31, 'AUTHENTIC THAI BASIL BEEF (PAD GRA PROW)', 'Southeast Asia', '20 mins', 'This authentic Thai basil beef (Pad Gra Prow) features thinly sliced beef stir-fried with garlic, chili, and Thai basil for a tasty and aromatic experience.\r\n', '2024-07-05 00:55:17', 0, '4 Serving', 'b23611c0-477f-49bd-8653-3932adb75c17');

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
(332, 1413, 'Baking spray', 'for spraying custard cups'),
(332, 1414, 'butter', '1 stick'),
(332, 1415, 'bittersweet chocolate', '2 ounces'),
(332, 1416, 'semisweet chocolate', '2 ounces'),
(332, 1417, 'powdered sugar', '1 1/4 cups'),
(332, 1418, 'whole eggs', '2'),
(332, 1419, 'egg yolks', '3'),
(332, 1420, 'vanilla', '1 teaspoon'),
(332, 1421, 'all-purpose flour', '1/2 cup'),
(332, 1422, 'Vanilla ice cream', 'for serving'),
(333, 1423, 'glutinous rice', '2 cups'),
(333, 1424, 'coconut milk', '1 1/2 cups'),
(333, 1425, 'sugar', '1/3 cup'),
(333, 1426, 'salt', '1/4 teaspoon'),
(333, 1427, 'cornstarch', '2 teaspoons'),
(333, 1428, 'mangoes, pitted, peeled and cut into 1-inch pieces', '3 large'),
(334, 1429, 'egg yolks', '5'),
(334, 1430, 'granulated sugar plus extra for the top', '1/3 cup'),
(334, 1431, 'salt', 'pinch of'),
(334, 1432, 'heavy cream', '2 cups'),
(334, 1433, 'good quailty vanilla extract', '1 tsp'),
(335, 1434, 'large egg yolks', '3'),
(335, 1435, 'granulated sugar', '1/2 cup'),
(335, 1436, 'Marsala wine, champagne, or dry white wine', '3 tablespoon'),
(335, 1437, 'mascarpone', '8 oz'),
(335, 1438, 'heavy cream', '1 cup'),
(335, 1439, 'Kahlúa', '1/4 cup'),
(335, 1440, 'espresso or strongly brewed coffee', '2 cups'),
(335, 1441, 'savoiardi or ladyfingers', '28'),
(336, 1442, 'boneless skinless chicken breasts , cut into small pieces', '1 1/2 pounds'),
(336, 1443, 'olive oil', '3 Tablespoons'),
(336, 1444, 'crushed red pepper flakes (or more to increase spiciness)', '1 teaspoon'),
(336, 1445, 'dry roasted peanuts', '1/2 cup'),
(336, 1446, 'freshly grated ginger', '1 teaspoon'),
(336, 1447, 'green onions chopped', '2'),
(336, 1448, 'red bell pepper , chopped', '1'),
(336, 1449, 'whole dried Szechuan Peppers , optional', '6'),
(336, 1450, 'large egg white', '1'),
(337, 1451, 'active dry yeast', '1 teaspoon'),
(337, 1452, 'warm water', '3/4 cup'),
(337, 1453, 'all-purpose flour', '2 cups'),
(337, 1454, 'cornstarch', '1 cup'),
(337, 1455, 'sugar', '5 tablespoons'),
(337, 1456, 'canola or vegetable oil', '1/4 cup'),
(337, 1457, 'baking powder', '2 1/2 teaspoons'),
(337, 1458, 'oil', '1 tablespoon'),
(337, 1459, 'sugar', '1 tablespoon'),
(337, 1460, 'shallots or red onion (finely chopped)', '1/3 cup'),
(337, 1461, 'light soy sauce', '1 tablespoon'),
(337, 1462, 'oyster sauce', '1 1/2 tablespoons'),
(337, 1463, 'sesame oil', '2 teaspoons'),
(337, 1464, 'dark soy sauce', '2 teaspoons'),
(337, 1465, 'chicken stock', '1/2 cup'),
(337, 1466, 'all purpose flour', '2 tablespoons'),
(337, 1467, 'diced Chinese roast pork', '1 1/2 cups'),
(338, 1468, 'flank steak or top round sirloin steak sliced into thin, 3-inch long strips', '1 1/2 POUNDS'),
(338, 1469, 'cornstarch', '2 TABLESPOONS'),
(338, 1470, 'water', '2 TABLESPOONS'),
(338, 1471, 'Vegetable oil', 'Appropriate'),
(338, 1472, 'onion sliced', '1/2'),
(338, 1473, 'red pepper cut into strips', '1'),
(338, 1474, 'Stir Fry Sauce a double batch', '1 1/2 CUPS '),
(338, 1475, 'head broccoli cut into florets', '1'),
(338, 1476, 'Rice', 'for serving'),
(338, 1477, 'Sesame seeds', 'for garnish'),
(339, 1478, 'vegetable oil', '1/2 tbsp '),
(339, 1479, 'pack lamb mince', '1/2 250g '),
(339, 1480, 'onion, finely chopped', '1'),
(339, 1481, 'garlic cloves, crushed', '2'),
(339, 1482, 'ground cumin', '1 tsp'),
(339, 1483, 'ground cinnamon', '1 tsp'),
(339, 1484, 'tomato purée', '1 tbsp'),
(339, 1485, 'chicken stock cube, made up to 300ml', '1'),
(339, 1486, 'frozen garden peas', '50g'),
(339, 1487, 'coriander, finely chopped', '15g'),
(339, 1488, 'medium sweet potato, peeled and cut into 2cm chunks', '1'),
(339, 1489, 'Tenderstem broccoli', '100g'),
(340, 1490, 'vegetable oil', '3-4 tbsp'),
(340, 1491, 'smoked lardons', '200g'),
(340, 1492, 'medium onion, finely chopped', '1'),
(340, 1493, 'celery sticks, finely chopped', '3'),
(340, 1494, 'large garlic cloves, minced', '2'),
(340, 1495, 'bay leaves', '2'),
(340, 1496, 'sprigs of thyme', '6'),
(340, 1497, 'sprigs of rosemary', '2'),
(340, 1498, 'flat-leaf parsley, stalks and leaves finely chopped', '20g'),
(340, 1499, 'tomato purée', '1 tbsp'),
(340, 1500, 'red wine (we used pinot noir)', '750ml'),
(340, 1501, 'braising steak, cut into 5cm chunks', '1kg'),
(340, 1502, 'plain flour', '3 tbsp'),
(340, 1503, 'large carrots, peeled and cut into 5cm chunks', '2'),
(340, 1504, 'chestnut mushrooms, cut in half if large', '250g '),
(340, 1505, 'round shallots, peeled', '12'),
(340, 1506, 'mashed potato or tagliatelle', 'to serve'),
(341, 1507, 'large aubergines', '2'),
(341, 1508, 'small courgettes', '4'),
(341, 1509, 'red or yellow peppers', '2'),
(341, 1510, 'large ripe tomatoes', '4'),
(341, 1511, 'tbsp olive oil', '5'),
(341, 1512, 'bunch basil', 'small'),
(341, 1513, 'medium onion, peeled and thinly sliced', '1'),
(341, 1514, 'garlic cloves, peeled and crushed', '3'),
(341, 1515, 'red wine vinegar', '1 tbsp'),
(341, 1516, 'sugar (any kind)', '1 tsp'),
(342, 1517, 'salmon fillets, 3/4-to-1-inch thick', '2 (6-to-8-oz. each) '),
(342, 1518, 'Hy-Vee Select 100% pure maple syrup', '2 tbsp'),
(342, 1519, 'red miso paste', '1 tbsp'),
(342, 1520, 'seasoned rice vinegar', '1 1/2 tsp'),
(342, 1521, 'refrigerated ginger paste', '1 tsp'),
(342, 1522, 'refrigerated garlic paste', '1/4 tsp'),
(342, 1523, 'asparagus spears, about 1-lbs.', '16'),
(342, 1524, 'Gustare Vita olive oil', '1 tbsp'),
(342, 1525, 'Orange slices', ' halved, for garnish'),
(342, 1526, 'Fresh Italian parsley, chopped', 'for garnish'),
(343, 1527, 'chicken breast', '2 medium or 1 pound'),
(343, 1528, 'EACH salt, garlic powder, or oregano', '1 teaspoon'),
(343, 1529, 'EACH black pepper, chili powder', '1 /2 teaspoon'),
(343, 1530, 'olive oil', '1 tablespoon'),
(343, 1531, 'butter, divided', '1/4 cup'),
(343, 1532, 'cloves garlic minced', '3-4'),
(343, 1533, 'Italian seasoning', '1 teaspoon'),
(343, 1534, 'crushed pepper', '1/2 teaspoon '),
(343, 1535, 'broccoli florets, or broccolini', '3-4 cups'),
(343, 1536, 'water or chicken stock', '1/4 cup '),
(343, 1537, 'lemon juice', '1 tablespoon'),
(343, 1538, 'juice of  lemon', 'or 1/2'),
(344, 1539, 'whole rolled oats', '1/2 cup '),
(344, 1540, 'tablespoon chia seeds', '1'),
(344, 1541, 'maple syrup, plus more for serving', '1/2 teaspoon '),
(344, 1542, 'sea salt', 'Pinch of'),
(344, 1543, 'whole milk Greek yogurt, optional', '1/4 cup '),
(344, 1544, 'unsweetened almond milk', '2/3 cup '),
(344, 1545, 'unsweetened applesauce', '2 tablespoons'),
(344, 1546, 'cinnamon or apple pie spice', '1/4 teaspoon'),
(344, 1547, 'diced apple', 'a few'),
(344, 1548, 'peach slices', 'a few'),
(344, 1549, 'granola', '1'),
(344, 1550, 'peanut butter', '1 scope'),
(344, 1551, 'raspberries', 'a few'),
(344, 1552, 'banana, mashed', '1/2'),
(344, 1553, 'cocoa powder', '1 teaspoon'),
(344, 1554, 'cinnamon', '1/4 teaspoon'),
(344, 1555, 'nutmeg', 'Pinch'),
(344, 1556, 'chopped walnuts', 'a few'),
(345, 1557, 'chicken legs', '2'),
(345, 1558, 'bacon', '3 strips'),
(345, 1559, 'shallots', '5'),
(345, 1560, 'button mushrooms', '100g'),
(345, 1561, 'waxy potatoes', '200g'),
(345, 1562, 'carrots', '2'),
(345, 1563, 'butter', '1 tbsp'),
(345, 1564, 'tomato paste', '1 tbsp'),
(345, 1565, 'red wine', '400 ml'),
(345, 1566, 'chicken stock', '350 ml'),
(345, 1567, 'bay leaf', '1'),
(345, 1568, 'thyme', '2 sprigs'),
(345, 1569, 'rosemary', '1 sprig'),
(345, 1570, 'starch, salt, pepper, oil (for frying)', '2 tbsp'),
(346, 1571, 'tenderised steak, cut into chunks', '1kg (2lb)'),
(346, 1572, 'onions, chopped', '2'),
(346, 1573, 'full flavoured red wine', '600ml (1 pint)'),
(346, 1574, 'garlic cloves, chopped', '3'),
(346, 1575, 'sprigs of thyme', 'Several'),
(346, 1576, 'butter', '25g'),
(346, 1577, 'smoked bacon lardons', '175g'),
(346, 1578, 'plain flour', '2 tablespoons'),
(346, 1579, 'brandy', '2 tablespoons'),
(346, 1580, 'baby onions or shallots (spring onions),', '375g'),
(346, 1581, 'button mushrooms', '200g'),
(346, 1582, 'Salt and pepper', 'pinch of'),
(346, 1583, 'chopped flat leaf parsley', 'for garnish'),
(347, 1584, 'onion , chopped', '1'),
(347, 1585, 'carrots , chopped', '2'),
(347, 1586, 'celery stalks , chopped', '2'),
(347, 1587, 'garlic , minced', '1 tablespoon'),
(347, 1588, 'red bell pepper', '1'),
(347, 1589, 'poblano pepper', '1'),
(347, 1590, 'chili peppers', '2'),
(347, 1591, 'crushed tomatoes', '28 oz '),
(347, 1592, 'basil leaves', 'handful'),
(347, 1593, 'salt', '1 teaspoon'),
(347, 1594, 'pepper', '1/2 teaspoon'),
(347, 1595, 'herb de Provance', '1 teaspoon'),
(347, 1596, 'Japanese eggplants sliced thinly', '2'),
(347, 1597, 'Roma tomatoes sliced thinly', '6'),
(347, 1598, 'yellow squash sliced thinly', '2'),
(347, 1599, 'green zucchini sliced thinly', '2'),
(347, 1600, 'tablespoons olive oil', '2'),
(347, 1601, ' cloves garlic minced', '1 or 2'),
(347, 1602, 'thyme leaves chopped ', '1 teaspoon'),
(347, 1603, 'salt and pepper to taste', 'pinch of'),
(348, 1604, 'Cans San Marzano Tomatoes', 'Four (28 Ounce)'),
(348, 1605, 'Sugar', '4 1/2 Teaspoons'),
(348, 1606, 'Salt & Pepper To Taste', 'A Pinch Of'),
(348, 1607, 'Fennel Seeds', '1 Tablespoon'),
(348, 1608, 'Coriander Seeds', '1 Tablespoon'),
(348, 1609, 'Chili Flakes', '1/2 Teaspoon'),
(348, 1610, 'Extra Virgin Olive Oil', '2 Cups'),
(348, 1611, 'Garlic Cloves, Peeled, 2 Crushed, 5 Thinly Sliced', '7'),
(348, 1612, 'Two Medium Lemons Rind', 'Strips From'),
(348, 1613, 'Small Orange Rind', 'Strips of 1'),
(348, 1614, 'Sprigs Basil', '2'),
(348, 1615, 'Pound Pasta of Choice', '1'),
(349, 1616, 'Bread Flour', '5 1/2 Cups'),
(349, 1617, 'Rapid Rise Yeast', '1 1/2 Tablespoons'),
(349, 1618, 'Sea Salt', '1 Teaspoon'),
(349, 1619, 'Olive Oil Plus Extra For Drizzling', '2 Tablespoons'),
(349, 1620, 'Ripe Cherry Tomatoes', '2 Cups'),
(349, 1621, 'Small Red Onion, Finely Sliced', '1'),
(349, 1622, 'Halved Kalamata Olives', '1 Cup'),
(349, 1623, 'Coarse Sea Salt', '1 Teaspoon'),
(350, 1624, 'Ground Veal', '1 Pound'),
(350, 1625, 'Whole Milk Ricotta Cheese', '1/2 Cup'),
(350, 1626, 'Parmesan Cheese', '1 Cup'),
(350, 1627, 'Homemade Soft Breadcrumbs', '1/2 Cup'),
(350, 1628, 'Large Egg', '1'),
(350, 1629, 'Garlic Clove, Finely Minced', '1'),
(350, 1630, 'Salt & Pepper To Taste', 'Pinch Of'),
(350, 1631, 'Finely Chopped Parsley', '3 Tablespoons'),
(350, 1632, 'Olive Oil', '3 Tablespoons'),
(350, 1633, 'Finely Chopped Onions', '1/3 Cup'),
(350, 1634, 'Garlic Cloves, Minced', '3'),
(350, 1635, 'Can Chopped Tomatoes', '1 (28 Ounce)'),
(350, 1636, 'Dried Oregano', '1 Teaspoon'),
(350, 1637, 'Red Pepper Flakes', '1/2 Teaspoon'),
(350, 1638, 'Chopped Fresh Basil', '1/3 Cup'),
(351, 1639, 'onion (2.1 oz, 60 g)', '1/4'),
(351, 1640, 'mushrooms (1.8 oz, 50 g)', '4'),
(351, 1641, 'ham (2.8 oz, 80 g; or 2 thick slices)', '4 slices'),
(351, 1642, 'neutral oil', '1 tbsp'),
(351, 1643, 'green peas (defrosted and drained, if frozen)', '3 tbsp'),
(351, 1644, 'Diamond Crystal kosher salt', '1/8 tsp'),
(351, 1645, 'freshly ground black pepper', '1/8 tsp'),
(351, 1646, 'cooked Japanese short-grain rice (cooled or day old; frozen cooked rice works well)', '2 cups'),
(351, 1647, 'unsalted butter (divided)', '2 tbsp'),
(351, 1648, 'ketchup', '3 tbsp'),
(351, 1649, 'tomato paste', '3 tbsp'),
(351, 1650, 'water', '2 tbsp'),
(351, 1651, 'large eggs (50 g each w/o shell) (divided)', '4'),
(351, 1652, 'milk', '2 tbsp'),
(352, 1653, 'sushi rice', '1 1/2 cups (330g)'),
(352, 1654, 'free-range chicken breasts', '2 small (about 500g)'),
(352, 1655, 'eggs', '4'),
(352, 1656, 'plain flour', '1/2 cup (75g)'),
(352, 1657, 'panko breadcrumbs', '1 1/2 cups (75g)'),
(352, 1658, 'red miso paste', '1 tbs'),
(352, 1659, 'Sunflower oil, to shallow fry', 'appropriate'),
(352, 1660, 'long green shallots, white part finely chopped, green part shredded', '4'),
(352, 1661, 'Shredded toasted nori sheets & black sesame seeds, to serve', 'appropriate'),
(352, 1662, 'sunflower oil', '1 tbs'),
(352, 1663, 'rice wine vinegar', '2 tbs'),
(352, 1664, 'sesame oil', '2 tsp'),
(352, 1665, 'wombok cabbage (about 325g), shredded', '1/4'),
(353, 1666, 'beef sirloin steak', '1 (8 ounce)'),
(353, 1667, 'gluten-free soy sauce (tamari)', '½ cup'),
(353, 1668, 'coconut oil', '1 teaspoon'),
(353, 1669, 'beef broth', '4 cups'),
(353, 1670, 'miso paste', '2 teaspoons'),
(353, 1671, 'minced garlic', '1 teaspoon'),
(353, 1672, 'sesame oil', '1 teaspoon'),
(353, 1673, 'packages ramen noodles', '2 (3 ounce)'),
(353, 1674, 'salt and ground black pepper to taste', 'pinch of'),
(354, 1675, 'medium-grain Korean, or Japanese rice', '2 cups'),
(354, 1676, 'large cucumber, sliced into thin strips', '1'),
(354, 1677, 'mung bean sprouts', '1 1/2 cups'),
(354, 1678, 'salt, divided, more as needed', '1 teaspoon'),
(354, 1679, 'teaspoons sesame oil, divided, more as needed', '4'),
(354, 1680, 'dashes sesame seeds, divided', '2'),
(354, 1681, 'spinach', '1 pound'),
(354, 1682, 'medium carrots, sliced into thin strips', '2'),
(354, 1683, 'shiitake mushrooms, rehydrated if dried, sliced', '10'),
(354, 1684, 'medium zucchini, sliced into thin strips', '1'),
(354, 1685, 'cooked beef, optional', '1/2 pound'),
(354, 1686, 'Fried or medium-soft boiled eggs, optional', 'appropriate'),
(354, 1687, 'Gochujang, or red pepper paste, for serving', 'appropriate'),
(355, 1688, 'small yellow russet potatoes peeled', '7'),
(355, 1689, 'packed kimchi finely chopped', '2 cups'),
(355, 1690, 'all-purpose flour', '1 cup'),
(355, 1691, 'large egg', '1'),
(355, 1692, 'vegetable oil or any neutral oil', '4 tablespoon'),
(356, 1693, 'thick wheat noodles fresh kind recommended or sub with udon noodles', '1.20 lbs '),
(356, 1694, 'pork belly chopped into smaller pieces', '0.65 lbs'),
(356, 1695, 'small onion finely chopped', '1'),
(356, 1696, 'green cabbage chopped', '1 cup'),
(356, 1697, 'zucchini diced', '1 cup'),
(356, 1698, 'green onion finely chopped', '2'),
(356, 1699, 'Korean roasted black bean paste aka Chunjang', '1/3 cup'),
(356, 1700, 'vegetable oil any neutral oil', '3 tablespoon'),
(356, 1701, 'oyster sauce or sub with vegetarian stir fry sauce', '1 tablespoon'),
(356, 1702, 'water cold', '2 cups'),
(356, 1703, 'cornstarch or sub with potato starch', '2 tablespoon'),
(356, 1704, 'white granulated sugar', '2 tablespoon'),
(356, 1705, 'cucumber thinly sliced for garnish', '3/4 cup '),
(357, 1706, 'water', '2 cups'),
(357, 1707, 'rinsed, white quinoa', '1 cup'),
(357, 1708, 'olive oil', '2 teaspoons'),
(357, 1709, 'cumin', '1 tsp'),
(357, 1710, 'granulated garlic powder', '1 teaspoon'),
(357, 1711, 'kosher salt', '1/2 tsp'),
(357, 1712, 'herbs de Provence ( or Italian dried herbs)', '1/2 teaspoon'),
(357, 1713, 'cherry or grape tomatoes, sliced in half', '2 cups'),
(357, 1714, 'cucumber, diced', '1 cup'),
(357, 1715, 'fresh basil ( or flat-leaf parsley, dill, or mint, or a combo!) chopped', '1/4 cup'),
(357, 1716, 'chopped scallions (or finely sliced red onion)', '1/4 cup'),
(357, 1717, 'cooked chickpeas ( 1 can, drained and rinsed)', '1 1/2 cup'),
(357, 1718, 'olive oil', '3 tbs'),
(357, 1719, 'balsamic vinegar', '3 tbs'),
(357, 1720, 'salt… more to taste', '1/4 tsp'),
(358, 1721, 'Szechuan Sauce', '1/4 cup'),
(358, 1722, 'peanut oil or high heat oil', '2 tablespoons'),
(358, 1723, 'salt and fresh cracked black pepper', 'generous pinch'),
(358, 1724, 'shredded carrots or matchstick carrots', '1 cup'),
(358, 1725, 'tofu, patted dry and cubed (or sub shrimp or chicken cubes)', '8–12 ounces'),
(358, 1726, 'thinly sliced onion', '1/2 cup'),
(358, 1727, 'shredded cabbage (or shredded brussels, or shredded broccoli)', '2 cups'),
(358, 1728, 'red bell pepper, thinly sliced', '1/2'),
(358, 1729, 'asparagus, snap peas, edamame green beans', '1 cup'),
(358, 1730, 'scallions, sesame seeds, chili flakes', 'garnish'),
(359, 1731, 'olive oil ( or ghee)', '1–2 tablespoons'),
(359, 1732, 'onion- diced', '1'),
(359, 1733, 'fresh ginger, grated or finely minced', '1 tablespoon'),
(359, 1734, 'cumin', '1 teaspoon'),
(359, 1735, 'garlic cloves- grated or finely minced', '4–5'),
(359, 1736, 'turmeric powder ', '1–2 teaspoons'),
(359, 1737, 'coriander', '1 teaspoon'),
(359, 1738, 'salt', '3/4 – 1 teaspoon'),
(359, 1739, 'water', '4 cups'),
(359, 1740, 'veggie broth or chicken stock', '4 cups'),
(359, 1741, 'cayenne, or more to taste', '1/4 teaspoon'),
(359, 1742, 'lime juice or lemon juice ( to taste)', 'Squeeze of '),
(360, 1743, 'oil', '2 tbsp'),
(360, 1744, 'canned Massaman curry paste', '3 tbsp'),
(360, 1745, 'beef stew meat, preferably diced chuck', '1 lb (450 g)'),
(360, 1746, 'can coconut milk', '14 oz (396 g)'),
(360, 1747, 'tamarind puree', '1 tbsp'),
(360, 1748, 'roasted peanuts, plus extra for garnish', '1/2 cup (120 ml)'),
(360, 1749, 'palm sugar, coconut sugar or brown sugar', '1 tbsp'),
(360, 1750, 'fish sauce', '1 tbsp'),
(360, 1751, 'potato, peeled and diced into 1-inch pieces', '13 oz (360 g)'),
(360, 1752, 'cilantro, optional', '4 tbsp'),
(361, 1753, 'shrimp, peeled and cleaned', '1 lb'),
(361, 1754, 'green mangoes, peeled and shredded', '2'),
(361, 1755, 'small carrot, peeled and shredded', '1'),
(361, 1756, 'Thai basil leaves, julienne', '5-6'),
(361, 1757, 'red chili, sliced', '1-2'),
(361, 1758, 'chopped cilantro', '4 tbsp'),
(361, 1759, 'chopped roasted peanuts', '4 tbsp'),
(361, 1760, 'fish sauce', '1-1/2 tbsp'),
(361, 1761, 'palm sugar or brown sugar', '1 tbsp'),
(361, 1762, 'line, juiced', '1/2'),
(361, 1763, 'fried shallot', '2-3 tbsp'),
(362, 1764, 'Thai bird\'s eye chilies, finely chopped', '3-5'),
(362, 1765, 'cloves garlic , finely chopped', '6'),
(362, 1766, 'beef sirloin, striploin, or lean ground beef', '1 lb (450 g)'),
(362, 1767, 'medium onion, sliced', '1'),
(362, 1768, 'long beans or string beans, sliced', '3/4 cup (100 g)'),
(362, 1769, 'Thai basil leaves', '2 handful'),
(362, 1770, 'oil', '2 tbsp'),
(362, 1771, 'fish sauce', '1 tbsp'),
(362, 1772, 'oyster sauce', '2 tbsp'),
(362, 1773, 'soy sauce', '1 tbsp'),
(362, 1774, 'sugar', '1/2 tsp');

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
(332, 1, 'Preheat the oven to 425 degrees F. Spray four custard cups with baking spray and place on a baking sheet.'),
(332, 2, 'Microwave the butter, bittersweet chocolate and semisweet chocolate in a large bowl on high until the butter is melted, about 1 minute'),
(332, 3, 'Whisk until the chocolate is also melted'),
(332, 4, 'Stir in the sugar until well blended'),
(332, 5, 'Whisk in the eggs and egg yolks, then add the vanilla'),
(332, 6, 'Stir in the flour. Divide the mixture among the custard cups'),
(332, 7, 'Bake until the sides are firm and the centers are soft, about 13 minutes'),
(332, 8, 'Let stand 1 minute. Invert on individual plates while warm and serve with vanilla ice cream'),
(333, 1, 'Soak the glutinous rice in 4 cups of water for 8 hours or up to overnight. Drain.'),
(333, 2, 'Line a bamboo steamer with a clean tea towel or steaming cloth, then fill it with the drained sticky rice. Bring the edges of the towel over the top and cover with the bamboo lid.'),
(333, 3, 'Place the steamer in a wok or pan with just enough simmering water to come no higher than the bottom of the steamer and cook over high heat until fully cooked through, 20 to 30 minutes.'),
(333, 4, 'Meanwhile, combine the coconut milk, sugar and salt in a saucepan and bring to a simmer, stirring until the salt and sugar are dissolved. Turn off the heat.'),
(333, 5, 'Transfer the sticky rice to a mixing bowl. Pour in three-quarters of the coconut milk mixture, stirring to combine evenly. Let the rice sit, 20 to 30 minutes.'),
(333, 6, 'Meanwhile, dissolve the cornstarch in 1 tablespoon water, then stir it into the remaining coconut milk. Bring to a boil to thicken, then turn off the heat and set aside. Serve the rice with the mango and additional sauce on the side.'),
(334, 1, 'Start off by separating the egg yolks from the whites. The easiest way to do this is by cracking the egg over a bowl and pressing your thumbs in the center which will divide the eggshell in half.'),
(334, 2, 'Then ladle the egg yolk back in forth from one shell to the other until all of the whites have dripped into a bowl.'),
(334, 3, 'Place the yolks in a separate large prep bowl. For the leftover egg whites- you can discard them or use them for pavlovas or coffee macarons later.'),
(334, 4, 'Now add the granulated sugar and pinch of salt to the egg yolks and whisk thoroughly with a large balloon whisk. Then set them aside.'),
(334, 5, 'In a medium saucepan, bring the heavy cream over medium heat and let it come to a simmer (not a boil).'),
(334, 6, 'Remove the hot cream from the cooktop and VERY slowly pour the cream over the egg yolks while constantly mixing with a whisk. You want to maintain movement so that the hot cream does not scramble the eggs.'),
(334, 7, 'Once the cream is mixed in, whisk in the vanilla extract.'),
(334, 8, 'Then pour the custard into a spouted measuring cup while straining it through a fine-mesh sieve. This will catch any clumps of eggs that might have cooked.'),
(334, 9, 'Line the bottom of a deep 9×13 inch baking dish with a tea towel and place 6 (4 oz) ramekins on top.'),
(334, 10, 'Bring about 7 cups of water to boil in a tea kettle or on the stove, then carefully pour the hot water into the baking dish. Try to avoid getting any water into the empty ramekins. Now evenly distribute the custard between the ramekins.'),
(334, 11, 'Preheat your oven to 325 degrees Fahrenheit and gently transfer the baking dish to the middle rack of the oven. Bake for about 25-30 minutes. The edges will be set and the center of the creme brulee should still have a little giggle when shaken'),
(334, 12, 'Once the custards are cooled at room temperate, cover them with plastic wrap and let them chill in the fridge for at least 4 hours or up to 4 days.'),
(334, 13, 'To torch the top of the creme brulee with sugar, start by adding about 1 tsp of sugar and tapping and shaking the ramekin to evenly distribute the sugar. You want a pretty thin layer of sugar.'),
(334, 14, 'Now begin caramelizing the sugar with a chefs torch making sure to constantly move the torch to avoid burning one area. Once you have a deep amber color, you are done! Give the sugar a minute to harden before cracking into the creme brulee with a spoon.'),
(335, 1, 'Place egg yolks in mixing bowl. Insert the chef’s whisk. Turn to speed 3 and mix to break up yolks. Add sugar and wine and continue to mix for another 30 seconds.'),
(335, 2, 'Place mixing bowl over a saucepan of simmering water, being careful not to let the bottom of the bowl touch the water. Whisk continuously by hand for about 5 minutes, until mixture becomes very thick and reaches 165°F. '),
(335, 3, 'Once mixture comes to temperature, return to the stand mixer. Mix on speed 8 until mixture is cool. This egg mixture is called a sabayon.'),
(335, 4, 'While sabayon is cooling, place mascarpone in a separate mixing bowl. With a rubber spatula, mix up mascarpone until smooth. Once sabayon is cool, fold it into the mascarpone in 3 additions with a large rubber spatula. Be sure to incorporate the 2 mixtures fully and evenly. Transfer mixture to a separate mixing bowl.'),
(335, 5, 'Wash the mixing bowl and whisk and rinse with cold water, then dry. Insert the chef’s whisk. Place heavy cream and two tablespoons Kahlúa in the mixing bowl. Turn to speed 4 and then increase to speed 7 for about 1½ minutes to whip until soft peaks form.'),
(335, 6, 'Fold the cream into the mascarpone mixture in 3 additions, using a large rubber spatula'),
(335, 7, 'Mix the espresso and remaining 2 tablespoons of Kahlúa in a shallow pan. Dip the ladyfingers in the espresso, 4 seconds on each side. Line the dipped ladyfingers on the bottom of a 9-inch square pan, cutting them to fit the pan as you need them. Pour half the mascarpone/cream mixture on top of the ladyfingers. '),
(335, 8, 'Repeat with a second layer of soaked ladyfingers. Finish by pouring the remaining cream on top. Cover with plastic and chill for at least 6 hours.'),
(335, 9, 'When ready to serve, dust the top with cocoa powder and/or chocolate curls.'),
(336, 1, 'In two separate bowls, make the chicken marinade and the sauce ingredients. Set the sauce aside. Add the chicken to the chicken marinade and set aside.'),
(336, 2, 'Add 1 tablespoon of oil to a wok or frying pan and heat to medium. Add red pepper flakes and peanuts and stir-fry until peanuts are golden (about 2 minutes). Remove peanuts and pepper flakes to a bowl.'),
(336, 3, 'Add 1 tablespoon of oil to the pan and bring heat to medium-high. Use a slotted spoon to scoop half of the chicken (allowing excess marinade to drip off) into the hot pan, in a single layer.'),
(336, 4, 'Cook chicken for 1-2 minutes on each side, flipping only once, until golden (chicken does not need to be completely cooked through). '),
(336, 5, 'Remove chicken to the bowl with the peanuts. Repeat with cooking remaining chicken. Return peanuts and chicken to the pan. Add dried chilies, ginger, bell peppers or other vegetables and green onion. Stir-fry for 1-2 minutes.'),
(336, 6, 'Add the sauce. Stir, and cook for a few minutes, or until chicken is cooked through and the sauce begin to slightly thicken. '),
(336, 7, 'Remove from heat and serve with hot cooked rice.'),
(337, 1, 'In the bowl of an electric mixer fitted with a dough hook attachment (you can also just use a regular mixing bowl and knead by hand), dissolve the yeast in the warm water. Sift together the flour and cornstarch, and add it to the yeast mixture along with the sugar and oil'),
(337, 2, 'Turn on the mixer to the lowest setting and let it go until a smooth dough ball is formed. Cover with a damp cloth and let it rest for 2 hours. (I haven\'t forgotten about the baking powder. You\'ll add that later!)'),
(337, 3, 'While the dough is resting, make the meat filling. Heat the oil in a wok over medium high heat. Add the onion and stir-fry for a minute. Turn heat down to medium-low, and add the sugar, soy sauce, oyster sauce, sesame oil, and dark soy. Stir and cook until the mixture starts to bubble up.'),
(337, 4, 'Add the chicken stock and flour, cooking for a couple minutes until thickened. Remove from the heat and stir in the roast pork. Set aside to cool. If you make the filling ahead of time, cover and refrigerate to prevent it from drying out.'),
(337, 5, 'After your dough has rested for 2 hours, add the baking powder to the dough and turn the mixer on to the lowest setting. At this point, if the dough looks dry or you\'re having trouble incorporating the baking powder, add 1-2 teaspoons water. Gently knead the dough until it becomes smooth again'),
(337, 6, 'Cover with a damp cloth and let it rest for another 15 minutes. In the meantime, get a large piece of parchment paper and cut it into ten 4x4 inch squares. Prepare your steamer by bringing the water to a boil.'),
(337, 7, 'Now we are ready to assemble the buns: roll the dough into a long tube and divide it into 10 equal pieces. Press each piece of dough into a disc about 4 1/2 inches in diameter (it should be thicker in the center and thinner around the edges). Add some filling and pleat the buns until they\'re closed on top.'),
(337, 8, 'Place each bun on a parchment paper square, and steam. I steamed the buns in two separate batches using a bamboo steamer (be sure the boiling water does not touch the buns during steaming process). Once the water boils, place the buns in the steamer and steam each batch for 12 minutes over high heat.'),
(338, 1, 'Whisk together the cornstarch and water in a medium glass bowl. Add the sliced flank steak and toss to coat the meat. Let the beef marinade for 15 minutes to tenderize the meat.'),
(338, 2, 'Prepare your stir fry sauce while the meat is tenderizing.'),
(338, 3, 'Heat a wok or heavy bottomed skillet over high heat. Drizzle with a small amount of oil. In two batches, sear the beef quickly on both sides. Do not overcrowd pan. Remove the beef and set aside.'),
(338, 4, 'Add the onions to the pan along with some additional oil, if needed. Stir-fry for a few minutes and then add the red peppers. Continue to stir-fry until the onions start to brown and soften. Toss in the broccoli florets and stir fry for another minute. Pour in the stir fry sauce and bring to a boil. Reduce the heat and return the beef and its juices to the pan. Stir fry for a 1 to 2 additional minutes to heat the beef through.'),
(338, 5, 'Serve immediately over rice or noodles and sprinkle with sesame seeds.'),
(339, 1, 'Preheat the oven to gas 6, 200°C, fan 180°C.\r\n'),
(339, 2, 'Heat the oil in a frying pan over a high heat. Add the lamb, breaking it up with the back of a wooden spoon and fry for 5 mins until starting to crisp. Add the onion and fry for a further 5 mins before adding the garlic, cumin, cinnamon and tomato purée. Cook for 2 mins until fragrant. Mix in the stock, bring to the boil and simmer for 10 mins until reduced by half. Stir through the peas and the coriander, saving a little to garnish, and season to taste.\r\n'),
(339, 3, 'Meanwhile, bring a pan of salted water to the boil. Add the sweet potato and simmer for 15 mins until soft. Drain, return to the pan and mash with a pinch of salt and pepper until smooth.\r\n'),
(339, 4, 'Spoon the lamb filling into a small ovenproof dish and top with the sweet potato. Place on a baking tray and bake for 25 mins until golden and bubbling. \r\n'),
(339, 5, 'After the shepherd’s pie has been cooking for 15 mins, place the broccoli in a steamer and cook for 10 mins until bright green and tender.\r\n'),
(339, 6, 'Serve the shepherd’s pie with the broccoli, sprinkled with the remaining coriander.'),
(340, 1, 'Turn the slow cooker on to your preferred setting. Heat 1 tbsp of oil in a large frying pan over a medium heat. Fry the lardons, onion, celery, garlic, bay, thyme, rosemary and parsley stalks for 15 mins, stirring occasionally, until the fat on the lardons has rendered down and the onion and celery are soft but haven’t taken on any colour.'),
(340, 2, 'Stir in the tomato purée, then deglaze the pan with a splash of red wine, scrapping any caramelised ingredients off the base of the pan. Tip it all into the slow cooker.'),
(340, 3, 'Generously season the flour with sea salt and freshly ground black pepper. Toss the beef through the flour until evenly coated. Tip any left-over flour into the slow cooker and stir to combine.'),
(340, 4, 'Heat a drizzle of oil in a large frying pan over a medium heat and, working in batches, fry the beef, carrots and mushrooms until evenly golden. As before, deglaze the pan with red wine between each batch, adding the contents of the pan to the slow cooker. Brown the shallots separately, then set aside.'),
(340, 5, 'Finally, deglaze the pan with the remaining wine, bring it to the boil, then pour into the slow cooker, cover and leave to braise for 4-5 hrs if cooking on high, or 6-7 hrs if cooking on low, until the meat pulls apart easily with two forks. Add the shallots to the pan for the final 1 hr 30 mins of cooking.'),
(340, 6, 'Once cooked, remove the aromatic herbs and season to taste. Leave to stand for 15 mins then serve sprinkled with parsley, with either silky mashed potato or a bowl of tagliatelle.'),
(341, 1, 'Cut 2 large aubergines in half lengthways. Place them on the board, cut side down, slice in half lengthways again and then across into 1.5cm chunks. Cut the ends off 4 small courgettes, then across into 1.5cm slices.'),
(341, 2, 'Peel 2 red or yellow peppers from stalk to bottom. Hold upright, cut around the stalk, then cut into 3 pieces. Cut away any membrane, then chop into bite-size chunks.'),
(341, 3, 'Score a small cross on the base of each of 4 large ripe tomatoes, then put them into a heatproof bowl. Pour boiling water over, leave for 20 secs, then remove. Pour the water away, replace the tomatoes and cover with cold water. Leave to cool, then peel the skin away.'),
(341, 4, 'Quarter the tomatoes, scrape away the seeds with a spoon, then roughly chop the flesh.'),
(341, 5, 'Set a sauté pan over medium heat and when hot, pour in 2 tbsp olive oil. Brown the aubergines for 5 mins on each side until the pieces are soft. Set them aside.'),
(341, 6, 'Fry the courgettes in another tbsp oil for 5 mins, until golden on both sides. Repeat with the peppers. Don’t overcook the vegetables at this stage.'),
(341, 7, 'Tear up the leaves from the bunch of basil and set aside. Cook 1 thinly sliced medium onion in the pan for 5 minutes. Add 3 crushed garlic cloves and fry for a further minute. Stir in 1 tbsp red wine vinegar and 1 tsp sugar, then tip in the tomatoes and half the basil.'),
(341, 8, 'Return the vegetables to the pan with some salt and pepper and cook for 5 mins. Serve with basil.'),
(342, 1, 'Pat salmon dry with paper towels; place in a pie plate. Combine syrup, miso, rice vinegar, ginger paste, and garlic paste. Drizzle half of mixture over salmon and gently rub on fillets. Let salmon stand at room temperature 15 minutes.'),
(342, 2, 'Preheat oven to 425 degrees. Spray a large sheet pan with nonstick cooking spray; set aside. Cut asparagus spears into 8-inch lengths. Toss asparagus with olive oil. Arrange the spears along the edges of the sheet pan, leaving room in the center for the salmon.'),
(342, 3, 'Place salmon in center of the pan. Bake for 8 to 12 minutes or until salmon flakes easily with a fork (145 degrees) and asparagus is crisp-tender. '),
(342, 4, 'Brush remaining miso mixture over salmon. Garnish with orange slices and parsley, if desired. '),
(343, 1, 'Cut chicken breasts in half horizontally (to make 4 pieces total). Season both sides of chicken breasts with salt, garlic powder, black pepper, and chili powder.'),
(343, 2, 'Heat 1 tablespoon olive oil in a large skillet or cast iron pan over medium-high heat. Add 2 tablespoons butter along with the chicken breasts. Cook chicken breasts 4-5 minutes per side or until browned and cooked through.'),
(343, 3, 'Remove chicken breasts from the pan and add the remaining 2 tablespoons butter, garlic, Italian seasoning, and crushed pepper flakes. Stir for 1 minute or until garlic is fragrant and add the broccoli, water, and lemon juice to the pan. Cook broccoli 2-3 minutes or just until cooked.'),
(343, 4, 'Return chicken to the pan and garnish with parsley, cilantro, or lemon if desired. Serve immediately.'),
(344, 1, 'Make the base recipe: In a Mason jar or other lidded jar, place the oats, chia seeds, maple syrup, salt, and Greek yogurt, if using. Add the almond milk and stir until the mixture is well combined and there are no clumps of chia seeds at the bottom of the jar. Cover and refrigerate overnight, or for up to 5 days.'),
(344, 2, 'In the morning, top with your desired toppings and serve with drizzles of maple syrup.'),
(344, 3, 'For apple pie overnight oats, stir the applesauce and cinnamon into the overnight oat base. Refrigerate overnight. In the morning, top with diced apple, chopped pecans, and cinnamon apples and drizzles of maple syrup, if desired.'),
(344, 4, 'For peach crisp overnight oats, make the plain overnight oat base. Refrigerate overnight. In the morning, top with peach slices, granola, and drizzles of maple syrup, if desired.'),
(344, 5, 'For PB&J overnight oats, make the plain overnight oat base. Refrigerate overnight. In the morning, top with peanut butter, raspberries, and chopped peanuts.'),
(344, 6, 'For chocolate banana bread overnight oats, stir the mashed banana, cocoa powder, cinnamon, and nutmeg into the overnight oat base. Refrigerate overnight. In the morning, top with banana slices, chopped walnuts, chocolate chips, and drizzles of maple syrup, if desired.'),
(345, 1, 'Cut the chicken legs in half down the joint, so you are left with the thigh and the drumstick pieces. Cut the bacon into thin strips. Halve the mushrooms, peel and quarter the shallots. Peel the potatoes and cut into approx. 2 cm/ 0.8 in. pieces. Peel the carrots and cut into approx. 1 cm/ 0.4 in. thick slices.'),
(345, 2, 'Heat a little oil in a large pan. Salt the chicken thighs and fry all over until the meat is golden brown on both sides. Then remove the chicken thighs from the pan.'),
(345, 3, 'Melt the butter in the same pan. Add the bacon, mushrooms, shallots, carrots and potatoes and fry for approx. 2–3 min., season lightly with salt and pepper. Add the tomato paste and fry briefly. Then deglaze with half the red wine and simmer for approx. 5 min. so that the alcohol evaporates and the liquid is reduced.'),
(345, 4, 'Pour in the remaining red wine and chicken stock. Add the chicken, bay leaf, thyme and rosemary and simmer over medium heat with the lid on for approx. 30 min'),
(345, 5, 'Mix the cornstarch with a little water in a small bowl and add to the sauce, stirring constantly to thicken. Season again with salt and pepper if necessary. Serve with mashed potatoes, crusty bread or tagliatelle noodles.'),
(346, 1, 'Put the meat, onions, wine, garlic and thyme in a large, casserole bowl. Cover and leave overnight in the refrigerator.'),
(346, 2, 'Drain, reserving the liquid. Remove the pieces of meat and pat them dry on kitchen paper. Use half the butter to fry the meat in small batches until well browned, using a slotted spoon to drain and transfer each batch to a large saucepan.'),
(346, 3, 'Melt a little more butter and fry the con until it is golden. Add the flour and cook, stirring for 1 minute. Stir in the brandy, strained marinade and seasoning and bring just to the boil. Pour over the meat, cover and cook on the lowest possible heat for 1.5 hours until the meat is tender.'),
(346, 4, 'Meanwhile melt the remaining butter in a frying pan and fry the onions, then the mushrooms until they are beginning to brown. Add to the meat for the last 30 minutes. Check the seasoning and serve sprinkled with parsley'),
(347, 1, 'For the puree: Add oil to a large saute pan and then add and cook the onion, celery, carrots and garlic over medium heat until softened (until a fork can be easily inserted into the carrots)\r\n'),
(347, 2, 'In the meantime, char the peppers under the broiler or on an outdoor grill until charred on all sides (rotate to blacken all sides)\r\n'),
(347, 3, 'Place the charred peppers in a bowl covered tightly with plastic wrap or in a ziploc bag until cooled, then peel off skins'),
(347, 4, 'Add softened vegetables (carrot, celery, onion, garlic), canned tomatoes, peppers, basil, herbs and salt/pepper to blender and puree the mixture'),
(347, 5, 'To prepare the dish for baking: Preheat oven to 280 F (140 C)\r\n'),
(347, 6, 'Spread the puree on the bottom of an oven safe skillet or tart pan and then arrange the sliced eggplant, tomatoes and zucchini in a swirl fashion on top'),
(347, 7, 'Sprinkle with salt and pepper'),
(347, 8, 'Combine the olive oil, garlic and thyme and then drizzle on top of vegetables'),
(347, 9, 'Cover with aluminum foil and bake for 3 hours'),
(347, 10, 'At this point, it is recommended to refrigerate overnight to allow flavors to marry and mingle'),
(347, 11, 'To serve, heat oven to 350 F (175 C) and bake uncovered for 45 minutes (if cold) or 20 minutes or warm/hot'),
(348, 1, 'Drain the cans of tomatoes in a colander, removing the juice for another use.'),
(348, 2, 'Sprinkle the tomatoes with the sugar and 4 teaspoons of salt and let sit at room temperature for 2 hours.'),
(348, 3, 'In a small skillet toast the fennel and coriander seeds over medium heat for about 2 minutes until fragrant.'),
(348, 4, 'Transfer the seeds to a spice grinder or mortar and coarsely grind.'),
(348, 5, 'In a small saucepan, add the olive oil, ground seeds, crushed garlic, lemon and orange strips, and the basil.'),
(348, 6, 'Warm over low heat until the oil begins to bubble, about 5 to 7 minutes.'),
(348, 7, 'Transfer the drained tomatoes to a large bowl, then pour the warm seasoned oil on top.'),
(348, 8, 'Let sit to marinate for a minimum of 3 hours.'),
(348, 9, 'Use a slotted spoon to remove the tomatoes from the oil and place in a separate bowl. Use your hands or slotted spoon to crush the tomatoes, measuring out 3 cups.'),
(348, 10, 'In a large skillet heat 3 tablespoons of the discarded oil over medium heat and then add the sliced garlic.'),
(348, 11, 'Cook 2 minutes until fragrant.'),
(348, 12, 'Add the tomatoes and chili flakes and cook until the tomatoes are warmed through.'),
(348, 13, 'Bring a large pot of lightly salted water to a boil.'),
(348, 14, 'Cook the pasta until it is \"al dente\", then drain and return to the pot.'),
(348, 15, 'Add half the sauce and stir over high heat until piping hot.'),
(348, 16, 'Serve in individual bowls with a spoon of extra sauce on top.'),
(348, 17, 'Pass the grated cheese at the table.'),
(349, 1, 'In a large bowl mix together the flour, yeast, olive oil, and salt, then add just enough warm water to create a workable, shaggy dough. (About 2 Cups)'),
(349, 2, 'Dump the dough onto a lightly floured surface and knead for 5 to 7 minutes, or until smooth and shiny.'),
(349, 3, 'Place the dough into a lightly oiled bowl and cover with plastic wrap.'),
(349, 4, 'Place the bowl in a warm spot in the kitchen, and let rise until doubled in size, about 1 hour.'),
(349, 5, 'Preheat oven to 425 degrees F.'),
(349, 6, 'Lightly oil a 15 x 10-inch baking sheet and press the dough in to fit.'),
(349, 7, 'Press your fingertips over the top of the dough to create dimples.'),
(349, 8, 'Drizzle the top of the dough with olive oil, arrange the tomatoes, onions, and olives, and then sprinkle liberally with sea salt.'),
(349, 9, 'Let rest for 20 minutes, then bake until golden brown, about 20 to 25 minutes.'),
(349, 10, 'Cool to room temperature before slicing.'),
(350, 1, 'In a bowl, mix together the meatball ingredients with your hands until blended.'),
(350, 2, 'In a large saucepan, heat the olive oil until sizzling over medium heat, then add the onions and cook, stirring often until tender, about 4 minutes.'),
(350, 3, 'Add the garlic and continue to cook just until fragrant, another minute or two.'),
(350, 4, 'Add the tomatoes, oregano, red pepper flakes, and basil and stir to mix.'),
(350, 5, 'Season well with salt and pepper, and bring the mixture to a boil, then reduce the heat to medium low heat and cook for 15 minutes.'),
(350, 6, 'Using damp hands, roll the meatballs into balls and carefully drop into the sauce.'),
(350, 7, 'Continue to form all the meatball mixture into balls, and cook for 10 minutes.'),
(350, 8, 'Carefully move the meatballs around with a spoon, and add a little additional water if the sauce is too thick.'),
(350, 9, 'Cook the meatballs for an additional 10 to 15 minutes or until cooked through, then use meatballs and sauce as desired.'),
(351, 1, 'Gather all the ingredients. For the cooked rice, please note that ¾ cup (150 g, 1 rice cooker cup) of uncooked Japanese short-grain rice yields 2¼ US cups (330 g) of cooked rice. See how to cook it with a rice cooker, pot over the stove, Instant Pot, or donabe. Make sure your cooked rice is at room temperature or slightly warmer. If you‘re using frozen cooked rice, defrost and warm it. Tip: If your cooked rice is still hot, transfer it to a large bowl or baking sheet (for more surface area). Spread it out and set aside for 60 minutes, uncovered, to remove the moisture.\r\n'),
(351, 2, 'To make the tomato sauce, combine 3 Tbsp ketchup, 3 Tbsp tomato paste, and 2 Tbsp water in a small saucepan and mix all together. Set aside.\r\n'),
(351, 3, 'Clean 4 mushrooms with damp towel and slice them.'),
(351, 4, 'Slice ¼ onion and dice into small pieces.\r\n'),
(351, 5, 'Cut 4 slices ham and dice into small pieces.\r\n'),
(351, 6, 'In a 10-inch frying pan, heat 1 Tbsp neutral oil. Add the onion and sauté.\r\n'),
(351, 7, 'Add 3 Tbsp green peas, the mushroom slices, and the ham slices.\r\n'),
(351, 8, 'Season with ⅛ tsp Diamond Crystal kosher salt and ⅛ tsp freshly ground black pepper.\r\n'),
(351, 9, 'Add 2 cups cooked Japanese short-grain rice (cooled). Break up the chunks of rice with a spatula.\r\n'),
(351, 10, 'When the rice and ingredients are combined well, add 3–4 Tbsp of the tomato ketchup sauce and mix well. Make sure to save some sauce for the topping. Divide the fried rice in 2 portions.\r\n'),
(351, 11, 'Make one omurice at a time. First, crack 2 eggs in a small bowl and add 1 Tbsp milk and a pinch of salt. Whisk it all together.\r\n'),
(351, 12, 'Heat another frying pan over medium-high heat and add 1 Tbsp butter. Swirl the pan to distribute the melted butter, then add the beaten egg.\r\n'),
(351, 13, 'Quickly swirl the egg around the pan with chopsticks. When the mixture is set but still runny, add one portion of ketchup fried rice in the middle. If you feel the pan is getting too hot, remove the pan from the heat and put on top of a damp towel to cool the pan.\r\n'),
(351, 14, 'Wrap the ketchup rice on both sides with the egg omelette. It doesn’t have to be perfectly wrapped, but make sure to create an “edge” around the fried rice with the omelette.\r\n'),
(351, 15, 'Place the serving plate under the pan and invert the pan to transfer the omelette rice.\r\n'),
(351, 16, 'Place a piece of paper towel on top and gently shape the omelette like an American football or rubgy ball. Repeat this process to make the other omurice.\r\n'),
(351, 17, 'Top the omurice with some tomato ketchup sauce that‘s either at room temperature or reheated. Garnish the omurice with parsley. Enjoy!\r\n'),
(352, 1, 'Cook the sushi rice according to packet instructions. Set aside, covered, and keep warm until ready to serve.'),
(352, 2, 'Slice the chicken breasts in half horizontally to create 4 thin pieces. Whisk 2 of the eggs in a medium bowl, and place flour and panko breadcrumbs in 2 separate bowls. Dust each piece of chicken in flour, dip in the whisked egg, then cover in breadcrumbs, pressing to coat the chicken completely. Place on a tray and chill for 10 minutes to firm.\r\n'),
(352, 3, 'Meanwhile, combine miso paste with 3/4 cup (180ml) of boiling water in a jug, stir, and set aside.\r\n'),
(352, 4, 'For the cabbage salad, place sunflower oil, rice wine vinegar and sesame oil in a medium bowl and whisk to combine. Add cabbage, toss to coat and set aside until ready to serve.\r\n'),
(352, 5, 'Heat 2cm of sunflower oil in a large frypan over medium heat. Working in batches, fry chicken for 5-6 minutes, turning once, until golden. Drain on paper towel and season. Set aside.\r\n'),
(352, 6, 'Add half the miso broth and half the whites of the long green shallot to a clean, large frypan and bring to a boil. Beat the remaining 2 eggs together in a jug. Place two of the chicken pieces in the pan and carefully pour over half the beaten egg on and around chicken. Turn up the heat to medium-high, cover and cook for 3 minutes or until egg is just set. Using a wide fish slice, scoop up chicken katsu and some of the egg and remove from pan and chop each piece into 5 even slices. Repeat with remaining chicken, miso, shallot and egg.\r\n'),
(352, 7, 'Meanwhile, combine 1 tbs sunflower oil, rice wine vinegar and sesame oil in a small bowl. Season, then toss through cabbage.\r\n'),
(352, 8, 'Divide warm rice among serving bowls and top with 5 slices of chicken and some cabbage. Scatter over shredded long green shallot, nori and sesame seeds, to serve.\r\n'),
(353, 1, 'Combine steak and soy sauce in a plastic container with a lid. For best flavor results, marinate in the refrigerator for 2 hours.'),
(353, 2, 'Remove steak from the marinade and shake off excess. Discard the remaining marinade.'),
(353, 3, 'Heat coconut oil in a skillet over medium-high heat. Add steak and cook until firm and reddish-pink and juicy in the center, 3 to 4 minutes per side. An instant-read thermometer inserted into the center should read 130 degrees F (54 degrees C) for medium-rare. Remove from skillet and allow to rest for 10 minutes.'),
(353, 4, 'While the steak is resting, combine broth, miso paste, garlic, and sesame oil in a saucepan over medium heat; bring to a boil. Once broth is at a slow boil, add ramen noodles. Cook until noodles are soft, about 3 minutes. Season with salt and pepper.'),
(353, 5, 'Transfer broth and noodles to 2 bowls. Slice steak and place on top.'),
(354, 1, 'Gather the ingredients.'),
(354, 2, 'Cook the rice in a rice cooker or on the stovetop.'),
(354, 3, 'Place the cucumbers in a strainer set over a bowl and sprinkle with 1/2 teaspoon salt. Toss with your hands and let stand for about 20 minutes. Rinse under running water, then drain.'),
(354, 4, 'Bring a medium pot of water to a boil. Add the mung beans and blanch for 30-60 seconds, until slightly wilted at the tips but still crunchy. Scoop out with a slotted spoon and transfer to a small bowl.'),
(354, 5, 'Cool until safe enough to handle, then gently squeeze of excess water over the sink. Season bean sprouts with 2 teaspoons sesame oil, 1/2 teaspoon salt, and a dash of sesame seeds.'),
(354, 6, 'Return the pot of water to a boil and add the spinach in handfuls. Cook until the spinach has wilted, 1-2 minutes. Scoop out with a slotted spoon and transfer to a medium bowl.'),
(354, 7, 'Cool until safe enough to handle, then squeeze the spinach of excess water over the sink. Season with the remaining 2 teaspoons sesame oil, the remaining 1/2 teaspoon of salt, and the remaining sesame seeds.'),
(354, 8, 'Add a drizzle of oil to a pan over medium-high heat. Sauté the carrots with a dash of salt until tender, but still crunchy, about 2 minutes. Remove from pan and set aside.'),
(354, 9, 'Next, sauté the mushrooms with a dash of salt, adding more oil if needed. Cook until soft and lightly browned, about 5 minutes. Remove from pan and set aside.'),
(354, 10, 'Add a drizzle of oil to the pan. Sauté the zucchini with a dash of salt until tender, about 4 minutes.'),
(354, 11, 'Place the cooked rice in a large bowl and arrange vegetables on top.'),
(354, 12, 'If desired, beef, egg, or both can be placed in the center.'),
(354, 13, 'Serve each helping with small bowls of gochujang and sesame oil.'),
(355, 1, 'First grate your peeled potatoes with a box grater or a food processor. Transfer grated potatoes to a colander.'),
(355, 2, 'Rinse the grated potatoes with cold running water to remove excess starch. Strain out the excess water by giving the colander a good shake.'),
(355, 3, 'Transfer the grated potatoes into a clean tea towel and wring out as much water as possible. The drier the potatoes are, the more crispy your pancakes will be.'),
(355, 4, 'Place the grated potatoes in a large mixing bowl, along with all-purpose flour, egg and chopped kimchi. Mix thoroughly until ingredients are well combined and the batter is sticky.'),
(355, 5, 'In a large pan on medium heat, add 2 tablespoon vegetable oil. Spoon about ¼ cup of the batter into the hot pan.'),
(355, 6, 'Flatten batter into a thin pancake using the flat side of your measuring cup. Do not overcrowd the pan and fry the pancakes in small batches depending on the size of your pan.'),
(355, 7, 'Flip pancakes over. Pour another 2 tablespoon of vegetable oil around the pancakes. Fry on the other side until golden crispy brown. Remove pancakes from pan and transfer to a wire rack or paper-towel lined plate to remove excess oil. Excess oil creates for soggy pancakes.'),
(355, 8, 'Serve with your favourite condiment and enjoy!'),
(356, 1, 'In a small bowl, combine sugar, cornstarch, and water. Mix well and set aside.\r\n'),
(356, 2, 'In a large pan on medium heat, add vegetable oil or any neutral oil and fry black bean paste for 2-3 minutes stirring constantly. Pour black bean paste and oil into a separate bowl, leaving about 1 tablespoon of oil in the pan. Strain and discard the excess oil and reserve the black bean paste.\r\n'),
(356, 3, 'Fry pork belly in the same oiled pan until cooked and browned on edges. This pork fat will make the sauce extra delicious so don\'t pour it out.\r\n'),
(356, 4, 'Add onions and green onions and fry until softened. Then add in zucchini and cabbage and fry until softened.\r\n'),
(356, 5, 'Add cooked pork and black bean paste. Mix well. Give your cornstarch slurry another mix and pour it into pan and mix well. Simmer the black sauce until it’s thickened.\r\n'),
(356, 6, 'Season sauce with oyster sauce.\r\n'),
(356, 7, 'In a large pot filled with water, bring to a boil and boil the noodles on high heat uncovered for 3-4 minutes until al dente. Strain noodles immediately. Do not rinse off with cold water.\r\n'),
(356, 8, 'Transfer cooked noodles to a large serving bowl. Pour the sauce over the noodles. Garnish with julienned cucumber and mix to enjoy!\r\n'),
(356, 9, 'Enjoy!!'),
(357, 1, 'In a medium pot, over high heat, add water,  rinsed white quinoa, salt, garlic powder, cumin, dried herbs, olive oil, and stir. Bring to a boil. Cover, lower heat to low, and simmer gently for 20 minutes.  Set timer.'),
(357, 2, 'While the quinoa is cooking make the Tomato Chickpea Relish, stirring all ingredients together in a medium bowl.'),
(357, 3, 'Check quinoa– making sure all the water is gone. If not, continue cooking covered, 5 more minutes, and until steam holes appear (this usually takes me a total of 25 minutes) and quinoa has soaked up all the water and looks fairly dry.)  It is important that quinoa is dry-ish and not watery. Be patient here, all stoves are different. '),
(357, 4, 'While it’s still warm, stir the quinoa vigorously with a fork, for a one whole minute, until you begin to see the individual grains break apart. This is imperative, to getting the quinoa to bind. Eventually, after a full minute of stirring, the grains will break apart and begin to clump. You can visually see this. Remove from stove, let cool down in the pot to where it’s cool enough to handle with your hands, about 15 minutes.  Stir in the lemon zest and fresh parsley if you like.'),
(357, 5, 'Using wet hands, shape into 4 balls, the size of a tennis ball. Place on a plate or sheet pan.  Using wet hands press into a 1 – 1 1/2 inch thick cake (about 3-4 inches wide), smoothing any cracks on the edges, making them nice and tidy. Wet hands is key.'),
(357, 6, 'Refrigerate 15 minutes to set. As the quinoa cakes cool they will become even more sturdy. (These will keep 3-4 days if made ahead, just lightly oil them, cover, and store in the fridge.)'),
(357, 7, 'Gently Pan-sear the Quinoa Cakes in a well-oiled skillet (using a thin metal spatula to flip) over medium heat.  You can pan-sear them without any coating, or for an extra crispy crust, dredge in rice flour or GF Panko. I often do these without any coating at all. Just be sure to not fiddle with them- letting them develop a good crust before flipping. As then develop the crust, they will naturally release themselves from the pan. I like to use a thin metal spatula to flip (more precise).'),
(357, 8, 'You can also bake these in a toaster oven ( right on the rack) or in a 400F  oven ( on a parchment-lined pan) until warmed through, about 20 minutes, but the crust for a skillet gives these the BEST texture.'),
(357, 9, 'Divide among plates and top with the fresh tomato chickpea relish.  Spoon any remaining dressing over top and around the cakes.'),
(357, 10, 'Garnish with OPTIONAL crumbled goat cheese if you like or a balsamic glaze.'),
(358, 1, 'Heat oil in a large skillet or wok. Season oil generously with salt and black pepper. With tofu, I generally use ½ teaspoon kosher salt per ½ pound of tofu. Swirl the seasoned oil around until spread out uniformly.  Add tofu and sear on at least two sides, until crispy and golden. Be patient here. Set it aside.\r\n'),
(358, 2, 'To the same pan, add a little more oil if needed,  add onion, and mushrooms and sauté over medium-high heat – stirring constantly, until tender, about 3 minutes. Add the remaining veggies,  lower heat to medium, and sauté,  tossing & stirring for 3-5 minutes until just tender or al dente. Tender, but vibrant and still slightly crisp. Add the dried chilies, turn the hood fan on, and saute for one minute.\r\n'),
(358, 3, 'Add ¼ cup of the  Szechuan Sauce, adding more to taste. Cook the sauce 2 minutes, letting it thicken a bit. Toss in the crispy tofu ( or shrimp or chicken) right at the end, just to warm it up.\r\n'),
(358, 4, 'Divide among bowls. Sprinkle with sesame seeds and scallions. Add chili flakes for more heat.\r\n'),
(358, 5, 'Serve this just as it is, over rice, or noodles. And remember, do not eat the dried chilies!\r\n'),
(359, 1, 'In a large heavy bottom pot or dutch oven,  saute onion in 1-2 T olive oil over medium heat for 5 minutes until fragrant and golden. Add ginger, garlic, and fresh turmeric and saute  2-3 minutes until eh garlic is fragrant and golden.  Add the mustard seeds, cumin, coriander, and optional turmeric power and saute 1-2 more minutes.\r\n'),
(359, 2, 'Add water, stock and salt. Bring to a simmer. Add vinegar or citrus. (I like a squeeze of lime) Taste. Adjust salt, lime and spice level to your liking. At this point you will have a flavorful base to add what you like. You can also refrigerate or freeze this in batches for later use.\r\n'),
(359, 3, 'Remember uncooked pasta and beans will double or triple in size, so add moderately ( 4 ounces dry pasta)\r\n'),
(359, 4, 'Remember to think and be sensible about cooking times for each ingredient you add.\r\n'),
(360, 1, 'If using the extra spice, toast cinnamon sticks, cardamom, and cloves in a dry pot over medium heat for 2-3 minutes. Remove the spice and set aside.\r\n'),
(360, 2, 'Heat oil in the pot, add the curry paste and stir for 1-2 minutes adding 1-2 tablespoons of the creamy top of coconut milk.\r\n'),
(360, 3, 'Add the beef and stir-fry for 3-4 minutes until the beef is browned.\r\n'),
(360, 4, 'Pour the coconut milk, peanuts, tamarind puree, sugar, and fish sauce. Return the toasted spices to the mixture, and stir well. Cover with the lid and simmer over low heat for 40 minutes\r\n'),
(360, 5, 'Add the potato and cook for another 10 minutes or until the potatoes are tender. Taste and adjust the seasoning according to your taste. Garnish with extra chopped peanuts and cilantro at the end. Serve hot with boiled Jasmin rice.\r\n'),
(361, 1, 'In a simmering boiling water, poach shrimps until fully cooked. Drain and set aside.\r\n'),
(361, 2, 'In a large bowl, combine shredded mangoes, shrimps, carrot, herbs, chili, and peanuts.\r\n'),
(361, 3, 'In a small bowl, combine fish sauce and sugar to make the dressing. Dissolve the sugar completely.\r\n'),
(361, 4, 'Add the dressing to the salad mixture and the lime juice; toss well. Taste and adjust the seasoning according to your taste. Sprinkle with the fried shallots and serve!\r\n'),
(362, 1, 'Smash garlic and chili in a mortar and pestle until they are roughly chopped. Or use a knife to finely chop them; set aside.\r\n'),
(362, 2, 'Mix stir-fry sauce ingredients in a small bowl and set aside.\r\n'),
(362, 3, 'Pound thin beef slices with a meat hammer to tenderize, and slice into desired sizes. \r\n'),
(362, 4, 'Heat 1 tablespoon of oil in a wok or skillet over high heat. Stir-fry smashed chili and garlic for 30 seconds. Add beef and stir-fry for 2 minutes until browned. Transfer beef to a plate and set aside.\r\n'),
(362, 5, 'Heat remaining 1 tablespoon oil, add onion, and stir fry for 30 seconds. Add long beans and continue to stir fry until beans are tender and crisp, about 1-2 minutes.\r\n'),
(362, 6, 'Return beef and the sauce mixture and stir to coat. Add Thai basil leaves and stir to heat through. Serve hot with rice.\r\n');

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
(22, 'ron', 'testing@gmail.com', '$2y$10$HCkOtxT/CXeDlGEDy0vZcOecd6YwC0/ohmaxaOhBCTKcL6wX029GC', '59c055fd-2d67-45d0-b7cc-77737e4e1429'),
(23, 'matthew2', 'matthew2@gmail.com', '$2y$10$ke0ekhY.R.TQcP9P8B8wbOFt3B6OrFOSDmPwPVtTmI3QJRHHmRhRi', 'fed46a83-3b63-444e-9702-66f131e68f14'),
(24, '', '', '$2y$10$nTa4WyVnGaFWAXWizcTWnejNoi8gMo8tyCBNgcLnxse9Jdd.iG9YK', 'e155c87d-9f84-4b5f-bc08-7757ce88ec80'),
(25, 'r', 'r@gmail.com', '$2y$10$V3LH8FP6y.00bEMk2wcs/ONJJQOnODuvChiQ5fpFp01wJ28a1YPem', 'a797a66a-91df-4e5c-95a7-0919fa99d17f'),
(26, 'Toby', 'nokhimyu@gmail.com', '$2y$10$g68j8bRP.eZocuULNGzCh.3vPfjpcKwhPDsit/d2BkmLwWDzLfIbG', '1a0e106c-0401-4289-83c5-8018abc8e18b'),
(27, 'r123', 'ron123@gmail.com', '$2y$10$AtjUh9DSOzuWKBaaUCkKveoqTCVubjwivv7ug5kdjpZVsAyo6IEMG', '76ed0285-c15e-4b5c-878f-73659918444d'),
(28, 'ron123456', 'ron123456@gmail.com', '$2y$10$kx8fvkRYzyKNY37atuC/9uQrgco3x/RoZ6PIEKCBEESDOBeW57alu', '6c3d51ed-dbef-42bd-9532-f8e7f47411f9'),
(31, 'adminG', 'adminG@flavoury.com', '$2y$10$oKuKh3TBtdii1f5gYUnF3u7YWy0ftsXOZQmasXDUtqspz466lQbWW', 'b1acdf17-bbc3-4c97-98c8-a40c402a0416');

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
(22, 11),
(22, 12),
(22, 31);

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
  MODIFY `Rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipeingredient`
--
ALTER TABLE `recipeingredient`
  MODIFY `Iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1775;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
