-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2022 at 07:37 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double UNSIGNED NOT NULL DEFAULT '0',
  `old_price` double UNSIGNED NOT NULL DEFAULT '0',
  `hit` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sale` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `content`, `img`, `price`, `old_price`, `hit`, `sale`) VALUES
(1, 'Гиперион - Дэн Симмонс', 'Гиперион - Дэн Симмонс', 'Священник, Солдат, Поэт, Ученый, Детектив, Консул отправляются на планету Гиперион, в паломничество к таинственным Гробницам Времени, охраняемым кровавым убийцей Шрайком, мистическим полубожеством, святым непризнанного культа.\r\n\r\nИменно там могут исполниться их сокровенные желания, ставшие смыслом их жизни...\r\n\r\nТак начинается одна из великолепнейших саг в истории фантастики, охватывающая все сопутствующие жанры - от космической оперы до хоррора.', '1.jpg', 100, 123, 1, 0),
(2, 'Дюна - Фрэнк Герберт', 'Дюна - Фрэнк Герберт', '«Дю́на» (англ. Dune) — научно-фантастический роман американского писателя Фрэнка Герберта, впервые опубликованный в 1963—1965 годах в виде серии глав в журнале Analog Science Fiction and Fact и в 1965 году впервые изданный отдельной книгой. Книга, сделавшая Герберта знаменитым, была удостоена премий Хьюго и Небьюла. «Дюна» — один из самых известных научно-фантастических романов XX века.\r\n\r\nДействие «Дюны» происходит в галактике далёкого будущего под властью межзвёздной империи, в которой феодальные семейства владеют целыми планетами. «Дюна» рассказывает историю молодого аристократа по имени Пол Атрейдес, чья семья получает в управление планету Арракис. В пустынях Арракиса добывают особое вещество — «пряность», необходимое для космических перелётов. После военного переворота Пол вынужден скрываться среди жителей пустынь — фременов — и в итоге поднимает их на священную войну против империи. «Дюна» соединяет в себе черты научно-фантастического и философского романа, используя экзотические для американской фантастики 1960-х годов ближневосточные (арабские и персидские) имена и образы для создания многослойного повествования, затрагивающего, среди прочего, темы политики, религии, технологии и экологии.\r\n\r\nРоман стал первой частью объёмной медиафраншизы. В последующие годы Герберт написал ряд романов-продолжений — цикл, известный под названием «Хроники Дюны». Уже после смерти Герберта его сын Брайан и писатель Кевин Андерсон опубликовали ещё несколько романов, действие которых происходит в той же вселенной. Роман лёг в основу нескольких экранизаций, в том числе фильма Дэвида Линча, выпущенного в 1984 году, и фильма Дени Вильнёва, компьютерных и настольных игр. Как сам роман, так и его адаптации оказали большое влияние на массовую культуру, став источником вдохновения для многих других произведений — в частности, серии фильмов «Звёздные войны». C 2009 года вымышленные географические названия и имена персонажей романа используются астрономами для именования объектов на поверхности Титана.', '2.jpg', 99, 123, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
