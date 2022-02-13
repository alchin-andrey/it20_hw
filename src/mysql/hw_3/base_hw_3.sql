-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 13 2022 г., 13:19
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `homework03`
--

-- --------------------------------------------------------

--
-- Структура таблицы `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE `certificates` (
  `id` int UNSIGNED NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `series` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` smallint UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `certificates`
--

INSERT INTO `certificates` (`id`, `fio`, `series`, `number`, `year`, `user_id`) VALUES
(1, 'Иванов Иван Иванович', 'AA', 25000, NULL, 99),
(2, 'Серый Иван Иванович', 'AЛ', 25658, '03-04-1964', 1),
(3, 'Петров Петр Петрович', 'AВ', 21852, '20-01-1991', 5),
(4, 'Сидоров Сидор Сидорович', 'AС', 18456, '24-11-1976', 7),
(5, 'Козий Иван Иванович', 'AЕ', 32489, NULL, 25),
(6, 'Свердлов Петр Иванович', 'КA', 14145, '27-10-2014', 46),
(7, 'Канунников Иван Семенович', 'ШA', 22145, NULL, 8),
(8, 'Моторная Анна Григориевна', 'ЦУ', 19562, NULL, 11),
(9, 'Зиноватная Светлана Ивановна', 'ЛД', 18796, '25-10-1995', 98),
(10, 'Васечкин Семен Семенович', 'ЛМ', 25001, NULL, 30),
(11, 'Ателькина Татьяна Васильевна', 'ВВ', 24080, NULL, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE `directors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phones` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `directors`
--

INSERT INTO `directors` (`id`, `name`, `phones`, `organization`) VALUES
(1, 'Иван Иванов', '+3806345288888', 'ВУЗ ДГМА'),
(2, 'Петр Петров', '+380634528787', 'ДИТМ'),
(3, 'Сидор Сидоров', '+380836528287', 'КЭГИ'),
(4, 'Егор Егоров', '+380836528287', 'ВУЗ МАУП'),
(5, 'Александр Александров', '+380504563585', 'ВУЗ ХАИ');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `news` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `news`, `created_at`) VALUES
(2, 'Винная бочка из десяти дубов и другие сюрпризы дворца в Людвигсбурге', 'В потаенные уголки Людвигсбургской резиденции теперь можно заглянуть виртуально и трехмерно, но мы про этот сервис расскажем по старинке - используем обычные фотографии.', '2022-02-11 07:28:00'),
(3, 'Чего детям в Германии не хватало во время пандемии', 'Закрытие детсадов и детских площадок в период локдауна существенно сократило малышам возможности общения и плохо сказалось на развитии их речи.', '2022-02-11 08:04:00'),
(4, 'Комментарий: Цель Путина - не мир, а дестабилизация Украин', 'Если бы Путину был нужен Донбасс в составе России, он давно бы его аннексировал, как Крым. Для него эта территория - всего лишь инструмент влияния на Украину и предмет торга с Западом, считает Сергей Руденко.', '2022-02-11 09:04:00'),
(5, 'Австрийский историк: В глазах украинцев нейтралитет страны дискредитирован', 'На Западе обсуждают модели оборонной политики различных стран, которыми могла бы воспользоваться Украина. Австрийский историк - об опыте своей страны и о том, почему он не подходит Украине. Интервью DW.', '2022-02-11 09:47:00'),
(6, 'Комментарий: Запад пытается понять стратегию Путина', 'На фоне агрессивных действий России на границе с Украиной западным союзникам трудно понять небольшие сигналы к диалогу, продемонстрированные Путиным на переговорах с Макроном, пишет Николас Буссе из FAZ.', '2022-02-11 11:29:00'),
(7, 'Шрёдер вредит своей стране\". СМИ ФРГ о социал-демократах - лоббистах России', 'Немецкие журналисты жестко критикуют активную пророссийскую деятельность бывшего канцлера Германии и расследуют обширные связи его однопартийцев с \"Газпромом\" и Кремлем.', '2022-02-11 16:39:00'),
(8, 'Суд в Туле вынес приговоры передавшим Навальному данные его отравителей', 'Трех мужчин, которые передали политику Алексею Навальному биллинги сотрудников ФСБ, причастных к его отравлению, приговорили к тюремным срокам - от 2 до 4 лет.', '2022-02-12 01:59:00'),
(9, 'Telegram заблокировал 64 канала по требованию властей Германии', 'МВД Германии и ведомство по уголовным делам запросили блокировку десятков Telegram-каналов, распространяющих теории заговора и призывы к насилию. Мессенджер уже удалил 64 таких канала.', '2022-02-12 02:40:00'),
(10, 'В Сенат США внесен законопроект об ответственности Беларуси за агрессию против Украины', 'Проект \"Закона об ответственности Беларуси за агрессию\", внесенный в Сенат США, не видит различия между Россией и любой другой страной, которая помогает ей в агрессии против Украины.', '2022-02-12 05:12:00'),
(11, 'Россия проводит одновременно несколько военных учений', 'На фоне кризиса в отношениях с Западом Россия проводит сразу несколько военных маневров - в Беларуси, на Черном море, в самопровозглашенной Абхазии. На юге РФ завершились трехдневные сборы резервистов.', '2022-02-12 06:47:00'),
(12, 'В Туркменистане пройдут внеочередные выборы президента', 'Гурбангулы Бердымухамедов намерен уйти в отставку с поста президента Туркменистана, досрочные выборы назначены на 12 марта. Аналитики полагают, что новым главой государства может стать сын нынешнего президента.', '2022-02-12 07:44:00'),
(13, 'Российские лыжницы впервые за 16 лет выиграли олимпийскую эстафету', 'Последний раз женская сборная РФ выигрывала на олимпийское золото в эстафете в 2006 году. Серебро завоевала сборная Германии, которая лидирует в неофициальном медальном зачете на Олимпиаде в Пекине.', '2022-02-12 08:36:00'),
(14, 'Россия объявила об \"оптимизации\" штатов своих загранучреждений в Украине', 'РФ все-таки сокращает штаты своих представительств в Украине. Тем временем все больше стран призывают своих граждан покинуть Украину в связи с угрозой российского вторжения.', '2022-02-12 09:28:00'),
(15, 'Берлин призвал граждан ФРГ уехать из Украины', 'Гражданам Германии следует обдумать, насколько необходимо их присутствие в Украине. Уехать оттуда своих граждан призвали около 20 стран, опасаясь вторжения России. Штат представительств ФРГ в Украине сокращается', '2022-02-12 09:32:00'),
(16, 'Госдеп США велел части дипломатов покинуть Украину', 'Американское посольство в Киеве прекращает предоставлять консульские услуги. Власти США распорядились, чтобы из Украины выехали сотрудники диппредставительства, не занимающие важные должности.', '2022-02-12 11:40:00');

-- --------------------------------------------------------

--
-- Структура таблицы `organizations`
--

DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `id` int NOT NULL,
  `count_students` int UNSIGNED DEFAULT NULL,
  `type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `organizations`
--

INSERT INTO `organizations` (`id`, `count_students`, `type_id`) VALUES
(1, 25, 5),
(2, 221, 8),
(3, 118, 3),
(4, 116, 3),
(5, 25, 7),
(6, 48, 5),
(7, 72, 2),
(8, 88, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `practice`
--

DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice` (
  `id` int NOT NULL,
  `rating` tinyint DEFAULT NULL,
  `practice_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `practice`
--

INSERT INTO `practice` (`id`, `rating`, `practice_id`) VALUES
(1, 4, 2),
(10, 4, 2),
(11, 3, 1888),
(12, 2, 1988),
(13, 5, 1888),
(14, 1, 2874),
(15, 1, 1888),
(16, 5, 985),
(17, 4, 1888);

-- --------------------------------------------------------

--
-- Структура таблицы `publishes`
--

DROP TABLE IF EXISTS `publishes`;
CREATE TABLE `publishes` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `body` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `publish_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `publishes`
--

INSERT INTO `publishes` (`id`, `title`, `body`, `publish_date`) VALUES
(1, 'Винная бочка из десяти дубов и другие сюрпризы дворца в Людвигсбурге', 'В потаенные уголки Людвигсбургской резиденции теперь можно заглянуть виртуально и трехмерно, но мы про этот сервис расскажем по старинке - используем обычные фотографии.', '2022-02-11 07:28:00'),
(2, 'Чего детям в Германии не хватало во время пандемии', 'Закрытие детсадов и детских площадок в период локдауна существенно сократило малышам возможности общения и плохо сказалось на развитии их речи.', '2022-02-11 08:04:00'),
(3, 'Комментарий: Цель Путина - не мир, а дестабилизация Украин', 'Если бы Путину был нужен Донбасс в составе России, он давно бы его аннексировал, как Крым. Для него эта территория - всего лишь инструмент влияния на Украину и предмет торга с Западом, считает Сергей Руденко.', '2022-02-11 09:04:00'),
(4, 'Австрийский историк: В глазах украинцев нейтралитет страны дискредитирован', 'На Западе обсуждают модели оборонной политики различных стран, которыми могла бы воспользоваться Украина. Австрийский историк - об опыте своей страны и о том, почему он не подходит Украине. Интервью DW.', '2022-02-11 09:47:00'),
(5, 'Комментарий: Запад пытается понять стратегию Путина', 'На фоне агрессивных действий России на границе с Украиной западным союзникам трудно понять небольшие сигналы к диалогу, продемонстрированные Путиным на переговорах с Макроном, пишет Николас Буссе из FAZ.', '2022-02-11 11:29:00'),
(6, 'Шрёдер вредит своей стране\". СМИ ФРГ о социал-демократах - лоббистах России', 'Немецкие журналисты жестко критикуют активную пророссийскую деятельность бывшего канцлера Германии и расследуют обширные связи его однопартийцев с \"Газпромом\" и Кремлем.', '2022-02-11 16:39:00'),
(7, 'Суд в Туле вынес приговоры передавшим Навальному данные его отравителей', 'Трех мужчин, которые передали политику Алексею Навальному биллинги сотрудников ФСБ, причастных к его отравлению, приговорили к тюремным срокам - от 2 до 4 лет.', '2022-02-12 01:59:00'),
(8, 'Telegram заблокировал 64 канала по требованию властей Германии', 'МВД Германии и ведомство по уголовным делам запросили блокировку десятков Telegram-каналов, распространяющих теории заговора и призывы к насилию. Мессенджер уже удалил 64 таких канала.', '2022-02-12 02:40:00'),
(9, 'В Сенат США внесен законопроект об ответственности Беларуси за агрессию против Украины', 'Проект \"Закона об ответственности Беларуси за агрессию\", внесенный в Сенат США, не видит различия между Россией и любой другой страной, которая помогает ей в агрессии против Украины.', '2022-02-12 05:12:00'),
(10, 'Россия проводит одновременно несколько военных учений', 'На фоне кризиса в отношениях с Западом Россия проводит сразу несколько военных маневров - в Беларуси, на Черном море, в самопровозглашенной Абхазии. На юге РФ завершились трехдневные сборы резервистов.', '2022-02-12 06:47:00'),
(11, 'В Туркменистане пройдут внеочередные выборы президента', 'Гурбангулы Бердымухамедов намерен уйти в отставку с поста президента Туркменистана, досрочные выборы назначены на 12 марта. Аналитики полагают, что новым главой государства может стать сын нынешнего президента.', '2022-02-12 07:44:00'),
(12, 'Российские лыжницы впервые за 16 лет выиграли олимпийскую эстафету', 'Последний раз женская сборная РФ выигрывала на олимпийское золото в эстафете в 2006 году. Серебро завоевала сборная Германии, которая лидирует в неофициальном медальном зачете на Олимпиаде в Пекине.', '2022-02-12 08:36:00'),
(13, 'Россия объявила об \"оптимизации\" штатов своих загранучреждений в Украине', 'РФ все-таки сокращает штаты своих представительств в Украине. Тем временем все больше стран призывают своих граждан покинуть Украину в связи с угрозой российского вторжения.', '2022-02-12 09:28:00'),
(14, 'Берлин призвал граждан ФРГ уехать из Украины', 'Гражданам Германии следует обдумать, насколько необходимо их присутствие в Украине. Уехать оттуда своих граждан призвали около 20 стран, опасаясь вторжения России. Штат представительств ФРГ в Украине сокращается', '2022-02-12 09:32:00'),
(15, 'Госдеп США велел части дипломатов покинуть Украину', 'Американское посольство в Киеве прекращает предоставлять консульские услуги. Власти США распорядились, чтобы из Украины выехали сотрудники диппредставительства, не занимающие важные должности.', '2022-02-12 11:40:00');

-- --------------------------------------------------------

--
-- Структура таблицы `schools`
--

DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `region_id` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `schools`
--

INSERT INTO `schools` (`id`, `name`, `region_id`) VALUES
(1, 'Школа №	37', 3),
(2, 'Школа №	29', 4),
(3, 'Школа №	18', 1),
(4, 'Школа №	31', 8),
(5, 'Школа №	28', 5),
(6, 'Школа №	31', 7),
(7, 'Школа №	1', 4),
(8, 'Школа №	8', 6),
(9, 'Школа №	15', 9),
(10, 'Школа №	50', 2),
(11, 'Школа №	20', 1),
(12, 'Школа №	35', 4),
(13, 'Школа №	34', 9),
(14, 'Школа №	19', 10),
(15, 'Школа №	11', 9),
(16, 'Школа №	19', 4),
(17, 'Школа №	47', 5),
(18, 'Школа №	12', 3),
(19, 'Школа №	2', 10),
(20, 'Школа №	30', 10),
(21, 'Школа №	32', 10),
(22, 'Школа №	45', 3),
(23, 'Школа №	47', 2),
(24, 'Школа №	41', 2),
(25, 'Школа №	4', 4),
(26, 'Школа №	6', 5),
(27, 'Школа №	41', 8),
(28, 'Школа №	36', 4),
(29, 'Школа №	38', 10),
(30, 'Школа №	12', 8),
(31, 'Школа №	47', 10),
(32, 'Школа №	18', 1),
(33, 'Школа №	12', 9),
(34, 'Школа №	36', 10),
(35, 'Школа №	23', 3),
(36, 'Школа №	17', 3),
(37, 'Школа №	12', 5),
(38, 'Школа №	36', 6),
(39, 'Школа №	32', 1),
(40, 'Школа №	34', 2),
(41, 'Школа №	3', 7),
(42, 'Школа №	47', 2),
(43, 'Школа №	26', 6),
(44, 'Школа №	42', 9),
(45, 'Школа №	40', 5),
(46, 'Школа №	9', 2),
(47, 'Школа №	37', 2),
(48, 'Школа №	11', 7),
(49, 'Школа №	14', 3),
(50, 'Школа №	34', 3),
(51, 'Школа №	25', 7),
(52, 'Школа №	38', 8),
(53, 'Школа №	36', 7),
(54, 'Школа №	39', 5),
(55, 'Школа №	46', 10),
(56, 'Школа №	8', 3),
(57, 'Школа №	5', 2),
(58, 'Школа №	49', 9),
(59, 'Школа №	3', 9),
(60, 'Школа №	6', 2),
(61, 'Школа №	18', 3),
(62, 'Школа №	48', 8),
(63, 'Школа №	50', 5),
(64, 'Школа №	15', 10),
(65, 'Школа №	5', 3),
(66, 'Школа №	32', 2),
(67, 'Школа №	4', 1),
(68, 'Школа №	21', 1),
(69, 'Школа №	23', 7),
(70, 'Школа №	46', 10),
(71, 'Школа №	2', 6),
(72, 'Школа №	17', 1),
(73, 'Школа №	10', 9),
(74, 'Школа №	6', 7),
(75, 'Школа №	49', 4),
(76, 'Школа №	49', 2),
(77, 'Школа №	8', 10),
(78, 'Школа №	38', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `surname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `birthday`) VALUES
(35, 'Ivan', 'Ivanov', '1979-12-26'),
(36, 'Petr', 'Petrov', '1970-01-01'),
(37, 'Sergey', 'Sergeev', '1975-02-01'),
(38, 'Gleb', 'Glebov', '1995-05-17'),
(39, 'Boris', 'Borisov', '1994-05-05'),
(40, 'Михаил', 'Иванов', '1995-01-01'),
(41, ' Роман', 'Збруев', '1978-02-15'),
(42, ' Ярослав', 'Окулов', '1996-05-25'),
(43, ' Александр', 'Тарасов', '1999-08-09'),
(44, ' Антон', 'Окулов', '1995-01-01'),
(45, ' Илья', 'Созинов', '1989-02-05'),
(46, ' Анастасия', 'Орлова', '1998-01-04'),
(47, ' Максим', 'Глызин', '2002-03-06'),
(48, ' Диана', 'Коротаева', '1995-08-06'),
(49, ' Дмитрий', 'Москвин', '1995-05-05'),
(50, ' Алексей', 'Белянин', '1988-12-24'),
(51, ' Алексей', 'Суворов', '1995-02-03');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `admin_role` int NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Список пользователей';

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `password`, `email`, `admin_role`) VALUES
(16, 'Ivan', 'Ivanov', '123456', 'ivan.ivanov@gmail.com', 5),
(17, 'Petr', 'Petrov', '123456', 'petr.petrov@mail.com', 5),
(18, 'Sergey', 'Sergeev', '123456', 'serg.sergeev@fakeemail.com', 5),
(19, 'Gleb', 'Glebov', '123456', 'gleb.glebov@gmail.com', 5),
(20, 'Boris', 'Borisov', '123456', 'boris.borisov@yandex.com', 5),
(21, 'Иванов', 'Михаил', '123456', 'michael.ivanov@gmail.com', 5),
(22, 'Збруев', ' Роман', '123456', 'roman.zbruev@email.com', 5),
(23, 'Окулов', ' Ярослав', '123456', 'okulov@meta.com', 5),
(24, 'Тарасов', ' Александр', '123456', 'tarasov@zoho.com', 5),
(25, 'Окулов', ' Антон', '123456', 'anton.okulov@gmail.com', 5),
(26, 'Созинов', ' Илья', '123456', 'sozinov@mymail.com', 5),
(27, 'Орлова', ' Анастасия', '123456', 'orlova@tomail.com', 5),
(28, 'Глызин', ' Максим', '123456', 'glyzin@onmail.com', 5),
(29, 'Коротаева', ' Диана', '123456', 'korotaeva@mail.com', 5),
(30, 'Москвин', ' Дмитрий', '123456', 'moskvin@gmail.com', 5),
(31, 'Белянин', ' Алексей', '123456', 'belyanin@onmail.com', 5),
(32, 'Суворов', ' Алексей', '123456', 'suvorov@gmail.com', 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `practice`
--
ALTER TABLE `practice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publishes`
--
ALTER TABLE `publishes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `practice`
--
ALTER TABLE `practice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `publishes`
--
ALTER TABLE `publishes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
