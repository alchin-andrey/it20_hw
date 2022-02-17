-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 02:50
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
-- База данных: `show_to_me`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `foreword` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `video` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `add_data` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `foreword`, `text`, `image`, `video`, `category_id`, `add_data`) VALUES
(1, 'Netflix подтвердил, что у «Игры в кальмара» будет второй сезон', 'Более того, директор сервиса утверждает, что вселенная сериала только начинается.', 'Тед Сарандос, генеральный директор Netflix, впервые официально подтвердил, что сервис продлил «Игру в кальмара» на второй сезон. Также Сарандос заявил, что «вселенная „Игры в кальмара“ только начинается», однако каких-либо подробностей не сообщил.\r\nВ ноябре Хван Дон Хёк, режиссер проекта, сказал, что работает над продолжением шоу. Чуть позже стало известно, что он ведет переговоры с платформой о втором и третьем сезоне сериала. Про сюжет новых эпизодов ничего не известно, однако ранее Хван Дон Хёк говорил, что Сон Ки Хун, главный герой первой части, вернется и во второй.\r\nСериал рассказывает о людях, которые нуждаются в деньгах. Однажды они внезапно получают приглашение принять участие в таинственной игре на выживание со смертельно высокими ставками, чтобы выиграть сорок миллионов долларов. Игра проходит в неизвестном месте, в котором участники будут заперты до тех пор, пока не будет определен победитель.', 'https://media.myshows.me/news/1920/1/e8/1e833e43c93ea052689c6b32fabfc166.jpg', '', 1, '2022-01-21 13:20:00'),
(2, 'HBO Max выпустил трейлер второго сезона «Воспитанных волками» Ридли Скотта', 'Премьера продолжения фантастической драмы состоится 3 февраля.', 'HBO Max опубликовал первый трейлер второго сезона сериала «Воспитанные волками», продюсером которого выступает Ридли Скотт. Премьера продолжения, которое будет состоять из восьми эпизодов, назначена на 3 февраля 2022 года.\r\nВ центре сюжета проекта — два андроида, Отец и Мать, которым поручено растить человеческих детей на таинственной новой планете. Когда колония становится взрослее, андроиды узнают, что контролировать людские верования — невероятно сложная задача.\r\nВ новом сезоне Мать и Отец вместе со своими человеческими детьми присоединятся к недавно образованной атеистической колонии в таинственной тропической зоне Кеплера-22b. Но это странное новое общество станет только началом их проблем, ведь «естественный» ребенок Матери угрожает довести до вымирания то немногое, что осталось от человеческой расы.', 'https://media.myshows.me/news/normal/b/10/b101b6aff2511af3515aa3b344e9557b.jpg', 'https://www.youtube.com/embed/R6Kqm0qJ9Uc', 2, '2022-01-14 06:20:00'),
(3, '«Великая» с Эль Фаннинг и Николасом Холтом получит третий сезон', 'У второй части 100% на Rotten Tomatoes.', 'Стриминговый сервис Hulu продлил комедийный сериал «Великая» с Эль Фаннинг и Николасом Холтом на третий сезон. Неудивительно: Hulu утверждает, что «Великая» — одна из самым популярных комедий сервиса, а оценки второго сезона говорят сами за себя: 100% свежести на Rotten Tomatoes от критиков и 87% от пользователей.\r\nВ центре сюжета шоу — романтичная молодая девушка, будущая императрица Екатерина II Великая, которая приезжает в Россию, чтобы выйти замуж за Петра III. Надеясь встретить любовь и счастье, она вместо этого сталкивается с опасным, порочным и отсталым миром, который решает изменить. Теперь все, что ей нужно сделать — это убить своего мужа, победить церковь, сбить с толку военных и привлечь суд на свою сторону.\r\nСюжет третьей части пока не раскрывается, как и дата начала съемок. Известно, что новый сезон сатирической комедии будет состоять из десяти эпизодов.', 'https://media.myshows.me/news/1920/5/31/53104c3fc81dd1c16bb5f8656ade97eb.jpg', '', 1, '2022-02-15 13:30:00'),
(4, 'Paramount+ выпустил полноценный трейлер сериала по Halo', 'Премьера — 24 марта.', 'Paramount+ выпустил полноценный трейлер сериала по вселенной видеоигр Halo. Также сервис назвал дату премьеры предстоящего шоу — 24 марта.\r\nДействие проекта развивается в XXVI веке. Сериал расскажет о противостоянии человечества и инопланетной угрозы, известной как Ковенант. Люди проигрывают и их последней надеждой становится проект SPARTAN-II, занимающийся созданием суперсолдат. Ковенанту удается найти и уничтожить почти всех бойцов, однако одному кораблю все же удается спастись. На нем находится Мастер Чиф, на плечах которого теперь лежит ответственность за спасение человечества.\r\nСоздателями сериала выступают Стивен Кейн (\"Последний корабль\", \"Ищейка\") и Кайл Киллен (\"Пробуждение\"). Главные роли исполнят Пабло Шрайбер и Наташа Макэлхоун, а Кортану, как и в играх, озвучит Джен Тейлор.', 'https://myshows.me/news/4511/paramount-vypustil-polnocennyy-treyler-seriala-pohalo/', 'https://www.youtube.com/embed/GVzieTADN8E', 1, '2022-01-31 10:40:00'),
(5, 'Сериал Amazon по «Властелину колец» будет называться «Кольца власти»', 'Стриминговый сервис объявил об этом в новом тизере.', 'Amazon Prime выпустил новый тизер своего предстоящего сериала по «Властелину колец», в котором наконец объявил, как будет называться проект — «Кольца власти» (The Rings of Power). Также сервис показал, как именно был снят промо-ролик: оказывается, создатели не использовали компьютерную графику.\r\nДействие проекта развернется за тысячи лет до событий «Хоббита» и «Властелина колец» и перенесет зрителей во Вторую эпоху. Начинаясь в относительно спокойное время, сериал расскажет о новых и уже знакомых персонажах, которые сталкиваются с возродившейся злой силой Средиземья.\r\nПервый из восьми эпизодов первого сезона проекта выйдет 2 сентября 2022 года. Дальше серии будут показывать раз в неделю. Сообщается, что создатели запланировали снять пять сезонов.', 'https://media.myshows.me/news/normal/0/2f/02f25e16cd9cadf5f003bd4e0567d85e.jpg', 'https://www.youtube.com/embed/QhqGCPMfkNM', 1, '2022-02-02 09:20:00');

-- --------------------------------------------------------

--
-- Структура таблицы `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int NOT NULL,
  `category` varchar(15) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news_categories`
--

INSERT INTO `news_categories` (`id`, `category`) VALUES
(1, 'Анонсы'),
(2, 'Трейлеры'),
(3, 'Статьи'),
(4, 'Рецензии');

-- --------------------------------------------------------

--
-- Структура таблицы `shows`
--

CREATE TABLE `shows` (
  `id` int NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `original_title` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `total_seasons` int NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shows`
--

INSERT INTO `shows` (`id`, `title`, `original_title`, `total_seasons`, `image`) VALUES
(1, 'Игра престолов', 'Game of Thrones', 8, 'https://media.myshows.me/shows/1920/d/d1/dd10e6a042a3766f7c3173a1397dcd0d.jpg'),
(2, 'Игра в кальмара', 'Squid Game', 1, 'https://media.myshows.me/shows/1920/e/25/e25b77c1123e31384b13a70ed9d62f57.jpg'),
(3, 'Воспитанные волками', 'Raised by Wolves', 2, 'https://media.myshows.me/shows/1920/2/d0/2d0773b4ea679bffe10342ff237c7e6a.jpg'),
(4, 'Озарк', 'Ozark', 4, 'https://media.myshows.me/shows/1920/1/8e/18e4346dbdd6cc603de0ebd82f1c75d8.jpg'),
(5, 'Засланец из космоса', 'Resident Alien', 2, 'https://media.myshows.me/shows/1920/6/47/64750549da17cf8ac355045301a27a48.jpg'),
(6, 'Во все тяжкие', 'Breaking Bad', 5, 'https://media.myshows.me/shows/1920/0/c2/0c29613f893decccc881252ef9ad6f33.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`) VALUES
(1, 'KiZiL', 'kizil@gmail.com'),
(2, 'Dr.Zoidberg', 'dr.zoidberg@gmail.com'),
(3, 'Andrey', 'andrey@gmail.com'),
(4, 'ZED', 'zed@gmail.com'),
(5, 'Green', 'green@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shows`
--
ALTER TABLE `shows`
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
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
