-- 1.Одним запросом добавить сразу несколько записей в таблицу.
INSERT INTO `shows`
(`title`, `original_title`, `total_seasons`, `image`)
VALUES
('Озарк', 'Ozark', '4', 'https://media.myshows.me/shows/1920/1/8e/18e4346dbdd6cc603de0ebd82f1c75d8.jpg'),
('Засланец из космоса', 'Resident Alien', '2', 'https://media.myshows.me/shows/1920/6/47/64750549da17cf8ac355045301a27a48.jpg'),
('Во все тяжкие', 'Breaking Bad', '5', 'https://media.myshows.me/shows/1920/0/c2/0c29613f893decccc881252ef9ad6f33.jpg');

-- 2. Удалить одну конкретную запись из таблицы.
DELETE FROM `shows` WHERE `original_title` = 'Ozark';

-- 3. Удалить все записи из таблицы.
DELETE FROM `users`;

-- 4. Вывести значения двух полей из таблицы.
SELECT `title`, `original_title` FROM `shows`;

-- 5. Выбрать все записи из таблицы.
SELECT * FROM `news`;

-- 6. Обновить значение полей в нескольких записях по условию.
UPDATE `news` SET `category_id` = 3 WHERE `category_id` = 1;

-- 7. Выбрать записи соответсвующие заданному условию.
SELECT * FROM `shows` WHERE `total_seasons` = 2;