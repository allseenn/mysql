# FIRST PART
CREATE DATABASE vk;
USE vk;

CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль',
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone),
    INDEX users_firstname_lastname_idx(firstname, lastname)
) COMMENT 'юзеры';
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Reuben', 'Nienow', 'arlo50@example.org', '9374071116');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Reuben', 'Nienow', 'terrence.cartwright@example.org', '9127498182');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Reuben', 'Windler', 'rupert55@example.org', '9921090703');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Reuben', 'West', 'rebekah29@example.net', '9592139196');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Frederick', 'Medhurst', 'sstehr@example.net', '9456642385');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Frederick', 'Braun', 'itzel.beahan@example.com', '9448906606');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Frederick', 'Kilback', 'johnathan.wisozk@example.com', '9290679311');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Frederick', 'Orn', 'missouri87@example.org', '9228624339');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Jordyn', 'Jerde', 'edach@example.com', '9443126821');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('11', 'Jordyn', 'McDermott', 'shaun.ferry@example.org', '9840726982');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('12', 'Jordyn', 'Runolfsdottir', 'doug57@example.net', '9260442904');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('13', 'Jordyn', 'Haag', 'lhoeger@example.net', '9984574866');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('14', 'Jordyn', 'Stanton', 'tconsidine@example.org', '9499932439');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('15', 'Jordyn', 'Wolff', 'effertz.laverna@example.org', '9251665331');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('16', 'Lina', 'Macejkovic', 'smitham.demarcus@example.net', '9762021357');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('17', 'Jerrell', 'Stanton', 'deja00@example.com', '9191103792');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('18', 'Golden', 'Wisozk', 'frida19@example.com', '9331565437');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('19', 'Elisa', 'Balistreri', 'romaine27@example.org', '9372983850');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('20', 'Reed', 'Bogan', 'zhyatt@example.com', '9924753974');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('21', 'Gwendolyn', 'McClure', 'zluettgen@example.net', '9745046704');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('22', 'Luz', 'Bailey', 'tillman.iliana@example.org', '9881942174');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('23', 'Alyce', 'Toy', 'russel.ewell@example.com', '9754884857');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('24', 'Oma', 'Ortiz', 'jailyn.feest@example.com', '9339073755');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('25', 'Valentine', 'Goldner', 'matteo.wiza@example.net', '9803404650');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('26', 'Rasheed', 'Ebert', 'brenden32@example.net', '9924275184');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('27', 'Misael', 'Lakin', 'benjamin.hilpert@example.com', '9619165091');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('28', 'Shaun', 'Fritsch', 'wwiegand@example.org', '9231898080');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('29', 'Katarina', 'Sipes', 'jenifer.gislason@example.net', '9348426774');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('30', 'Newton', 'Koss', 'beatty.river@example.org', '9574058915');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('31', 'Selmer', 'Quitzon', 'ztromp@example.net', '9363178382');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('32', 'Margarete', 'Koepp', 'idell70@example.net', '9743498718');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('33', 'Donavon', 'Bauch', 'michele.lakin@example.com', '9229739697');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('34', 'Ashlynn', 'Cummerata', 'weber.tatyana@example.net', '9710902090');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('35', 'Fletcher', 'Lang', 'mona94@example.com', '9502246403');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('36', 'Amiya', 'Leuschke', 'mathilde.macejkovic@example.com', '9461791942');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('37', 'Terrance', 'West', 'ebert.magnus@example.org', '9381729082');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('38', 'Keara', 'Kiehn', 'audie.franecki@example.net', '9796576345');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('39', 'Wyatt', 'Olson', 'jarvis92@example.org', '9212459514');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('40', 'Paula', 'Shields', 'casey.bayer@example.org', '9410763172');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('41', 'Ivah', 'Bernier', 'paris15@example.com', '9283284370');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('42', 'Liza', 'Howe', 'hadley72@example.org', '9926888657');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('43', 'Kevon', 'Gerhold', 'fhilll@example.com', '9398761644');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('44', 'Hermina', 'Lubowitz', 'amalia.reichel@example.org', '9213914905');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('45', 'Cara', 'Quigley', 'hailee.beier@example.net', '9287811077');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('46', 'Kian', 'Weimann', 'tankunding@example.net', '9168462586');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('47', 'Madelynn', 'Hahn', 'pleffler@example.org', '9598242802');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('48', 'Hassie', 'Monahan', 'lowe.amelia@example.net', '9765846197');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('49', 'Taryn', 'Kuvalis', 'aschneider@example.net', '9533355262');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('50', 'Hollis', 'Padberg', 'cathryn40@example.net', '9163727209');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('51', 'Henriette', 'Lindgren', 'allie.witting@example.com', '9891313707');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('52', 'Keven', 'DuBuque', 'durward83@example.com', '9613848114');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('53', 'Chaz', 'Yundt', 'stamm.bret@example.net', '9763350438');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('54', 'Rosalee', 'Dickens', 'concepcion.conn@example.net', '9675063949');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('55', 'Kip', 'Schoen', 'ibeer@example.com', '9987381304');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('56', 'Louie', 'Spencer', 'tkessler@example.com', '9938579943');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('57', 'Priscilla', 'Daniel', 'barrett12@example.com', '9886578202');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('58', 'Dean', 'Satterfield', 'orin69@example.net', '9160120629');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('59', 'Prudence', 'Shields', 'sleffler@example.net', '9414604655');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('60', 'Elaina', 'Buckridge', 'bartell.einar@example.net', '9916593682');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('61', 'Monserrat', 'OConner', 'linda58@example.com', '9519551625');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('62', 'Ramona', 'Davis', 'abbigail68@example.net', '9484610686');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('63', 'Eldridge', 'Wilkinson', 'callie.wuckert@example.org', '9532811737');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('64', 'Emanuel', 'Reinger', 'loyal.herzog@example.org', '9659591995');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('65', 'Janis', 'Stamm', 'nils93@example.org', '9905318598');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('66', 'Nannie', 'Streich', 'chelsea01@example.com', '9412172452');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('67', 'Elva', 'Sawayn', 'modesta.haley@example.com', '9803009959');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('68', 'Ava', 'Nolan', 'mmarvin@example.com', '9428224970');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('69', 'Westley', 'Predovic', 'urunolfsdottir@example.net', '9247233922');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('70', 'Antonina', 'Ferry', 'jamaal.farrell@example.com', '9902477849');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('71', 'Jeffery', 'Lowe', 'noemie38@example.org', '9803133328');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('72', 'Cesar', 'Schmitt', 'johnathan.waelchi@example.org', '9330339588');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('73', 'Letha', 'Beatty', 'reynold.feil@example.net', '9636262160');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('74', 'Benton', 'Rogahn', 'jbeer@example.net', '9490216855');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('75', 'Braden', 'Shields', 'zemlak.foster@example.com', '9114981748');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('76', 'Luther', 'Turcotte', 'zturner@example.com', '9292137540');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('77', 'Patricia', 'Gleason', 'benny76@example.net', '9148879590');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('78', 'Delta', 'Kerluke', 'terry.antone@example.org', '9667864529');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('79', 'Thurman', 'Rutherford', 'isaiah.gerlach@example.net', '9994148720');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('80', 'Willie', 'Fritsch', 'rolando45@example.org', '9512440690');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('81', 'Letitia', 'Marks', 'bosco.sage@example.net', '9546163253');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('82', 'Ada', 'Kuvalis', 'emmanuelle.hegmann@example.org', '9251017068');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('83', 'Josie', 'Kunde', 'kaley.rolfson@example.net', '9285157694');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('84', 'Harmony', 'Lesch', 'velda32@example.org', '9627960545');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('85', 'Kelsie', 'Olson', 'xheidenreich@example.net', '9548492646');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('86', 'Lucile', 'Rolfson', 'dbartell@example.net', '9258387168');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('87', 'Celestino', 'Cruickshank', 'flavio.hammes@example.com', '9686686728');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('88', 'Hayley', 'Vandervort', 'cartwright.seamus@example.com', '9228109837');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('89', 'Royal', 'DuBuque', 'jswift@example.org', '9295312277');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('90', 'Adrian', 'Mills', 'gail.lockman@example.net', '9491584055');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('91', 'Roosevelt', 'Tromp', 'gutkowski.janiya@example.com', '9910853104');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('92', 'Miguel', 'Watsica', 'hassan.kuphal@example.org', '9824696112');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('93', 'Gregory', 'Jenkins', 'weimann.richard@example.com', '9860971258');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('94', 'Kristina', 'Jast', 'jennifer27@example.com', '9133161481');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('95', 'Ozella', 'Hauck', 'idickens@example.com', '9773438197');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('96', 'Emmet', 'Hammes', 'qcremin@example.org', '9694110645');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('97', 'Eleonore', 'Ward', 'antonietta.swift@example.com', '9397815776');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('98', 'Lori', 'Koch', 'damaris34@example.net', '9192291407');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('99', 'Sam', 'Kuphal', 'telly.miller@example.net', '9917826312');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('100', 'Pearl', 'Prohaska', 'xeichmann@example.net', '9136605713');

CREATE TABLE messages (
	id SERIAL,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);
INSERT INTO `messages` VALUES 
('1','1','2','V quae nesciunt non.','1995-08-28 22:44:29'),
('2','2','1','S molestias ipsam architecto.',now()),
('3','3','1','S.','1993-09-14 19:45:58'),
('4','1','3','Qniam.','1985-11-25 16:56:25'),
('5','1','5','Viunt.','1999-09-19 04:35:46'),
('6','1','6','Rerum dolor vitae saepe.','1973-11-09 08:12:04'),
('7','1','7','Pere et commodi eaque.','1998-04-09 00:00:26'),
('8','8','8','Sem.','2005-08-20 18:40:27'),
('9','9','9','Et d.','2013-03-19 04:10:10'),
('10','10','10','Prnditiis in est.','1976-05-22 14:38:15'),
('11','11','11','Moed in.','1996-04-27 00:23:37'),
('12','12','12','Qucsi.','1989-05-13 22:39:47'),
('13','13','1','Ear sit.','1997-09-30 00:06:14'),
('14','4','1','Aut ique earum laborum.','1977-10-15 23:26:40'),
('15','4','1','Nimet.','1977-10-13 19:40:32'),
('16','4','1','Cre.','1998-05-24 10:09:36'),
('17','2','1','Iste.','1993-01-30 15:51:38'),
('18','18','1','Diam.','1996-05-19 14:18:39'),
('19','19','1','Ameai.','1998-08-12 04:42:34'),
('20','20','20','Poaut.','2013-11-01 05:14:05'),
('21','21','21','Archin qui.','2007-10-22 01:34:17'),
('22','8','1','Med.','1986-07-17 11:23:56'),
('23','8','1','Exp.','2002-06-22 15:10:59'),
('24','8','1','Exce harum rerum.','2007-09-14 22:06:16'),
('25','8','1','Nrnatur error quia.','2006-06-16 19:28:59'),
('26','8','1','Minccit.','1977-11-04 08:02:22'),
('27','8','1','As.','1975-06-25 22:37:18'),
('28','8','1','Namri.','2007-03-22 10:13:05'),
('29','8','1','Mcto et.','2003-01-11 19:37:45'),
('30','8','1','Ps sint.','2010-04-13 15:06:20'),
('31','31','31','Vm. ut.','2009-02-23 05:02:06'),
('32','32','32','Dumquam.','2017-06-21 05:19:41'),
('33','33','33','Bue.','1996-01-15 13:05:37'),
('34','34','34','Qtusamm.','1987-01-09 11:35:59'),
('35','35','35','Vogendi et corrupti.','1980-07-24 15:48:57'),
('36','36','36','Omm.','2007-01-31 14:18:23'),
('37','37','37','Net quis eos dolore explicabo.','1971-09-15 21:08:26'),
('38','38','38','Atri.','1991-12-06 22:30:58'),
('39','39','39','Plm voluptate est.','2004-10-09 10:37:23'),
('40','40','40','Abin non et.','1972-03-14 21:06:39'),
('41','41','41','Qued eos ipsam illo quia.','2017-04-22 21:50:21'),
('42','42','42','Sis.','2001-11-06 03:19:29'),
('43','43','43','Noexum.','1997-02-17 15:31:00'),
('44','44','44','Maexcepturi.','1998-06-20 05:03:15'),
('45','45','45','Quis blanditiis.','2004-04-20 20:20:36'),
('46','46','46','Es.','2005-06-30 22:41:30'),
('47','47','47','CNihil v nemo.','1973-09-27 23:29:10'),
('48','48','48','Dasperiores et.','1986-05-03 10:04:03'),
('49','49','49','Ms.','1970-08-09 14:37:59'),
('50','50','50','Dut.','1976-06-06 22:03:25'),
('51','51','51','Timi. Aut quis in non.','1992-04-30 20:58:57'),
('52','52','52','Ampore et magnam.','1973-03-10 13:48:51'),
('53','53','53','Enl bore laboriosam.','1982-11-18 08:42:29'),
('54','54','54','Qu similique neque.','1995-03-14 17:47:23'),
('55','55','55','Do amet dicta optio fugit.','1999-07-08 10:32:41'),
('56','56','56','Iniam.','2008-10-15 17:57:56'),
('57','57','57','Voiatur.','1974-01-30 16:15:55'),
('58','58','58','Lida.','1979-10-08 08:07:50'),
('59','59','59','Teptatem cupiditate quia.','1994-08-20 09:12:31'),
('60','60','60','Quporis qui.','1974-04-18 22:45:58'),
('61','61','61','Aues.','1987-10-17 16:11:13'),
('62','62','62',' consequatur laborum delectus suscipit velit.','2012-11-25 07:00:39'),
('63','63','63','uia repellendus et minus.','2005-02-27 23:18:23'),
('64','64','64',' ni.','1998-10-18 18:46:37'),
('65','65','65','saus sint quos sed quo.','1988-05-14 20:25:46'),
('66','66','66','mepsas est.','1988-03-02 21:17:37'),
('67','67','67','ae.','2001-09-08 17:21:02'),
('68','68','68','Et.','1990-05-02 19:23:36'),
('69','69','69','Rrt. Fit.','1992-11-20 08:57:16'),
('70','70','70','Oribusi.','1970-08-11 21:33:29'),
('71','71','71','Ssero.','2005-10-16 03:28:41'),
('72','72','72','A pellat odit ut.','1988-02-29 05:32:01'),
('73','73','73','Im r id.','2010-04-18 01:08:09'),
('74','74','74','Iopedit.','1985-10-05 19:13:28'),
('75','75','75','Eque qui.','2012-03-29 11:54:19'),
('76','76','76','Uors.','1986-03-25 09:53:35'),
('77','77','77','Nis omnis.','1972-04-24 19:27:51'),
('78','78','78','Rm.','2014-07-19 03:46:12'),
('79','79','79','Eaxime.','1984-10-24 22:39:24'),
('80','80','80','Vbus odio suscipit quo.','1991-05-25 00:05:39'),
('81','81','81','Oolm.','1992-06-19 09:18:21'),
('82','82','82','A es.','1990-08-26 13:57:28'),
('83','83','83','Ht.','2017-08-01 23:04:18'),
('84','84','84','Cseqo.','1984-08-20 04:11:47'),
('85','85','85','E quia.','1998-08-07 18:07:35'),
('86','86','86','Alit.','1989-05-22 06:13:52'),
('87','87','87','Q.','2010-08-08 17:23:39'),
('88','88','88','Cibus.','2011-03-01 02:20:15'),
('89','89','89','Vel.','2008-01-26 14:29:48'),
('90','90','90','Bearporis vero.','1996-07-08 15:22:44'),
('91','91','91','Quiris.','2015-12-29 19:09:22'),
('92','92','92','Ipsuimaxime.','2014-11-15 17:19:35'),
('93','93','93','Dt.','1979-10-07 18:50:35'),
('94','94','94','Quim.','1983-09-13 00:31:43'),
('95','95','95','Estntis.','1975-09-22 08:07:45'),
('96','96','96','NonN.','1988-12-01 15:08:45'),
('97','97','97','Temnemo.','1992-04-14 11:30:54'),
('98','98','98','Qupe.','1999-11-20 22:33:47'),
('99','99','99','Millo.','1990-06-30 05:56:22'),
('100','100','100','illiatibus.','1991-05-20 07:06:14'); 

# SECOND PART
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- changed to combined primary key (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	INDEX (initiator_user_id),
    INDEX (target_user_id),
    PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '10', 'approved', '1970-08-21 06:40:37', '2003-12-29 23:20:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '2', 'requested', '1987-10-10 07:33:23', '1983-01-18 01:56:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '3', 'approved', '2015-02-07 01:53:07', '2015-09-14 16:17:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '1', 'approved', '1983-04-08 15:57:26', '1976-12-28 23:54:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '2', 'unfriended', '1976-03-03 18:22:00', '1996-12-03 11:29:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '3', 'unfriended', '2008-12-06 17:07:59', '2015-11-01 08:03:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '1', 'requested', '1989-10-26 06:20:23', '2001-08-05 16:01:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '6', 'unfriended', '1987-12-30 01:50:03', '2001-07-09 07:39:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '7', 'requested', '2003-12-27 22:52:09', '1998-04-18 04:41:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '11', 'declined', '1970-05-08 00:32:15', '2007-03-22 21:08:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '14', 'approved', '1988-05-02 10:55:41', '1985-02-09 05:04:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '11', 'unfriended', '1975-07-25 20:11:02', '1993-06-30 12:51:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '33', 'declined', '2000-06-24 13:17:54', '1982-04-16 16:12:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('14', '24', 'declined', '2007-12-09 17:17:48', '1991-05-31 12:38:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '35', 'unfriended', '2016-07-21 20:48:02', '1982-10-06 14:54:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('16', '36', 'requested', '1992-10-04 04:16:38', '2001-01-24 13:54:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '37', 'approved', '1984-11-20 10:33:06', '2018-10-07 19:43:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('18', '38', 'approved', '1992-07-31 16:34:16', '2008-08-03 10:13:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '39', 'requested', '1993-06-18 14:21:32', '1976-01-16 15:57:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '30', 'declined', '2007-03-22 18:13:14', '2010-01-06 00:06:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '31', 'requested', '2015-09-17 12:10:37', '1986-06-30 22:29:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '32', 'approved', '2004-09-21 23:23:19', '2003-01-27 16:11:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('23', '33', 'requested', '1972-04-26 20:13:41', '1991-01-03 06:58:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('24', '34', 'unfriended', '2017-08-08 05:38:20', '2007-09-27 03:07:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '35', 'approved', '2001-01-16 08:07:31', '1995-04-25 06:23:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('26', '36', 'declined', '2004-07-31 10:12:37', '2001-06-28 18:49:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '37', 'declined', '2004-11-01 19:13:46', '1978-05-16 19:08:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('28', '38', 'requested', '1989-07-10 17:02:49', '2007-03-16 20:42:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '39', 'unfriended', '1984-08-12 11:38:13', '1971-07-07 10:40:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '10', 'unfriended', '1997-03-01 23:22:31', '1974-08-30 23:16:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('31', '11', 'approved', '2003-02-19 05:45:39', '2015-02-04 15:26:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '12', 'declined', '2017-01-08 12:24:37', '2019-02-23 04:25:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('33', '13', 'requested', '2018-08-15 10:50:34', '1984-08-24 14:00:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('34', '14', 'unfriended', '1988-06-12 03:29:45', '1998-11-28 12:07:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('35', '15', 'unfriended', '1988-01-30 09:10:41', '2004-06-02 14:04:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('36', '16', 'declined', '1993-03-10 12:19:15', '2007-05-17 03:24:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('37', '17', 'requested', '1999-06-21 09:26:23', '2011-08-28 05:29:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '18', 'requested', '1977-03-14 20:26:41', '1975-09-03 17:01:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '19', 'approved', '2017-09-08 20:11:20', '1989-12-10 18:38:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '10', 'approved', '2001-08-16 04:34:33', '1999-01-01 14:33:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '11', 'unfriended', '1982-07-18 15:48:44', '1989-10-14 05:48:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '12', 'requested', '1973-10-29 10:38:00', '1973-11-02 18:26:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('43', '13', 'requested', '1979-12-17 11:27:04', '2004-09-28 04:54:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '14', 'approved', '2013-10-01 07:28:04', '2006-12-12 05:43:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '15', 'requested', '2011-07-27 12:46:23', '1988-05-07 21:59:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '16', 'declined', '1999-11-13 00:33:38', '2016-05-02 19:19:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('47', '17', 'approved', '1980-03-02 03:50:22', '2010-09-22 18:58:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '18', 'requested', '2003-11-15 23:04:36', '1991-08-05 16:56:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '19', 'approved', '2006-03-24 23:01:39', '2010-08-04 15:00:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '10', 'approved', '2008-07-18 00:34:41', '2016-12-25 03:18:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('51', '11', 'approved', '2001-10-14 18:49:19', '2012-06-08 01:36:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('52', '12', 'requested', '2000-06-08 04:08:36', '2010-10-12 10:27:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('53', '13', 'approved', '1972-07-01 10:35:33', '1972-03-03 01:26:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('54', '14', 'declined', '2007-07-24 20:49:26', '2014-03-10 04:56:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '15', 'approved', '1981-09-25 09:50:15', '1991-04-22 04:24:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '16', 'approved', '2015-03-08 22:23:52', '1996-02-08 09:41:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('57', '17', 'declined', '2012-07-18 20:25:26', '2008-06-10 16:46:01');

CREATE TABLE communities(
	id SERIAL,
	name VARCHAR(150),
    INDEX communities_name_idx(name)
);

INSERT INTO `communities` VALUES (2,'atque'),(1,'beatae'),(9,'est'),(5,'eum'),(7,'hic'),(6,'nemo'),(8,'quis'),(4,'rerum'),(10,'tempora'),(3,'voluptas');

CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, community_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('23', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('28', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('41', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('56', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('57', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('58', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('61', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('62', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('63', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('67', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('71', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('72', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('83', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('87', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('93', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('95', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '10');

CREATE TABLE media_types(
	id SERIAL,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW()
);

INSERT INTO `media_types` VALUES 
	(1,'Photo','2003-07-09 10:08:05'),
	(2,'Music','2009-06-19 20:08:09'),
	(3,'Video','1984-04-18 01:55:09'),
	(4,'Post','2001-04-17 06:47:52');

# THIRD PART

CREATE TABLE media(
	id SERIAL,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,1,'Esriectus.','user1_avatar.jpg',5,NULL,'1991-11-16 08:14:38.000','2019-06-19 18:11:58.000')
,(2,2,'L.','asperiores.mp4',4510,NULL,'1986-12-10 19:34:26.000','2019-06-19 18:11:58.000')
,(1,3,'Aa= quo.','sapiente.avi',763116,NULL,'1978-09-18 17:07:49.000','2019-06-19 18:11:58.000')
,(4,4,'Vi=sequi.','rerum.mp4',740,NULL,'1984-10-21 04:41:15.000','2019-06-19 18:11:58.000')
,(1,5,'Et quibusdam cupiditate tempore.','user5-profile-image.mp4',40813,NULL,'2014-06-20 03:34:11.000','2019-06-19 18:11:58.000')
,(2,6,'Aptate nostrum.','quasi.jpg',119422,NULL,'1991-11-02 07:50:45.000','2019-06-19 18:11:58.000')
,(3,1,'Nnde est.','non.mp4',704558,NULL,'1988-09-17 20:56:38.000','2019-06-19 18:11:58.000')
,(3,1,'S. Nem=us.','earum.mp4',65108,NULL,'1995-10-07 10:19:53.000','2019-06-19 18:11:58.000')
,(3,1,'Ois quibusda=est ut.','ullam.avi',83717449,NULL,'2003-08-05 05:55:25.000','2019-06-19 18:11:58.000')
,(3,10,'m.','maiores.avi',75,NULL,'1984-05-17 07:37:30.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,1,'A qui ut.','non.mp4',0,NULL,'2010-05-07 19:13:09.000','2019-06-19 18:11:58.000')
,(4,1,'Qutus porro.','earum.jpg',1826766,NULL,'2013-08-25 22:49:45.000','2019-06-19 18:11:58.000')
,(1,1,'Etborbus.','hic.jpg',979,NULL,'2015-11-02 00:11:31.000','2019-06-19 18:11:58.000')
,(2,1,'Noabo ad enim repellat quia. Dolor mollitia fugiat officia nihil animi.','iste.jpg',18,NULL,'2006-05-11 12:11:06.000','2019-06-19 18:11:58.000')
,(3,1,'Tet.','quia.jpg',7,NULL,'2000-03-29 04:01:57.000','2019-06-19 18:11:58.000')
,(4,1,'Acus.','omnis.jpg',2058670,NULL,'1971-10-08 06:43:32.000','2019-06-19 18:11:58.000')
,(1,1,'Qua.e nam.','aperiam.jpg',3489253,NULL,'1973-12-19 09:20:43.000','2019-06-19 18:11:58.000')
,(2,1,'Demque.','commodi.jpg',8,NULL,'1989-03-01 17:19:42.000','2019-06-19 18:11:58.000')
,(3,5,'F eos.','id.avi',1,NULL,'1970-11-04 03:06:33.000','2019-06-19 18:11:58.000')
,(4,2,'Aust.','fugiat.jpg',82,NULL,'2017-06-08 03:23:04.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,21,'Pr met.','ipsa.jpg',1,NULL,'1986-12-30 23:42:20.000','2019-06-19 18:11:58.000')
,(2,22,'Acure.','adipisci.jpg',4582,NULL,'2017-07-19 09:44:31.000','2019-06-19 18:11:58.000')
,(3,23,'S a sunt quis placeat.','qui.jpg',8302441,NULL,'1985-01-28 13:54:18.000','2019-06-19 18:11:58.000')
,(4,24,'Eetur.','maxime.jpg',91764,NULL,'2006-08-07 15:24:03.000','2019-06-19 18:11:58.000')
,(1,25,'Cnt.','qui.jpg',90944,NULL,'2000-11-07 15:35:46.000','2019-06-19 18:11:58.000')
,(2,26,'Aam.','eveniet.jpg',317340,NULL,'1999-07-10 01:22:03.000','2019-06-19 18:11:58.000')
,(3,27,'Envel.','incidunt.jpg',0,NULL,'1996-06-24 05:20:00.000','2019-06-19 18:11:58.000')
,(4,28,'As.','eaque.jpg',9525,NULL,'1973-07-27 14:27:31.000','2019-06-19 18:11:58.000')
,(1,29,'Cm.','non.jpg',20697427,NULL,'1999-02-12 16:23:02.000','2019-06-19 18:11:58.000')
,(2,30,'Pas.','et.jpg',263408,NULL,'1977-02-20 10:38:19.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,31,'Vol sit.','et.jpg',4391,NULL,'1976-08-29 01:30:58.000','2019-06-19 18:11:58.000')
,(4,32,'Etam.','odio.jpg',90,NULL,'2011-05-04 15:25:34.000','2019-06-19 18:11:58.000')
,(1,33,'Siesi.','expedita.jpg',87,NULL,'2004-12-04 20:41:26.000','2019-06-19 18:11:58.000')
,(2,34,'Eous  neque.','beatae.jpg',694461,NULL,'2009-07-14 02:12:15.000','2019-06-19 18:11:58.000')
,(3,35,'Liis sed cum.','et.jpg',154603,NULL,'1982-03-22 20:11:50.000','2019-06-19 18:11:58.000')
,(4,36,'Sa expebitis.','tenetur.jpg',6392040,NULL,'2002-02-25 18:09:15.000','2019-06-19 18:11:58.000')
,(1,37,'Utietur.','accusantium.jpg',0,NULL,'2001-12-11 00:20:19.000','2019-06-19 18:11:58.000')
,(2,38,'Ubo quos.','corrupti.jpg',3,NULL,'1985-09-26 10:28:43.000','2019-06-19 18:11:58.000')
,(3,39,'Nahiniti.','tempore.jpg',2896602,NULL,'1986-09-26 20:25:54.000','2019-06-19 18:11:58.000')
,(4,40,'Eaaut.','necessitatibus.jpg',0,NULL,'1992-02-13 22:01:03.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,41,'Doeum.','sapiente.jpg',816152694,NULL,'1990-10-06 08:14:28.000','2019-06-19 18:11:58.000')
,(2,42,'I.','dolorem.jpg',7095,NULL,'1997-02-27 21:12:18.000','2019-06-19 18:11:58.000')
,(3,43,'Ehic.','illo.jpg',1520673,NULL,'1986-07-05 22:35:21.000','2019-06-19 18:11:58.000')
,(4,44,'Di ea.','dignissimos.jpg',548,NULL,'2002-12-21 03:54:14.000','2019-06-19 18:11:58.000')
,(1,45,'Cem.','qui.jpg',7380,NULL,'2016-05-23 13:35:39.000','2019-06-19 18:11:58.000')
,(2,46,'Pt ut.','aut.jpg',14685,NULL,'2009-12-02 01:42:24.000','2019-06-19 18:11:58.000')
,(3,47,'Itima.','laborum.jpg',3,NULL,'2010-12-16 09:47:22.000','2019-06-19 18:11:58.000')
,(4,48,'Qtlla.','consequatur.jpg',490,NULL,'1977-01-14 01:24:52.000','2019-06-19 18:11:58.000')
,(1,49,'Et tur.','quae.jpg',26430194,NULL,'1990-08-09 00:43:45.000','2019-06-19 18:11:58.000')
,(2,50,'Mhui.','nulla.jpg',0,NULL,'1995-04-23 07:55:46.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,51,'Omsimus tempore. Architecto sunt maiores laborum quod laboriosam.','dolorem.jpg',38,NULL,'1976-09-18 10:50:57.000','2019-06-19 18:11:58.000')
,(4,52,'Uam.','dolorum.jpg',447,NULL,'2015-10-20 01:11:46.000','2019-06-19 18:11:58.000')
,(1,53,'Unt.','impedit.jpg',874783484,NULL,'1988-08-22 10:39:27.000','2019-06-19 18:11:58.000')
,(2,54,'Fmis.','voluptas.jpg',86837,NULL,'2010-01-19 21:57:21.000','2019-06-19 18:11:58.000')
,(3,55,'Ceur.','et.jpg',868,NULL,'2014-09-09 19:10:38.000','2019-06-19 18:11:58.000')
,(4,56,'N is sit.','aliquid.jpg',10461638,NULL,'1988-06-16 01:16:35.000','2019-06-19 18:11:58.000')
,(1,57,'Qeum aut.','maiores.jpg',482028,NULL,'2016-05-20 20:16:27.000','2019-06-19 18:11:58.000')
,(2,58,'R rerum.','dolorem.jpg',142917961,NULL,'1974-05-05 20:37:58.000','2019-06-19 18:11:58.000')
,(3,59,'Aluta.','unde.jpg',6099,NULL,'1972-08-24 05:37:28.000','2019-06-19 18:11:58.000')
,(4,60,'Nore.','dignissimos.jpg',783631045,NULL,'2006-11-01 15:16:53.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,61,'Deit vole.','nisi.jpg',914587,NULL,'1983-12-22 21:47:23.000','2019-06-19 18:11:58.000')
,(2,62,'N autem. Expedita rerum nihil aliquam.','sint.jpg',86964,NULL,'2011-09-12 11:05:53.000','2019-06-19 18:11:58.000')
,(3,63,'N.','ipsum.jpg',689891921,NULL,'2008-05-10 05:19:10.000','2019-06-19 18:11:58.000')
,(4,64,'Ane.','velit.jpg',767,NULL,'1981-11-28 00:43:00.000','2019-06-19 18:11:58.000')
,(1,65,'Iillo.','ducimus.jpg',663,NULL,'2005-01-31 02:53:19.000','2019-06-19 18:11:58.000')
,(2,66,'Inm.','mollitia.jpg',66726632,NULL,'1970-10-07 22:45:18.000','2019-06-19 18:11:58.000')
,(3,67,'Pntium.','enim.jpg',213578,NULL,'2015-06-20 15:21:47.000','2019-06-19 18:11:58.000')
,(4,68,'Qitempore.','iure.jpg',0,NULL,'1996-05-24 05:33:17.000','2019-06-19 18:11:58.000')
,(1,69,'Nstias a.','voluptas.jpg',8488,NULL,'1973-03-06 04:36:40.000','2019-06-19 18:11:58.000')
,(2,70,'A.n deb in soluta.','aut.jpg',96,NULL,'2001-09-09 22:19:46.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,71,'Ips.','dicta.jpg',968311915,NULL,'1979-02-24 11:29:37.000','2019-06-19 18:11:58.000')
,(4,72,'Nnt.','voluptate.jpg',985362,NULL,'2018-05-05 17:56:57.000','2019-06-19 18:11:58.000')
,(1,73,'Atrat.','modi.jpg',3,NULL,'2000-10-06 09:42:23.000','2019-06-19 18:11:58.000')
,(2,74,'Si.','possimus.jpg',17341,NULL,'1988-09-11 12:40:20.000','2019-06-19 18:11:58.000')
,(3,75,'Settiae.','eaque.jpg',778,NULL,'2012-12-31 08:29:33.000','2019-06-19 18:11:58.000')
,(4,76,'Qupm. Ilam.','iste.jpg',6,NULL,'1998-12-20 23:58:27.000','2019-06-19 18:11:58.000')
,(1,77,'Sediia ex.','est.jpg',86,NULL,'1981-08-11 16:46:58.000','2019-06-19 18:11:58.000')
,(2,78,'Sciunt.','omnis.jpg',8603,NULL,'1981-11-02 11:26:06.000','2019-06-19 18:11:58.000')
,(3,79,'Seate.','ad.jpg',5346,NULL,'1996-01-26 17:47:20.000','2019-06-19 18:11:58.000')
,(4,80,'Fat sit.','dignissimos.jpg',58481,NULL,'1989-09-23 11:33:51.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(1,81,'Quam.','rerum.jpg',5209165,NULL,'1990-06-19 20:06:13.000','2019-06-19 18:11:58.000')
,(2,82,'Petem.','dolores.jpg',47161319,NULL,'1974-09-03 13:54:26.000','2019-06-19 18:11:58.000')
,(3,83,'Deislpa.','quos.jpg',39321,NULL,'1995-07-10 19:13:21.000','2019-06-19 18:11:58.000')
,(4,84,'Reit non et.','et.jpg',2,NULL,'1971-04-15 17:44:35.000','2019-06-19 18:11:58.000')
,(1,85,'Nisatore.','deserunt.jpg',5929496,NULL,'2004-04-29 20:55:06.000','2019-06-19 18:11:58.000')
,(2,86,'Ea u ullam.','possimus.jpg',92,NULL,'2019-02-23 20:58:44.000','2019-06-19 18:11:58.000')
,(3,87,'Digs.','sint.jpg',141,NULL,'2015-08-30 07:22:54.000','2019-06-19 18:11:58.000')
,(4,88,'Ipspatis.','rem.jpg',74236435,NULL,'1971-12-03 21:35:48.000','2019-06-19 18:11:58.000')
,(1,89,'Dollum.','quo.jpg',258,NULL,'1984-01-05 19:50:11.000','2019-06-19 18:11:58.000')
,(2,90,'Alore.','odio.jpg',163,NULL,'1978-08-29 20:13:55.000','2019-06-19 18:11:58.000')
;
INSERT INTO media (media_type_id,user_id,body,filename,`size`,metadata,created_at,updated_at) VALUES 
(3,91,'Laatae.','autem.jpg',1,NULL,'1988-11-12 22:11:24.000','2019-06-19 18:11:58.000')
,(4,92,'Vetisquia.','neque.jpg',2,NULL,'2009-05-27 09:49:55.000','2019-06-19 18:11:58.000')
,(1,93,'Rex deleciis.','et.jpg',93,NULL,'1987-09-12 21:34:04.000','2019-06-19 18:11:58.000')
,(2,94,'Teborum ut.','quisquam.jpg',5591,NULL,'1998-08-05 08:54:38.000','2019-06-19 18:11:58.000')
,(3,95,'Lam quito.','maiores.jpg',0,NULL,'2007-08-10 00:40:53.000','2019-06-19 18:11:58.000')
,(4,96,'Duit.','ipsum.jpg',667274,NULL,'2011-03-10 23:39:19.000','2019-06-19 18:11:58.000')
,(1,97,'Vo ut placeat.','non.jpg',62,NULL,'1996-01-18 02:10:58.000','2019-06-19 18:11:58.000')
,(2,98,'Qus  earum.','aut.jpg',801927073,NULL,'1980-01-09 06:19:44.000','2019-06-19 18:11:58.000')
,(3,99,'Asd. et.','est.jpg',707,NULL,'1985-07-16 10:26:38.000','2019-06-19 18:11:58.000')
,(4,100,'Dndae.','doloribus.jpg',4,NULL,'2011-08-04 09:10:30.000','2019-06-19 18:11:58.000')
;


CREATE TABLE `profiles` (
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE restrict,
    FOREIGN KEY (photo_id) REFERENCES media(id)
);
INSERT INTO `profiles` VALUES 
('1','f','1976-11-08','1','1970-01-18 03:54:01','Adriannaport'),
('2','f','2011-12-20','2','1994-11-06 23:56:10','North Nettieton'),
('3','m','1994-06-15','3','1975-11-27 02:27:11','Padbergtown'),
('4','f','1979-11-07','4','1994-04-12 04:31:49','Port Rupertville'),
('5','f','1976-04-19','5','1976-07-05 02:25:30','Spencerfort'),
('6','f','1983-09-07','6','1981-06-20 15:54:43','South Woodrowmouth'),
('7','m','2014-07-31','7','1997-06-21 07:52:05','South Jeffereyshire'),
('8','f','1975-03-26','8','2008-08-18 18:23:25','Howeside'),
('9','f','1982-11-01','9','2014-09-29 01:22:26','Loweborough'),
('10','m','1977-05-14','10','1980-03-17 18:17:45','New Nellaside'),
('11','m','1988-10-28','11','2011-08-22 08:31:06','New Skylar'),
('12','f','1994-02-07','12','2015-08-04 16:34:50','South Dameontown'),
('13','f','1998-08-08','13','1978-02-12 03:14:55','North Terencemouth'),
('14','f','1973-11-16','14','2015-03-13 03:01:16','West Wilfordshire'),
('15','m','1979-08-20','15','1983-08-13 03:48:56','North Xavier'),
('16','m','1997-03-17','16','1989-09-08 23:17:00','Port Kayton'),
('17','m','2015-02-25','17','1992-10-29 05:38:24','New Odie'),
('18','f','2011-04-05','18','1981-08-22 06:53:53','South Newton'),
('19','f','1981-01-24','19','1975-08-17 04:48:38','Port Jovanyview'),
('20','f','2010-03-12','20','2008-02-11 09:39:28','Port Adolfoville'),
('21','f','1971-02-01','21','1972-09-21 21:31:09','Kleinbury'),
('22','f','2000-08-30','22','1977-03-15 13:44:30','South Ciara'),
('23','f','1991-08-17','23','1991-10-15 01:01:05','Magdalenahaven'),
('24','m','2008-08-26','24','2016-06-23 23:04:39','Port Jettchester'),
('25','f','2005-03-19','25','2002-11-21 22:26:09','West Juneview'),
('26','m','1970-03-17','26','1995-06-07 00:37:46','South Jose'),
('27','m','2011-01-12','27','1992-03-18 22:28:05','Christinahaven'),
('28','m','2000-01-22','28','2003-06-16 16:15:57','Lednerstad'),
('29','f','1988-02-16','29','1988-02-09 12:47:21','Lisandrofort'),
('30','m','1977-08-16','30','1977-03-09 23:28:37','Sethfort'),
('31','f','1978-11-28','31','2008-01-31 16:16:06','Tessieport'),
('32','f','2004-02-06','32','1995-11-19 13:46:21','Lake Reilly'),
('33','f','2000-05-07','33','1991-11-21 16:14:32','East Rosalinda'),
('34','f','1988-11-22','34','2008-08-17 22:20:26','Lake Henderson'),
('35','f','2008-08-28','35','1991-07-07 07:37:17','Melanyport'),
('36','m','2004-02-05','36','1973-11-04 03:21:50','Bryanaland'),
('37','m','2012-01-21','37','2014-11-25 14:47:51','South Lorenstad'),
('38','f','1999-10-17','38','1990-04-29 04:32:11','Rocioport'),
('39','f','1991-02-16','39','1976-09-18 06:18:30','New Petra'),
('40','m','1993-08-26','40','1976-10-03 19:24:42','Wizabury'),
('41','m','2005-07-31','41','1997-04-11 10:03:16','Port Elton'),
('42','m','2000-01-08','42','1971-02-20 18:14:51','New Hannahchester'),
('43','f','1996-01-09','43','1999-05-18 06:05:39','North Deion'),
('44','f','1976-02-16','44','1997-09-01 08:44:31','Lake Johnpaulport'),
('45','f','2018-10-20','45','1995-04-02 18:37:27','East Ivybury'),
('46','m','1981-03-05','46','1978-01-04 19:53:38','West Zula'),
('47','m','1973-06-27','47','1992-08-24 13:18:15','Medatown'),
('48','f','1974-11-15','48','1992-12-01 00:54:49','Medhursthaven'),
('49','f','1987-11-04','49','1973-10-23 18:53:51','Kileyton'),
('50','m','1971-05-09','50','1974-01-17 03:57:15','East Electaland'),
('51','m','1985-01-12','51','1998-06-20 11:06:11','Isabellaland'),
('52','m','1989-06-05','52','1986-09-23 20:01:28','Lake Houston'),
('53','f','2010-12-11','53','2002-08-02 09:00:39','Lake Mohammad'),
('54','m','1975-05-29','54','1973-09-21 12:52:05','Odessaside'),
('55','m','1996-06-27','55','1974-07-07 05:47:32','West Jordy'),
('56','m','1976-08-28','56','1994-10-13 21:37:38','Laceybury'),
('57','f','2016-05-22','57','2007-10-31 21:36:34','Port Zelmastad'),
('58','f','1999-10-10','58','2003-06-03 17:27:10','Vivienberg'),
('59','m','2008-12-12','59','2015-11-19 11:12:16','West Sibyl'),
('60','m','1999-09-14','60','1981-02-06 04:05:26','Antwantown'),
('61','m','2005-02-09','61','1972-07-02 08:34:26','New Nonaview'),
('62','f','1993-07-09','62','1996-12-19 03:17:29','Hilarioland'),
('63','f','2012-04-04','63','1978-12-23 11:06:08','South Skylarmouth'),
('64','f','2005-10-07','64','2010-10-31 01:21:49','West Bernadine'),
('65','f','1992-11-02','65','1971-10-15 06:36:08','New Kacie'),
('66','m','2009-10-12','66','1993-10-20 16:49:29','New Doylefort'),
('67','f','1982-08-16','67','1990-01-23 22:14:55','West Kellihaven'),
('68','f','2006-05-13','68','1997-04-29 02:49:42','East Ottis'),
('69','m','2003-09-20','69','1987-02-12 08:27:11','Busterfort'),
('70','f','2011-09-09','70','2017-05-04 11:35:24','Kassandrachester'),
('71','f','1979-10-23','71','1993-10-23 12:37:59','North Estelle'),
('72','f','1978-07-10','72','1990-09-16 18:57:43','Sonyachester'),
('73','m','1993-07-13','73','1992-08-10 05:04:44','West Mozelle'),
('74','m','1977-12-04','74','2009-09-19 18:30:49','South Kayleeton'),
('75','f','1981-08-27','75','1974-12-15 01:52:32','Port Abdul'),
('76','f','1998-02-10','76','2012-05-22 12:05:10','Lake Kellyland'),
('77','m','1973-10-17','77','1984-06-22 12:10:24','West Alice'),
('78','f','2018-10-25','78','1994-03-02 05:14:12','New Danykaberg'),
('79','m','1990-06-28','79','2010-03-06 20:16:13','Port Nickolaschester'),
('80','m','2006-10-08','80','2007-10-20 17:07:41','South Marleeburgh'),
('81','m','1972-02-09','81','2012-02-18 04:33:04','South Elizabethside'),
('82','f','1971-09-28','82','1979-09-10 00:00:36','Volkmanberg'),
('83','m','1987-11-02','83','1994-02-03 03:15:34','South Bernita'),
('84','f','2019-03-20','84','1979-09-08 02:29:57','Rennerfort'),
('85','m','2013-06-30','85','2003-12-31 09:46:13','New Dagmar'),
('86','f','1974-12-29','86','1978-05-13 16:58:53','West Cade'),
('87','f','2006-04-20','87','2006-10-20 00:25:45','New Alycia'),
('88','f','1995-12-10','88','2000-04-28 19:55:37','Hermanmouth'),
('89','f','1972-05-13','89','2010-09-05 17:54:37','East Aliyah'),
('90','m','2006-08-02','90','2007-10-11 03:49:30','Majorland'),
('91','f','1988-11-18','91','2000-05-01 02:03:19','Sydneeport'),
('92','f','1983-07-24','92','1977-10-20 00:24:36','Trinityland'),
('93','m','2015-04-16','93','2003-01-06 17:49:50','South Noeliaton'),
('94','f','2016-09-20','94','1990-07-07 06:28:12','South Kirstin'),
('95','m','1980-10-15','95','1974-09-15 21:30:36','West Coryville'),
('96','m','1984-10-02','96','1972-05-04 20:10:50','Hettingerside'),
('97','f','1971-12-10','97','2005-07-14 15:03:46','Dooleyland'),
('98','f','2005-09-07','98','1990-04-06 05:48:14','Lockmantown'),
('99','f','1996-10-09','99','1981-09-24 02:19:44','Lake Lora'),
('100','f','1990-02-11','100','1974-08-23 15:31:47','Port Mable'); 

CREATE TABLE likes(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()
    , FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE restrict
    , FOREIGN KEY (media_id) REFERENCES media(id)
);
INSERT INTO `likes` VALUES 
('1','1','37','1988-10-14 18:47:39'),
('2','2','45','1988-09-04 16:08:30'),
('3','3','57','1994-07-10 22:07:03'),
('4','4','1','1991-05-12 20:32:08'),
('5','5','2','1978-09-10 14:36:01'),
('6','6','2','1992-04-15 01:27:31'),
('7','7','2','2003-02-03 04:56:27'),
('8','8','8','2017-04-24 09:30:19'),
('9','9','9','1974-02-07 20:53:55'),
('10','10','10','1973-05-11 03:21:40'),
('11','11','11','2008-12-17 13:03:56'),
('12','12','12','1995-07-17 21:22:38'),
('13','13','13','1985-09-07 23:34:21'),
('14','14','14','1973-01-27 23:11:53')
; 