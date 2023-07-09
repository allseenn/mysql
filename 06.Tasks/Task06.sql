USE vk;
/* 1.Написать функцию, которая удаляет всю информацию об указанном пользователе из БД vk.
Пользователь задается по id. Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users. 
Функция должна возвращать номер пользователя. */
-- Возвращать "номер пользователя" - это номер телефона или номер ID?
-- Буду возвращать ID если пользователь есть и 0 (ноль) если его (уже) нет в базе.
DROP FUNCTION IF EXISTS vk.f_del_user;
DELIMITER //
CREATE FUNCTION vk.f_del_user(id_user BIGINT UNSIGNED)
RETURNS BIGINT UNSIGNED READS SQL DATA
  BEGIN 
   DECLARE iduser BIGINT UNSIGNED;
   SELECT id INTO iduser FROM users WHERE id = id_user;
   IF iduser IS NULL THEN
    RETURN 0;
   END IF;
   DELETE FROM messages WHERE from_user_id = id_user;
   DELETE FROM messages WHERE to_user_id = id_user; 
   DELETE FROM friend_requests WHERE initiator_user_id = id_user;
   DELETE FROM friend_requests WHERE target_user_id = id_user;
   DELETE FROM users_communities WHERE user_id = id_user;
   DELETE FROM likes WHERE user_id = id_user;
   DELETE FROM likes WHERE media_id IN (SELECT id FROM media WHERE user_id = id_user);
   DELETE FROM profiles WHERE user_id = id_user;
   UPDATE profiles SET photo_id = NULL WHERE photo_id IN (SELECT id FROM media WHERE user_id = id_user);
   DELETE FROM media WHERE user_id = id_user;
   DELETE FROM users WHERE id = id_user;
  RETURN id_user;
  END //
DELIMITER ;

SELECT vk.f_del_user(5);

/* 2.Предыдущую задачу решить с помощью процедуры и 
 обернуть используемые команды в транзакцию внутри процедуры. */
DROP PROCEDURE IF EXISTS vk.p_del_user;
DELIMITER //
CREATE PROCEDURE vk.p_del_user(IN id_user BIGINT UNSIGNED, OUT result BIGINT UNSIGNED)
 BEGIN
  DECLARE iduser BIGINT UNSIGNED;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 ROLLBACK;
 SET result = 0;
 END;
 START TRANSACTION;
  SELECT id INTO iduser FROM users WHERE id = id_user;
  IF iduser IS NULL THEN
   SET result = 0;
  ELSE
   DELETE FROM messages WHERE from_user_id = id_user;
   DELETE FROM messages WHERE to_user_id = id_user;
   DELETE FROM friend_requests WHERE initiator_user_id = id_user;
   DELETE FROM friend_requests WHERE target_user_id = id_user;
   DELETE FROM users_communities WHERE user_id = id_user;
   DELETE FROM likes WHERE user_id = id_user;
   DELETE FROM likes WHERE media_id IN (SELECT id FROM media WHERE user_id = id_user);
   DELETE FROM profiles WHERE user_id = id_user;
   UPDATE profiles SET photo_id = NULL WHERE photo_id IN (SELECT id FROM media WHERE user_id = id_user);
   DELETE FROM media WHERE user_id = id_user;
   DELETE FROM users WHERE id = id_user;
   SET result = id_user;
  END IF;
  COMMIT;
 END //
DELIMITER ;

CALL p_del_user(6, @status);
SELECT @status;

/* 3.Написать триггер, который проверяет новое появляющееся сообщество. 
Длина названия сообщества (поле name) должна быть не менее 5 символов. 
Если требование не выполнено, то выбрасывать исключение с пояснением. */
DROP TRIGGER IF EXISTS vk.t_check_community_name;
DELIMITER //
CREATE TRIGGER vk.t_check_community_name BEFORE INSERT ON communities
 FOR EACH ROW
 BEGIN
  IF LENGTH(NEW.name) < 5 THEN
   SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Название сообщество должно быть минимум 5 символов!';
  END IF;
 END //
DELIMITER ;

INSERT INTO communities (name) VALUES ('VeryLongName');
INSERT INTO communities (name) VALUES ('shot');