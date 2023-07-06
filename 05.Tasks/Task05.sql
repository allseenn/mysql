USE vk;
/* 1. Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW] */
CREATE or replace VIEW v_groups AS
SELECT user_id, CONCAT(users.firstname, ' ', users.lastname) name,  COUNT(community_id) groups_amount FROM users_communities
LEFT JOIN users ON users_communities.user_id = users.id
GROUP BY user_id;

/* 2.Выведите данные, используя написанное представление [SELECT] */
SELECT name, groups_amount FROM v_groups;

/* 3.Удалите представление [DROP VIEW] */
DROP VIEW v_groups;

/* 4.* Сколько новостей (записей в таблице media) у каждого пользователя? 
Вывести поля: news_count (количество новостей), user_id (номер пользователя), user_email (email пользователя).
Попробовать решить с помощью CTE или с помощью обычного JOIN. */
WITH cte AS 
(SELECT count(user_id) news_count, user_id 
FROM media GROUP BY user_id)
SELECT news_count, cte.user_id, users.email  
FROM cte
JOIN users ON cte.user_id = users.id;

