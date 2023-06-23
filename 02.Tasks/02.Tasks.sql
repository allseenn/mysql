/* Написать скрипт, добавляющий в созданную БД vk 2-3 новые таблицы 
(с перечнем полей, указанием индексов и внешних ключей) (CREATE TABLE) */
-- Таблица для постов на стене
# DROP TABLE IF EXISTS posts;
CREATE TABLE posts (  
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    user_id BIGINT UNSIGNED NOT NULL,  
    body TEXT,  
    created_at DATETIME DEFAULT NOW(),  
    FOREIGN KEY (user_id) REFERENCES users(id) 
    );
-- Таблица комментариев под постами на стене
# DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    post_id BIGINT UNSIGNED NOT NULL,  
    user_id BIGINT UNSIGNED NOT NULL,  
    body TEXT,  
    created_at DATETIME DEFAULT NOW(),  
    FOREIGN KEY (post_id) REFERENCES posts(id),  
    FOREIGN KEY (user_id) REFERENCES users(id) 
 );
-- Таблица лайков для постов на стене
# DROP TABLE IF EXISTS post_likes;
CREATE TABLE post_likes (  
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    post_id BIGINT UNSIGNED NOT NULL,  
    user_id BIGINT UNSIGNED NOT NULL,  
    created_at DATETIME DEFAULT NOW(),  
    FOREIGN KEY (post_id) REFERENCES posts(id),  
    FOREIGN KEY (user_id) REFERENCES users(id) 
    );

/* Заполнить 2 таблицы БД vk данными (по 10 записей в каждой таблице) (INSERT) */
INSERT INTO users (firstname, lastname, email, password_hash, phone)
VALUES
('Иван', 'Дан', 'john.doe@gmail.com', '9622af1bb41ffe8895c873ee5a0b02db', 74957455667),
('Жанна', 'Дарк', 'jane.doe@live.com', '9f834ddff6889c6d153d3880b4940509', 74995358822),
('Боб', 'Смит', 'bob.smith@hotmail.com', 'b79b205f2e68f890b8fc66e585db2775', 79162175555),
('Алиса', 'Смит', 'alice.smith@yahoo.com', '47f20e41fedb5d989818a1afb438e21e', 79019599399),
('Charlie', 'Chaplin', 'charlie.brown@lycos.com', '22a7932fca94b17d297316998450ae3a', 19255533134),
('Lucy', 'Brown', 'lucy.brown@bing.com', '90e07c3954be6e74b209c4bf68ea5d36', 19263477887),
('Tom', 'Jones', 'tom.jones@msn.com', '029d3c2163b315976585e4f74aa82d05', 29033568728),
('Sally', 'Jones', 'sally.jones@ymail.com', '2dec1a626e1f47e85758ad82fab9d34a', 19059833718),
('Harry', 'Potter', 'harry.potter@whitehouse.com', '0bc9798af284d693b775f910569ce726', 44648883818),
('Hermione','Granger','hermione.granger@email.com','c4b27684f6aac15cb0300f903aac4b9e', 44774377855);
-- Заполним таблицу типы-медиа, т.к. она связана с таблицей медиа (необходимо для задач со звездочкой)
INSERT INTO media_types (id, name)
VALUES
(1, 'Image'),
(2, 'Video'),
(3, 'Audio'),
(4, 'Document'),
(5, 'Other');
-- Таблица медиа связана с таблицей профилей
INSERT INTO media (media_type_id, user_id, body, filename, size, metadata)
VALUES
(1, 1,'Body 1','Filename1.jpg',1024,'{}'),
(1, 2,'Body 2','Filename2.jpg',2048,'{}'),
(1, 3,'Body 3','Filename3.jpg',3072,'{}'),
(1, 4,'Body 4','Filename4.jpg',4096,'{}'),
(1, 5,'Body 5','Filename5.jpg',5120,'{}'),
(1, 6,'Body 6','Filename6.jpg',6144,'{}'),
(1, 7,'Body 7','Filename7.jpg',7168,'{}'),
(1, 8,'Body8','Filename8.jpg',8192,'{}'),
(1, 9,'Body9','Filename9.jpg',9216,'{}'),
(1, 10,'Body10','Filename10.jpg',10240,'{}');
-- Заполним таблицу профилей для выполнения задания по поиску лиц младше 18 лет ( это первая запись)
INSERT INTO profiles (user_id, gender, birthday, photo_id, hometown)
VALUES
(1, 'M', '2007-01-01', 1, 'Москва'),
(2, 'F', '1991-02-02', 2, 'Санкт-Петербург'),
(3, 'M', '1992-03-03', 3, 'Новосибирск'),
(4, 'F', '1993-04-04', 4, 'Екатеринбург'),
(5, 'M', '1994-05-05', 5, 'New-York'),
(6, 'F', '1995-06-06', 6, 'Kentucky'),
(7, 'M', '1996-07-07', 7, 'Toronto'),
(8, 'F', '1997-08-08', 8, 'Seattle'),
(9, 'M', '1998-09-09', 9, 'London'),
(10,'F','1999-10-10',10,'Birmingham');

/* Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = true).
При необходимости предварительно добавить такое поле в таблицу profiles 
со значением по умолчанию = false (или 0) (ALTER TABLE + UPDATE) */
-- Добавляем в профили колонку is_active, выставляя значение по умолчанию 0
ALTER TABLE profiles
ADD COLUMN is_active BOOLEAN DEFAULT false;
-- Обновляем профили, выставляя несовершеннолетних в true
UPDATE profiles
SET is_active = true
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) < 18;

/* Написать скрипт, удаляющий сообщения «из будущего» (дата позже сегодняшней) (DELETE) */
-- Вставим сообщения, 3 последних из будущего
INSERT INTO messages (from_user_id, to_user_id, body, created_at)
VALUES
(1, 2, 'Hello from user 1 to user 2', NOW()),
(2, 3, 'Hello from user 2 to user 3', NOW()),
(3, 4, 'Hello from user 3 to user 4', NOW()),
(4, 5, 'Hello from user 4 to user 5', NOW()),
(5, 6, 'Hello from user 5 to user 6', NOW()),
(6, 7, 'Hello from user 6 to user 7', NOW()),
(7, 8, 'Hello from user 7 to user 8', NOW()),
(8, 9, 'Hello from user 8 to user 9', '2025-08-08 19:00:00'),
(9,10,'Hello from user 9 to user10','2025-09-09 20:00:00'),
(10,1,'Hello from user10 to user1','2025-10-10 21:00:00');
-- Удалим сообщения из будущего
DELETE FROM messages
WHERE created_at > NOW();