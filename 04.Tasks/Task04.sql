USE vk;
/* 1.Подсчитать количество групп (сообществ), 
в которые вступил каждый пользователь.*/
-- Решение с джоином
SELECT user_id, CONCAT(users.firstname, ' ', users.lastname) name,  COUNT(community_id) goups_amount FROM users_communities
LEFT JOIN users ON users_communities.user_id = users.id
GROUP BY user_id;

-- Решение без джоина
SELECT id, CONCAT(users.firstname, ' ', users.lastname) name, count(id) groups_amount FROM users, users_communities
WHERE users.id = users_communities.user_id
GROUP BY id
ORDER BY id;

/* 2.Подсчитать количество пользователей в каждом сообществе. */
-- Решение с джоином
SELECT  communities.name, COUNT(user_id) users_amount FROM users_communities
LEFT JOIN communities ON users_communities.community_id = communities.id
GROUP BY community_id
ORDER BY name;

-- Решение без джоина
SELECT communities.name, COUNT(communities.name) users_amount FROM users_communities, communities
WHERE users_communities.community_id = communities.id
GROUP BY communities.name
ORDER BY name;

/* 3. Пусть задан некоторый пользователь. 
Из всех пользователей соц. сети найдите человека, 
который больше всех общался с выбранным пользователем 
(написал ему сообщений). */

# Не совсем понятно задание, а именно: 
# 1. "Общался", т.е. была обратная связь, или был в друзьях и спамеры не в счет?
# 2. "Написал ему сообщений" - тут уже другой смысл, т.к. спамеров можно учитывать. Буду считать по второму варианту "Написал".

-- Частный случай: По заданному id = 1. Выводит количество "отправленных сообщений" sent_messages, "отправителя" sender и "получателя" receiver
SELECT count(from_user_id) sent_messages, CONCAT(f_u.firstname, " ", f_u.lastname) sender, 
CONCAT(t_u.firstname, " ", t_u.lastname) receiver FROM messages
LEFT JOIN users f_u ON messages.from_user_id = f_u.id
JOIN users t_u ON messages.to_user_id = t_u.id
GROUP BY to_user_id, from_user_id
HAVING to_user_id = 1
ORDER BY sent_messages DESC LIMIT 1;

-- Общий случай: Отсортированный по убыванию, в зависимости от количества "отправленных сообщений" sent_messages, список "отправителей" sender и "получателей" receiver 
SELECT count(from_user_id) sent_messages, from_user_id, CONCAT(f_u.firstname, " ", f_u.lastname) sender, 
to_user_id, CONCAT(t_u.firstname, " ", t_u.lastname) receiver FROM messages
LEFT JOIN users f_u ON messages.from_user_id = f_u.id
JOIN users t_u ON messages.to_user_id = t_u.id
GROUP BY to_user_id, from_user_id
ORDER BY sent_messages DESC;

/* 4.* Подсчитать общее количество лайков, которые получили пользователи младше 18 лет. */
SELECT count(media_id) AS 'All_likes_for_babies' from likes where media_id IN
(SELECT id from media where user_id IN 
(SELECT user_id FROM profiles WHERE birthday > DATE_SUB(NOW(), INTERVAL 18 YEAR)));

/* 5.* Определить кто больше поставил лайков (всего): мужчины или женщины. */
SELECT 
CASE
	WHEN gender='f' THEN 'женщины'
	WHEN gender='m' THEN 'мужчины'
END AS 'Sex',
COUNT(*) AS 'Likes'
FROM likes
JOIN profiles ON likes.user_id = profiles.user_id
GROUP BY gender
ORDER BY COUNT(*) DESC
LIMIT 1;