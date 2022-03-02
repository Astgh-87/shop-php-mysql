-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 02 2022 г., 13:03
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `online-shopping`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(255) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`image_url`, `name`, `price`, `quantity`, `id`, `type`) VALUES
('rashberry.jpg', 'rashberry', '1500', '2', 269, 'fruits');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(20) NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `user_id`, `file_name`, `uploaded_on`, `status`) VALUES
(21, '', 'received_239831628004004.jpeg', '2022-02-26 22:43:39', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `products_1`
--

CREATE TABLE `products_1` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_1`
--

INSERT INTO `products_1` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(3, 'Apple', '450', 'new', 'apples.jpg', 'fresh', 'fruits'),
(5, 'rashberry', '1500', 'Fresh', 'rashberry.jpg', 'Best', 'fruits'),
(6, 'Blackberry', '800', 'NICE', 'blackberry.jpg', 'from Armenia', 'fruits'),
(7, 'Cherries', '600', 'New', 'cherries.jpg', 'Best', 'fruits'),
(8, 'Pomegranate', '550', 'Red and testy', '5.jpg', 'Fresh', 'fruits'),
(9, 'Pear', '450', 'Sweet', 'pear.jpg', 'Fresh', 'fruits'),
(10, 'Ananas', '2000', 'Big ans small', 'ananas.jpg', 'Fresh', 'fruits'),
(11, 'Banan', '900', 'Sweet', 'banan-f.jpg', 'New', 'fruits'),
(13, 'Strawberry', '2050', 'Testy', 'srawberry.jpg', 'Fresh', 'fruits'),
(14, 'Peach', '700', 'Fresh', 'peach.jpg', 'Very sweet', 'fruits'),
(15, 'Mandarin', '850', 'Best', 'mandarin.jpg', 'Very testy', 'fruits'),
(16, 'Kiwi', '900', 'Testy', 'kiwi fruit.jpg', 'Better', 'fruits'),
(17, 'Orange', '1100', 'Great', 'Orange.jpg', 'Sweet', 'fruits');

-- --------------------------------------------------------

--
-- Структура таблицы `products_2`
--

CREATE TABLE `products_2` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_2`
--

INSERT INTO `products_2` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(1, 'Pineapple', '1700', 'Fresh', 'pineapple.jpg', 'Testy', 'Vegatables'),
(2, 'Prunes', '1550', 'New', 'prunes.jpg', 'Testy', 'Vegatables'),
(3, 'Apricot', '1950', 'Very ', 'apricot.jpg', 'Nice', 'Vegatables'),
(4, 'Figs', '1650', 'Testy', 'figs.jpeg', 'Fresh', 'Vegatables'),
(5, 'Kiwi', '1100', 'Fresh', 'kivi.jpg', 'New', 'Vegatables'),
(6, 'Banana', '1600', 'Sweet', 'banan.jpg', 'Fresh', 'Vegatables');

-- --------------------------------------------------------

--
-- Структура таблицы `products_3`
--

CREATE TABLE `products_3` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_3`
--

INSERT INTO `products_3` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(1, 'corn', '500', 'fresh', 'corn.jpg', 'Very fresh and nice', 'Dried_fruits'),
(2, 'Carlic', '1400', 'Very nice', 'carlic.jpg', 'Its very fresh and testy', 'Dried_fruits'),
(3, 'Tomato', '600', 'RED and fresh', 'Tomato.jpg', 'Very jucy and testy', 'Dried_fruits'),
(4, 'Cucumbers', '950', 'Very jucy', 'cucumbers.jpg', 'Very fresh', 'Dried_fruits'),
(5, 'Brocoli', '1900', 'Fresh', 'brocoli.jpg', 'Fresh and new', 'Dried_fruits'),
(6, 'Capsicum', '800', 'Red, green, yelow', 'capsicum.jpg', 'Very fresh', 'Dried_fruits');

-- --------------------------------------------------------

--
-- Структура таблицы `products_4`
--

CREATE TABLE `products_4` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_4`
--

INSERT INTO `products_4` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(1, 'Brazil-nuts', '5000', 'Very testy', 'Brazil-nuts-1.jpg', 'From brazil', 'Nuts'),
(2, 'Assorted nats', '6500', 'All nuts', 'assorted nuts.jpg', 'All nuts in one', 'Nuts'),
(4, 'Pistachio', '4000', 'Its very testy', 'pistachio.jpg', 'With see salt ', 'Nuts'),
(5, 'Cashews', '8500', 'Testy', 'cashews.jpg', 'For health', 'Nuts'),
(6, 'Hazelnuts', '4500', 'Very fresh', 'hazelnuts.jpg', 'Its best for health', 'Nuts'),
(7, 'Walnut', '5000', 'Best', 'greckij_oreh.jpg', 'Very testy', 'Nuts'),
(8, 'Almonds', '7000', 'Better', 'almonds.jpg', 'Very best for health', 'Nuts'),
(9, 'Macadamia nuts', '6500', 'New', 'macadamia nuts.jpg', 'Better', 'Nuts'),
(12, 'Pumpkin seeds', '650', 'New', '1.jpg', 'Peeled seeds', 'Nuts'),
(13, 'Araxis', '1200', 'New', 'Araxis.jpg', 'Fresh', 'Nuts'),
(14, 'Peanuts', '700', 'Better', 'peanuts.jpg', 'Testy', 'Nuts');

-- --------------------------------------------------------

--
-- Структура таблицы `products_5`
--

CREATE TABLE `products_5` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_5`
--

INSERT INTO `products_5` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(1, 'Yashkino', '1250', 'New', 'dzoxik.jpg', 'Very testy', 'Waffle'),
(2, 'False', '1600', 'New', 'false.png', 'Very testy', 'Waffle'),
(3, 'Candy', '400', 'New', 'grandcendy.jpg', 'Better', 'Waffle'),
(4, 'Hoops', '500', 'Best waffle', 'hoops.jpg', 'New', 'Waffle'),
(5, 'Milka', '600', 'Best', 'milka.jpg', 'testy', 'Waffle'),
(6, 'Multycake', '850', 'Testy', 'multicake.jpg', 'New', 'Waffle'),
(7, 'Nutela', '900', 'Testy', 'nutela.jpg', 'New', 'Waffle'),
(8, 'Nutter-butter', '500', 'New', 'nutterbutter.jpg', 'Best', 'Waffle'),
(9, 'Oreo', '500', 'New', 'oreo.jpg', 'TEsty', 'Waffle'),
(10, 'Varna', '800', 'New', 'varna.jpg', 'Better', 'Waffle'),
(11, 'Yashkino', '800', 'Best', 'yashkino.jpg', 'Testy', 'Waffle');

-- --------------------------------------------------------

--
-- Структура таблицы `products_6`
--

CREATE TABLE `products_6` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_6`
--

INSERT INTO `products_6` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(1, 'MM', '520', 'New', 'mM.jpg', 'Very sweet', 'Candy'),
(2, 'Snickers', '800', 'NEW', 'snickers.jpg', 'Testy', 'Candy'),
(4, 'Sticky', '1500', 'By fruits', 'sticky.jpg', 'Testy', 'Candy'),
(5, 'Unsplush', '1200', 'Fruties', 'unsplash.jpg', 'New', 'Candy'),
(6, 'Crunch', '700', 'New', 'crunch.jpg', 'Testy', 'Candy'),
(7, 'Candy-halloween', '1800', 'Deffereny candy', 'candy-halloween.jpg', 'NEW', 'Candy'),
(8, 'Baunty', '900', 'NEW', 'bounty.jpg', 'Testy', 'Candy'),
(9, 'Ferrero-rocher', '1800', 'New', 'ferrero-rocher.jpg', 'Better', 'Cake'),
(10, 'Raffaello', '1400', 'Better', 'Raffaello.jpg', 'New', 'Candy'),
(11, 'Sorini', '1700', 'Best ', 'Sorini.jpg', 'New type', 'Candy');

-- --------------------------------------------------------

--
-- Структура таблицы `products_7`
--

CREATE TABLE `products_7` (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products_7`
--

INSERT INTO `products_7` (`id`, `name`, `price`, `description`, `image_url`, `description_info`, `type`) VALUES
(1, 'Paxlava', '1800', 'New', 'paxlava.jpg', 'Very better', 'Cake'),
(2, 'Belgian', '1200', 'Very fresh', 'belgiakan.jpg', 'Testy', 'Cake'),
(3, 'Ekler', '1250', 'Fresh', 'ekler.jpg', 'New', 'Cake'),
(4, 'Cake', '950', 'Fresh', 'cakeynkuyz.jpg', 'New', 'Cake'),
(5, 'Spartak', '500', 'New', 'spartak.jpg', 'Fresh', 'Cake'),
(6, 'Cake-1', '650', 'New', 'cake1.jpg', 'Fresh', 'Cake'),
(7, 'Nutela', '850', 'Fresh', 'cakenutela.jpg', 'Best', 'Cake'),
(8, 'Lehyan', '1100', 'New', 'lehakan.jpg', 'Best', 'Cake'),
(9, 'Napalion', '2500', 'New', 'napalion.jpg', 'Better', 'Cake'),
(10, 'Medovik', '900', 'New', 'cake3.jpg', 'By natural means', 'Cake');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `firstname` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `lastname` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `email` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `password` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `comfirm_password` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description_info` text CHARACTER SET armscii8 NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`firstname`, `lastname`, `email`, `password`, `comfirm_password`, `reg_date`, `description_info`, `id`) VALUES
('Astgh', 'Aloyan', 'astx1111@gmail.com', 'Astgh12345*', 'Astgh12345*', '2022-02-25 17:22:48', 'Worker', 15);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_1`
--
ALTER TABLE `products_1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_2`
--
ALTER TABLE `products_2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_3`
--
ALTER TABLE `products_3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_4`
--
ALTER TABLE `products_4`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_5`
--
ALTER TABLE `products_5`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_6`
--
ALTER TABLE `products_6`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_7`
--
ALTER TABLE `products_7`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `products_1`
--
ALTER TABLE `products_1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `products_2`
--
ALTER TABLE `products_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `products_3`
--
ALTER TABLE `products_3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `products_4`
--
ALTER TABLE `products_4`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `products_5`
--
ALTER TABLE `products_5`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `products_6`
--
ALTER TABLE `products_6`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `products_7`
--
ALTER TABLE `products_7`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
