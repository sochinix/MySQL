#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'qui', '2012-06-22 13:03:20', '2016-03-10 14:11:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nesciunt', '2014-04-25 05:27:44', '2015-03-31 09:16:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'eum', '2012-04-28 19:08:14', '2016-04-12 17:26:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'aliquid', '2019-08-01 12:14:11', '2011-10-18 11:01:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'debitis', '2012-10-03 16:27:58', '2011-10-01 03:54:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'quos', '2011-08-20 15:42:50', '2019-11-15 17:48:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'fugit', '2013-08-28 17:32:55', '2020-09-21 13:36:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'ullam', '2014-12-01 10:22:03', '2013-09-20 14:51:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'corrupti', '2013-04-10 18:12:59', '2013-11-18 04:08:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'placeat', '2021-02-26 17:05:14', '2020-07-13 06:58:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'eius', '2016-07-17 02:09:46', '2016-08-26 00:05:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'architecto', '2015-10-21 04:45:05', '2020-11-29 06:52:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'nemo', '2015-07-15 00:30:42', '2020-05-18 04:04:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'et', '2014-02-10 18:19:18', '2020-02-13 21:07:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'minus', '2020-01-28 02:12:23', '2019-08-09 04:27:14');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2020-07-30 17:20:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 16, '2013-10-01 20:23:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '2014-01-24 04:19:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 46, '2020-05-24 19:25:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2019-02-11 03:25:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 76, '2012-05-26 09:50:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2017-08-01 06:45:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2012-10-15 04:54:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 17, '2019-03-01 10:26:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2013-12-22 17:39:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 47, '2013-10-28 15:48:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2016-02-12 23:56:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 77, '2014-04-12 16:04:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2015-07-26 11:07:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2016-12-25 01:20:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 18, '2014-02-07 16:28:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '2016-06-26 10:11:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 48, '2011-10-27 05:39:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2020-10-24 23:05:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 78, '2011-05-30 20:24:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2011-08-04 06:49:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2013-01-15 19:21:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 19, '2021-03-19 10:00:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2011-10-07 04:28:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 49, '2013-02-21 17:00:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2018-02-03 00:41:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 79, '2014-12-09 08:55:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2013-11-15 08:04:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2019-12-13 03:12:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 20, '2020-03-13 02:01:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '2011-05-03 18:12:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 50, '2018-04-16 21:03:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2013-04-22 19:41:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 80, '2016-09-11 22:11:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2017-03-27 16:22:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2020-01-01 15:43:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 21, '2013-10-19 22:43:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2019-10-13 07:50:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 51, '2019-10-27 18:54:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2019-06-28 19:25:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 81, '2016-09-14 07:48:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2014-08-31 02:16:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2018-07-27 15:24:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 22, '2012-09-11 18:19:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '2014-03-28 11:38:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 52, '2018-04-02 16:20:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2014-11-08 05:19:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 82, '2016-07-24 01:07:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '2012-11-15 16:19:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2017-11-17 13:34:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 23, '2011-12-10 02:28:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2016-02-20 00:33:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 53, '2014-03-27 19:41:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2015-10-06 10:16:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 83, '2018-11-19 08:55:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '2015-12-27 16:20:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2020-04-22 15:43:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 24, '2015-01-02 07:55:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '2016-12-18 17:15:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 54, '2013-03-23 02:50:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2013-07-16 03:33:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 84, '2015-06-02 17:03:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2012-12-04 18:01:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2014-09-13 16:46:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 25, '2015-08-29 07:29:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2016-05-16 19:49:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 55, '2017-07-31 00:24:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2017-07-24 20:44:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 85, '2020-05-19 20:46:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '2014-09-25 19:32:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2013-10-05 04:52:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 26, '2011-05-15 10:05:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 41, '2019-02-07 08:32:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 56, '2018-10-11 09:19:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 71, '2012-11-05 02:53:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 86, '2013-01-23 11:35:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2021-01-13 05:57:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 27, '2011-11-09 04:21:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 42, '2015-09-13 11:41:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 57, '2015-11-21 21:02:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 72, '2017-12-05 06:55:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 87, '2017-03-03 03:50:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2013-02-05 13:46:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 28, '2015-11-08 18:23:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 43, '2019-04-13 19:04:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 58, '2013-01-20 13:26:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 73, '2014-04-18 18:14:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 88, '2014-09-02 20:30:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2011-07-25 16:50:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 29, '2011-05-29 11:06:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 44, '2019-05-03 18:36:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 59, '2014-09-24 22:43:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 74, '2015-05-18 02:54:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 89, '2017-07-04 21:30:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2015-02-27 22:04:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 30, '2018-12-28 17:03:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 45, '2018-04-15 01:56:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 60, '2012-07-06 21:33:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 75, '2017-07-09 09:59:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 90, '2015-12-23 19:17:56');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 66, 1, '2011-06-11 03:25:46', '2017-05-17 04:35:15', '2014-03-09 05:11:41', '2019-02-12 10:54:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 58, 2, '2019-03-12 00:34:11', '2015-04-13 03:47:31', '2015-10-08 21:52:06', '2014-09-10 21:56:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 47, 3, '2014-07-14 03:06:57', '2018-04-14 07:59:35', '2012-05-21 03:03:05', '2013-05-21 03:17:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 77, 4, '2015-07-21 05:29:39', '2012-03-28 15:28:43', '2012-09-02 06:01:13', '2012-10-18 00:10:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 44, 5, '2016-12-29 14:44:20', '2020-06-05 11:16:49', '2019-04-09 05:42:04', '2021-03-21 11:08:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 71, 6, '2014-05-17 00:35:01', '2014-12-05 19:29:22', '2015-01-27 10:10:43', '2012-01-09 02:31:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 94, 7, '2017-01-20 00:07:08', '2016-02-22 02:21:46', '2013-10-10 01:45:27', '2015-11-05 16:54:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 51, 8, '2019-05-13 14:47:29', '2014-09-13 08:45:34', '2017-01-22 15:06:35', '2020-08-28 22:30:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 21, 9, '2020-10-10 00:44:39', '2013-09-11 22:54:23', '2017-03-22 10:07:21', '2016-05-13 17:57:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 16, 10, '2017-10-21 04:40:10', '2015-12-18 09:09:41', '2015-09-14 16:16:09', '2020-07-06 05:01:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 3, 1, '2020-11-01 17:56:32', '2012-08-16 12:49:27', '2017-01-06 22:14:50', '2013-02-19 10:48:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 89, 2, '2012-12-15 21:21:49', '2016-12-20 15:58:11', '2014-09-04 13:06:03', '2013-08-24 21:51:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 79, 3, '2018-07-18 20:45:12', '2012-04-11 22:21:15', '2017-01-28 23:49:44', '2012-03-22 23:35:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 69, 4, '2015-02-04 11:58:46', '2018-09-20 12:53:29', '2017-06-07 07:18:18', '2018-11-02 17:03:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 81, 5, '2019-01-26 04:54:25', '2018-08-29 19:12:26', '2012-08-15 22:30:54', '2018-11-11 16:11:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 67, 6, '2011-10-05 21:44:05', '2019-02-27 01:17:32', '2019-12-09 22:50:56', '2018-04-26 05:44:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 24, 7, '2015-11-29 16:25:43', '2012-09-30 01:23:46', '2019-04-03 07:00:29', '2016-07-19 05:48:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 62, 8, '2017-04-20 16:14:35', '2013-02-06 00:37:53', '2018-01-18 20:29:18', '2017-03-21 17:39:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 61, 9, '2019-01-15 01:34:20', '2019-09-01 11:16:07', '2016-02-04 17:48:42', '2021-03-24 18:33:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 30, 10, '2018-07-10 14:55:59', '2019-11-23 02:03:06', '2013-10-25 03:45:08', '2014-11-17 10:06:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 56, 1, '2014-04-12 18:05:06', '2012-08-05 00:48:03', '2014-09-01 09:25:52', '2017-11-16 08:19:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 65, 2, '2019-07-21 03:49:05', '2018-06-30 18:31:55', '2017-02-03 05:20:45', '2020-09-05 04:09:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 8, 3, '2018-02-03 06:34:38', '2015-10-08 11:50:15', '2016-08-28 19:03:07', '2016-09-09 12:19:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 80, 4, '2019-01-05 13:43:41', '2021-02-01 16:35:19', '2015-01-18 01:53:28', '2013-11-11 21:10:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 70, 5, '2018-07-15 12:51:34', '2019-09-28 02:32:08', '2018-03-24 11:03:11', '2013-02-06 05:29:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 36, 6, '2012-11-02 14:44:26', '2017-10-12 18:28:03', '2015-05-15 02:34:47', '2019-03-19 14:04:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 1, 7, '2014-08-02 02:57:46', '2020-05-18 08:41:40', '2015-02-19 00:20:09', '2017-06-21 18:16:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 96, 8, '2018-05-01 20:11:44', '2013-03-14 20:36:49', '2020-11-19 10:06:14', '2014-10-25 15:48:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 60, 9, '2019-10-10 00:52:50', '2013-04-14 00:12:55', '2019-10-02 02:59:08', '2012-06-20 12:12:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 13, 10, '2017-01-17 02:19:22', '2018-02-24 01:18:19', '2019-10-15 19:02:20', '2018-10-06 08:17:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 46, 1, '2017-07-11 23:32:49', '2015-11-12 19:33:56', '2011-12-24 23:35:35', '2013-08-05 04:42:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 9, 2, '2021-02-02 09:16:31', '2011-07-25 20:08:40', '2013-12-21 01:44:31', '2020-02-13 23:59:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 4, 3, '2014-06-01 18:21:21', '2015-10-17 13:22:39', '2017-05-26 01:16:53', '2017-04-02 00:16:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 12, 4, '2016-11-02 14:44:41', '2014-04-27 18:24:31', '2015-09-25 09:57:14', '2014-08-06 23:05:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 38, 5, '2019-02-09 14:25:14', '2012-07-07 13:02:19', '2014-01-11 11:13:26', '2013-06-02 16:43:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 78, 6, '2019-06-25 02:35:43', '2011-10-11 22:55:37', '2017-08-16 03:22:21', '2015-10-21 21:09:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 55, 7, '2013-12-17 21:53:29', '2020-10-23 14:23:05', '2019-11-04 00:21:42', '2015-07-18 20:20:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 17, 8, '2018-08-31 18:22:33', '2011-06-29 23:17:46', '2016-04-03 20:28:11', '2017-04-20 22:40:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 42, 9, '2015-02-03 05:03:26', '2016-10-09 17:34:29', '2018-07-10 19:01:29', '2019-06-07 03:24:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 99, 10, '2015-10-08 18:47:27', '2016-05-13 12:55:30', '2017-09-04 07:05:26', '2011-08-13 22:01:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 25, 1, '2017-04-01 16:03:25', '2020-09-22 09:44:45', '2013-07-30 07:09:08', '2020-08-28 03:04:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 84, 2, '2016-11-01 22:57:40', '2020-09-04 15:31:41', '2019-03-12 03:25:49', '2011-12-07 13:06:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 40, 3, '2018-03-05 12:51:05', '2016-06-08 13:48:10', '2017-10-05 03:12:53', '2018-09-17 07:49:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 87, 4, '2016-05-07 01:03:21', '2018-09-26 08:08:31', '2016-05-07 12:39:37', '2017-08-22 10:04:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 53, 5, '2014-01-12 12:20:31', '2018-06-28 12:10:27', '2011-05-20 14:02:21', '2014-10-01 03:12:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 92, 6, '2017-08-16 19:19:25', '2016-09-03 15:13:22', '2015-11-12 21:16:58', '2015-09-04 11:39:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 31, 7, '2016-05-07 09:40:08', '2015-08-19 15:25:08', '2011-09-06 02:15:52', '2018-08-29 21:39:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 86, 8, '2016-11-21 14:07:57', '2020-03-27 18:57:49', '2012-10-06 00:48:07', '2019-08-14 11:56:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 22, 9, '2017-07-02 09:35:51', '2013-07-22 11:22:18', '2020-06-16 22:20:32', '2015-10-31 05:06:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 100, 10, '2012-06-08 06:05:07', '2016-08-08 18:21:47', '2013-01-01 14:41:58', '2016-05-27 20:10:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 37, 1, '2017-07-05 01:03:15', '2011-06-02 21:01:16', '2012-12-27 01:00:01', '2012-10-08 12:26:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 34, 2, '2012-05-16 21:32:33', '2020-10-21 00:09:04', '2016-07-31 03:49:46', '2019-03-14 04:29:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 82, 3, '2014-08-06 04:09:03', '2020-09-01 11:19:22', '2012-02-22 04:46:43', '2011-12-13 05:17:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 26, 4, '2013-08-19 23:15:51', '2019-03-19 14:53:30', '2012-05-17 12:44:24', '2020-08-28 02:04:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 35, 5, '2018-03-08 21:41:28', '2018-04-21 15:28:55', '2018-09-10 23:19:00', '2016-10-04 02:02:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 39, 6, '2020-09-12 01:46:10', '2017-05-07 08:32:49', '2020-12-14 07:18:31', '2017-11-20 14:43:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 10, 7, '2017-05-25 01:19:28', '2016-01-11 15:23:11', '2011-08-09 09:00:58', '2020-07-06 02:04:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 43, 8, '2012-03-22 04:00:21', '2016-10-06 18:12:25', '2018-07-13 14:05:01', '2016-10-24 14:43:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 95, 9, '2021-02-25 20:04:28', '2016-04-26 23:19:34', '2018-05-23 08:59:52', '2019-08-16 05:28:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 63, 10, '2011-04-21 05:15:52', '2018-08-03 20:14:49', '2015-11-15 20:45:31', '2015-04-28 13:06:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 52, 1, '2011-11-16 10:20:40', '2018-08-07 12:05:17', '2011-04-28 23:09:54', '2014-11-17 16:37:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 29, 2, '2020-10-08 13:31:50', '2013-09-16 01:11:20', '2016-06-21 23:01:26', '2019-06-25 15:06:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 2, 3, '2016-04-22 11:42:40', '2016-11-08 06:51:58', '2016-12-17 21:49:28', '2012-09-28 13:12:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 18, 4, '2016-05-20 19:08:25', '2013-02-28 03:39:57', '2015-04-30 09:11:20', '2017-12-11 20:29:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 54, 5, '2020-05-21 09:24:39', '2021-03-04 21:38:14', '2020-11-16 20:28:03', '2011-11-29 21:23:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 98, 6, '2018-06-06 14:15:40', '2012-07-05 23:30:55', '2016-01-15 13:43:40', '2020-06-06 01:28:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 14, 7, '2016-09-08 01:05:09', '2021-01-23 09:14:19', '2013-12-08 03:11:13', '2011-12-09 06:33:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 74, 8, '2016-02-04 22:10:03', '2013-12-03 10:34:46', '2016-01-09 18:48:45', '2014-11-01 18:28:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 28, 9, '2020-06-02 16:46:35', '2012-10-27 23:50:35', '2013-04-03 09:21:57', '2011-08-14 04:52:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 91, 10, '2017-02-09 20:03:54', '2013-10-06 10:27:13', '2017-08-06 20:19:27', '2013-11-10 19:42:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 48, 1, '2017-02-11 01:17:42', '2013-06-05 20:50:44', '2013-01-31 08:01:26', '2019-02-05 08:52:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 33, 2, '2020-03-27 10:21:38', '2015-02-08 06:45:20', '2013-01-14 16:09:47', '2013-06-09 15:52:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 3, '2014-07-23 02:42:27', '2017-07-26 05:26:45', '2013-06-29 12:20:40', '2012-10-21 11:59:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 57, 4, '2013-08-10 12:37:56', '2012-11-12 20:55:58', '2015-06-17 01:36:24', '2013-08-25 09:20:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 76, 5, '2016-06-17 15:24:03', '2015-05-12 15:47:18', '2015-05-24 16:30:32', '2017-08-28 17:48:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 6, 6, '2012-12-23 21:24:33', '2014-01-07 04:53:59', '2016-10-24 16:54:15', '2018-07-05 06:12:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 83, 7, '2017-07-09 13:38:11', '2011-08-15 20:12:22', '2013-04-05 13:28:30', '2015-08-30 05:56:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 45, 8, '2013-07-22 11:03:11', '2014-04-18 05:28:41', '2017-03-09 08:00:08', '2013-06-03 17:00:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 15, 9, '2016-10-06 16:07:10', '2016-04-20 18:14:14', '2016-10-20 05:48:33', '2020-02-21 06:48:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 23, 10, '2016-03-06 02:30:12', '2020-11-01 23:12:56', '2017-08-11 00:06:36', '2017-06-23 05:27:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 59, 1, '2019-11-03 03:02:46', '2011-09-27 02:10:41', '2011-09-29 02:15:37', '2021-01-22 13:45:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 75, 2, '2014-06-28 17:10:38', '2020-09-13 07:08:05', '2012-10-31 06:11:07', '2019-05-16 10:48:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 50, 3, '2012-06-13 19:38:42', '2012-02-28 17:07:01', '2020-10-06 13:04:04', '2013-10-26 09:35:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 72, 4, '2019-08-20 23:25:21', '2012-08-18 15:07:54', '2020-10-31 07:20:04', '2017-04-05 13:47:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 32, 5, '2018-09-08 11:13:25', '2012-02-07 09:52:06', '2016-03-30 21:39:35', '2020-09-05 17:50:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 49, 6, '2015-06-28 00:46:38', '2015-11-17 20:08:42', '2018-04-05 00:13:53', '2011-05-08 12:57:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 27, 7, '2020-09-10 20:27:38', '2018-10-13 03:13:54', '2012-01-04 01:33:16', '2018-02-01 02:56:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 64, 8, '2013-08-04 08:19:05', '2018-01-25 01:25:21', '2019-11-05 13:13:28', '2013-08-13 23:12:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 19, 9, '2014-09-03 19:31:58', '2013-08-12 06:54:48', '2020-03-02 00:14:58', '2012-01-30 12:29:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 5, 10, '2011-06-18 03:58:21', '2014-11-26 17:29:22', '2016-05-07 13:17:28', '2015-05-29 12:06:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 93, 1, '2011-06-12 11:36:55', '2021-03-31 01:45:21', '2017-05-28 06:57:21', '2014-05-07 18:24:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 11, 2, '2019-10-10 21:01:01', '2012-04-08 04:29:57', '2013-11-24 19:28:28', '2013-04-07 05:58:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 88, 3, '2017-10-09 05:45:14', '2020-10-10 03:18:23', '2015-02-11 23:08:44', '2017-03-14 05:29:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 97, 4, '2012-08-17 11:24:48', '2011-09-30 04:19:31', '2015-10-16 15:03:45', '2019-01-18 10:20:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 68, 5, '2013-06-11 01:33:58', '2018-03-13 22:36:36', '2016-05-14 23:55:13', '2015-04-21 21:17:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 7, 6, '2013-03-02 20:22:31', '2018-12-16 12:32:07', '2011-10-23 05:25:42', '2013-06-18 07:04:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 90, 7, '2019-07-30 20:57:34', '2011-08-28 04:12:37', '2012-12-31 08:14:00', '2016-11-08 23:22:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 41, 8, '2014-12-06 00:04:57', '2019-06-28 09:11:38', '2011-12-12 12:24:33', '2018-12-03 07:25:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 85, 9, '2016-06-12 19:34:27', '2016-01-30 11:07:11', '2014-02-01 04:26:17', '2011-08-15 22:31:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 20, 10, '2019-04-12 19:50:24', '2015-07-09 02:54:46', '2018-10-30 13:24:57', '2013-07-13 16:17:37');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quo', '2015-03-31 10:51:02', '2018-02-04 10:58:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'officiis', '2016-06-24 23:34:31', '2018-10-30 18:01:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'natus', '2017-07-07 00:47:03', '2018-01-05 19:17:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'odio', '2012-01-19 16:31:42', '2016-01-12 13:19:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'ullam', '2020-10-24 04:22:00', '2019-07-31 06:07:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'iure', '2014-11-11 05:51:10', '2021-03-08 15:43:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'error', '2019-07-06 22:44:36', '2014-09-20 22:13:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'est', '2012-05-08 23:17:01', '2014-10-05 16:21:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'voluptas', '2017-10-21 01:54:00', '2015-11-04 19:22:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'vero', '2017-02-17 19:30:51', '2019-12-26 06:44:41');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (101, 32, 'in', 0, '7', 1, '2014-12-14 21:30:00', '2013-01-24 20:57:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (102, 57, 'numquam', 8, '18235024', 2, '2012-06-04 20:19:35', '2021-03-05 11:10:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (103, 36, 'non', 7, '53381', 3, '2014-01-16 00:38:36', '2011-06-10 19:27:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (104, 97, 'facilis', 281154, '55336608', 1, '2013-10-20 14:32:22', '2021-01-08 19:42:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (105, 27, 'dicta', 326116311, '352', 2, '2015-10-22 21:53:54', '2011-07-23 23:23:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (106, 89, 'tempora', 9100199, '4554', 3, '2015-08-03 04:26:26', '2011-11-30 09:30:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (107, 50, 'est', 387672, '7987448', 1, '2011-11-18 13:22:27', '2017-02-01 10:35:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (108, 11, 'ut', 8, '661', 2, '2013-08-14 16:24:03', '2013-08-08 00:16:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (109, 9, 'sed', 28, '9733598', 3, '2015-03-01 10:13:48', '2016-03-23 04:28:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (110, 40, 'aspernatur', 8, '662', 1, '2016-07-19 10:32:02', '2014-06-17 20:36:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (111, 46, 'velit', 3028, '353648', 2, '2016-07-20 21:20:14', '2014-04-27 16:20:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (112, 51, 'qui', 85, '1826966', 3, '2021-03-23 21:39:37', '2011-08-07 16:03:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (113, 63, 'debitis', 2331906, '93', 1, '2019-02-20 20:52:58', '2016-03-18 22:01:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (114, 61, 'debitis', 9, '264998679', 2, '2015-07-01 21:56:10', '2013-04-12 20:51:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (115, 70, 'sint', 445013, '900', 3, '2020-01-27 01:34:32', '2020-10-06 11:40:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (116, 17, 'vitae', 74961, '1695245', 1, '2011-10-07 07:13:57', '2016-05-02 07:48:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (117, 78, 'veniam', 0, '676', 2, '2014-04-26 18:13:23', '2012-01-08 10:07:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (118, 9, 'vel', 638342, '535564828', 3, '2013-02-22 01:06:04', '2016-04-28 21:49:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (119, 31, 'cumque', 248526, '253', 1, '2020-05-10 22:57:02', '2017-11-22 19:00:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (120, 87, 'est', 87158625, '228493428', 2, '2011-07-14 11:02:21', '2013-11-18 03:58:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (121, 49, 'temporibus', 436174, '20363', 3, '2018-05-09 13:33:15', '2017-01-02 01:25:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (122, 29, 'iure', 30389343, '411382824', 1, '2016-06-21 20:50:56', '2012-04-19 13:58:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (123, 67, 'voluptas', 56632346, '1028', 2, '2014-06-13 18:56:53', '2019-09-21 06:53:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (124, 12, 'sed', 0, '18', 3, '2017-11-28 14:26:46', '2020-11-17 15:20:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (125, 24, 'modi', 9004, '953', 1, '2013-07-25 00:12:57', '2011-12-30 01:33:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (126, 88, 'facere', 77247, '186491', 2, '2012-11-22 13:09:56', '2017-09-04 21:37:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (127, 7, 'repudiandae', 147765900, '21479', 1, '2013-10-18 12:38:50', '2017-01-14 17:56:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (128, 61, 'alias', 1249, '6534837', 2, '2013-08-30 13:51:20', '2014-09-14 23:46:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (129, 13, 'distinctio', 1866, '107263', 3, '2018-08-28 07:51:23', '2012-06-05 05:04:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (130, 97, 'consequuntur', 94471, '30084', 1, '2013-05-27 04:30:15', '2011-10-13 15:11:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (131, 27, 'quis', 24432536, '54', 2, '2020-07-21 01:56:54', '2011-08-22 00:05:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (132, 37, 'facilis', 3207017, '413', 3, '2017-01-18 06:53:54', '2020-08-08 01:19:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (133, 9, 'et', 84026814, '18092', 1, '2011-10-06 07:32:03', '2017-01-19 02:07:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (134, 18, 'fuga', 8336, '6684089', 2, '2017-07-02 10:09:09', '2015-01-30 09:00:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (135, 90, 'rerum', 888900, '9', 1, '2019-10-17 23:24:21', '2014-09-01 05:18:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (136, 73, 'ut', 530471, '119', 2, '2015-02-13 23:47:24', '2019-07-17 08:17:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (137, 70, 'sapiente', 143, '3', 3, '2016-12-21 08:24:57', '2019-02-25 04:55:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (138, 92, 'atque', 18377, '3818131', 1, '2019-05-10 19:48:26', '2012-09-05 22:12:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (139, 46, 'aut', 78, '409', 2, '2016-04-26 18:10:27', '2016-08-30 08:07:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (140, 84, 'vel', 46397, '9437', 1, '2015-07-16 05:44:11', '2014-11-25 01:54:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (141, 30, 'optio', 9, '2753368', 2, '2020-05-25 07:24:16', '2013-06-26 04:33:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (142, 58, 'natus', 77, '40497266', 3, '2019-11-12 21:20:46', '2020-08-02 07:44:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (143, 93, 'quidem', 912076180, '5', 1, '2011-09-22 03:22:35', '2014-07-11 03:35:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (144, 22, 'praesentium', 45994708, '551', 2, '2017-05-07 04:26:39', '2016-09-12 02:45:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (145, 36, 'eligendi', 112, '78326504', 3, '2012-01-23 14:17:04', '2012-12-07 19:45:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (146, 62, 'dolore', 78019722, '46', 2, '2015-06-11 00:00:55', '2012-12-22 14:30:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (147, 19, 'vel', 99622, '985120', 1, '2014-08-26 12:57:48', '2016-07-25 01:47:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (148, 54, 'modi', 188930, '519', 2, '2014-10-31 12:50:16', '2020-08-23 21:00:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (149, 38, 'ut', 1, '953424', 3, '2018-07-18 20:51:11', '2015-12-23 07:16:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (150, 85, 'id', 72681544, '908637772', 1, '2012-04-17 16:20:52', '2018-11-10 08:55:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (151, 31, 'sint', 679, '2722988', 2, '2016-02-02 22:50:04', '2017-02-02 20:11:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (152, 87, 'quos', 269143838, '79364', 3, '2013-08-29 14:00:49', '2020-11-10 05:29:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (153, 40, 'consequatur', 908, '179', 1, '2018-01-14 21:49:54', '2016-10-16 23:37:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (154, 60, 'non', 3776758, '2776158', 2, '2015-04-29 11:42:14', '2011-12-14 17:20:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (155, 89, 'ullam', 6, '279382070', 3, '2012-05-20 18:18:22', '2011-04-30 03:16:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (156, 92, 'ducimus', 234115, '420814732', 1, '2013-12-13 02:07:56', '2013-10-06 04:39:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (157, 57, 'dicta', 926, '470510530', 2, '2017-06-13 23:22:00', '2016-07-12 07:13:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (158, 10, 'praesentium', 529294, '417297424', 2, '2018-08-23 04:58:03', '2018-06-29 12:44:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (159, 6, 'ad', 984931, '547422859', 3, '2020-04-29 10:21:48', '2018-01-14 16:24:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (160, 22, 'autem', 2, '15525640', 1, '2013-10-17 19:24:42', '2020-02-15 12:11:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (161, 55, 'enim', 9049, '2931350', 2, '2016-12-19 13:54:30', '2018-01-26 16:26:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (162, 5, 'dicta', 20147, '2', 3, '2020-03-02 11:09:58', '2018-10-11 18:35:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (163, 61, 'quis', 6649, '4767', 2, '2019-05-16 05:39:53', '2015-01-27 20:32:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (164, 89, 'quis', 27, '78399', 3, '2011-12-26 21:42:35', '2020-04-22 13:17:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (165, 4, 'facilis', 85486037, '3987', 2, '2016-07-30 15:23:20', '2020-08-09 00:56:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (166, 86, 'laboriosam', 8901, '27907', 3, '2014-07-21 06:53:43', '2012-06-08 03:22:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (167, 33, 'nemo', 29998917, '5154', 1, '2016-05-31 02:35:17', '2014-09-18 12:28:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (168, 83, 'et', 34793, '829876763', 2, '2020-12-21 07:40:26', '2012-04-09 12:33:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (169, 54, 'amet', 58235148, '7005', 3, '2013-01-16 12:26:09', '2017-12-30 06:49:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (170, 84, 'iusto', 6067, '7442650', 2, '2019-07-26 16:07:07', '2012-07-26 13:06:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (171, 66, 'blanditiis', 1, '98377501', 3, '2017-05-30 04:56:21', '2014-08-16 21:15:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (172, 2, 'et', 4076, '1063', 1, '2016-10-26 16:04:39', '2014-12-15 08:38:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (173, 59, 'recusandae', 1414, '129098', 3, '2015-08-10 06:08:01', '2018-03-02 05:03:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (174, 100, 'corrupti', 30314, '905105985', 1, '2017-04-29 21:08:52', '2014-07-25 01:56:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (175, 13, 'nostrum', 9229, '999', 2, '2014-05-05 22:23:24', '2019-03-21 17:22:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (176, 94, 'accusantium', 4401994, '30853', 3, '2015-03-17 13:50:48', '2011-06-08 18:13:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (177, 57, 'autem', 859, '63209487', 1, '2018-10-18 03:55:55', '2013-07-12 13:53:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (178, 99, 'impedit', 4, '9064', 2, '2013-08-20 12:50:48', '2015-12-25 22:31:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (179, 33, 'eveniet', 5187041, '36043626', 3, '2016-10-30 15:15:07', '2015-05-26 14:37:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (180, 7, 'aut', 0, '795938', 1, '2018-03-17 14:21:53', '2016-10-07 00:18:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (181, 59, 'quas', 750, '1', 2, '2011-10-28 21:12:56', '2019-10-21 11:21:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (182, 63, 'voluptatem', 462116, '1', 1, '2015-08-15 16:59:35', '2013-06-06 02:56:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (183, 57, 'dolores', 748035267, '820', 2, '2020-03-19 14:58:37', '2012-07-18 22:02:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (184, 83, 'quo', 209, '5246', 3, '2018-07-14 16:48:44', '2012-08-27 02:51:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (185, 45, 'voluptate', 95643, '387', 2, '2020-09-22 11:59:02', '2018-06-17 08:48:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (186, 24, 'est', 7488011, '5739', 3, '2013-04-11 11:44:33', '2020-09-02 08:42:47');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'video', '2020-06-17 13:20:19', '2020-07-13 12:44:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '2019-02-06 03:37:54', '2015-05-08 16:51:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'photo', '2012-12-19 20:12:00', '2013-02-06 13:18:51');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 3, 19, 'Voluptatem consequatur et quia aut. Eaque in quis expedita accusantium laboriosam iste sit. Reiciendis saepe veniam aliquid sit error. Labore odit molestiae quis ipsa aut.', 0, 1, '2013-03-08 04:20:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 48, 73, 'Quod maxime qui sit voluptas. Quia ratione doloremque aut eaque commodi officia veritatis doloribus. Laboriosam nostrum accusamus quis odit.', 0, 0, '2015-12-22 21:53:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 93, 76, 'Neque beatae atque aut consequatur id exercitationem dignissimos. Deserunt rerum vero sit sequi. Commodi ut voluptatem facere officiis natus.', 0, 1, '2014-07-16 18:01:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 64, 46, 'Est quia at voluptatem possimus soluta dolorem dolores et. Ex voluptas laudantium aliquid voluptatum officia impedit quo. Sed sint dignissimos et rem repudiandae quis. Blanditiis laboriosam et laborum similique esse labore aut est.', 1, 1, '2015-03-06 11:48:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 8, 34, 'Dolorum hic repellendus laboriosam. Vel sapiente porro provident nulla. Minus iste aliquam quis repellat sed.', 0, 1, '2018-07-13 02:25:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 39, 97, 'Reiciendis repellat veritatis sint. Quidem quisquam voluptates sequi sapiente nihil recusandae enim.', 0, 0, '2015-05-15 08:38:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 73, 18, 'Quos accusamus autem placeat ab harum velit. Atque dignissimos ipsum in ipsa tempore libero aperiam aspernatur.', 1, 1, '2018-05-16 19:02:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 37, 96, 'Commodi officiis tempore optio animi quia. Quaerat amet consequatur et in aperiam quia non.', 1, 1, '2020-12-30 19:10:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 49, 87, 'Quidem et odit sed. Doloribus dolor voluptas voluptatem commodi atque molestiae cum. Aliquid voluptas et aut est.', 0, 0, '2012-05-10 10:52:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 27, 56, 'Laborum mollitia voluptas aut rerum. Ut sunt dolores voluptatem odit culpa et libero. Amet laudantium non rem est temporibus voluptatem. Ad molestias tempore doloremque maiores provident eaque.', 1, 0, '2017-05-24 05:11:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 65, 34, 'Perferendis accusantium nulla voluptas et repellat. Qui eos doloribus est ducimus. Laboriosam et sed sit maxime sequi. Quasi voluptas deserunt nostrum perferendis dignissimos.', 1, 1, '2018-11-05 16:51:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 99, 92, 'Quod tempore quia iste sunt sit ut. Incidunt adipisci aliquid dolor in. Similique dolores quibusdam aut libero.', 0, 0, '2018-08-06 18:14:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 36, 15, 'Velit sit ipsam aspernatur quia ab voluptas magni. Consequatur et veritatis ut quisquam eius. Harum unde soluta dignissimos sit dolorem reiciendis. Tenetur numquam similique recusandae.', 0, 0, '2012-01-11 22:38:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 94, 75, 'Id assumenda facere et ratione occaecati. Rerum veniam officia omnis est. Nulla sunt architecto hic voluptas aut dolores nihil. Iure et dolor suscipit aliquid qui.', 1, 1, '2014-12-03 05:44:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 13, 85, 'Ut vitae earum impedit rem. Voluptas ducimus ad sed. Quis veritatis nam aliquid. Esse dolorem pariatur quaerat ut rerum voluptatum.', 1, 0, '2016-04-10 22:16:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 62, 65, 'Ipsum illo ratione qui dicta. Odio suscipit sunt ad aliquam asperiores pariatur. Qui consequatur dolor necessitatibus voluptatum necessitatibus ipsam soluta.', 0, 1, '2020-05-09 19:53:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 46, 99, 'Rem minus molestiae fuga rerum repellendus inventore iure rerum. Cupiditate quod accusamus voluptatibus nisi reprehenderit tempore ducimus. Ipsam ut dolores dolore voluptas enim.', 0, 1, '2012-01-30 22:39:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 88, 77, 'Aut et temporibus repudiandae est reiciendis perspiciatis. Eum sed illum fuga consequatur sequi rerum non reprehenderit. Unde vero provident atque molestiae rerum. Reiciendis nam atque quae eos ea eos eveniet.', 1, 0, '2019-12-03 01:16:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 64, 1, 'Vero ad suscipit eos in cumque. Neque sequi est quisquam maiores velit. Quos nihil quae id rerum sint doloremque.', 1, 0, '2013-12-20 15:13:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 9, 16, 'Molestiae est autem dolor at omnis quasi. Voluptatum alias perspiciatis dolorem autem aut. Dolorem similique optio explicabo et omnis. Praesentium quos earum libero maiores ipsum.', 0, 0, '2014-11-04 18:11:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 11, 44, 'Delectus debitis deserunt explicabo maiores alias reprehenderit. Enim earum et quaerat modi. Voluptatum voluptatum deserunt odio non. Rerum quia est perspiciatis vitae explicabo.', 0, 0, '2015-07-03 02:03:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 76, 100, 'At doloribus praesentium quia eum. Quia voluptatum dolores voluptates hic doloremque aut sequi. Soluta ut illo nesciunt id ad rerum aut ut.', 1, 0, '2017-04-02 16:50:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 93, 32, 'Neque incidunt numquam facere corrupti laudantium et. Quisquam nostrum optio nihil consequatur voluptatem non. Eligendi non beatae modi necessitatibus quas et. Ullam in voluptas magni vel quis esse quia. Expedita illo laboriosam rem fugiat enim esse placeat.', 1, 1, '2019-01-06 22:25:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 29, 4, 'Voluptas ipsum velit quo ex. Quos quae nobis rerum. Quae at voluptatum et et illum sapiente fuga. Odit quaerat magni provident asperiores cum rem maiores.', 1, 1, '2012-12-16 23:17:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 74, 'Dicta alias et sed. Sint laborum error omnis id ipsum deleniti autem. Sunt asperiores et minima vel.', 1, 1, '2019-01-15 10:26:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 27, 58, 'Ipsam corrupti harum ut. Rem inventore porro sit itaque culpa. Illum sed numquam in. Deserunt omnis nobis ipsa esse molestiae ipsam est.', 1, 1, '2017-07-15 15:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 98, 58, 'Veritatis illum sed nulla aut inventore corporis. Sed atque voluptatem qui sed. Hic sed voluptas sint aut distinctio cumque.', 1, 0, '2014-05-07 21:19:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 77, 45, 'Autem reprehenderit voluptatem adipisci aut dolor aut alias. Cum debitis ratione sunt velit vel. Molestiae sint nulla aut maiores sint.', 1, 1, '2016-10-10 09:06:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 65, 27, 'Consequatur ducimus illum ut repellendus porro. Sint quia veniam corporis velit. Quod et amet eligendi architecto voluptas doloribus aut. Delectus et nemo nihil.', 1, 0, '2020-08-14 10:46:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 72, 39, 'Omnis provident mollitia officiis impedit. Officia itaque minus amet porro repellendus ut. Repellendus repudiandae ipsum minima quidem totam non ut.', 1, 0, '2014-07-20 09:00:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 17, 46, 'Cumque ea culpa quaerat minima vel. Quod velit distinctio ratione fuga dolor.', 0, 0, '2020-02-09 17:39:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 24, 55, 'Sapiente ut enim aut illo consequatur. Cumque illum natus suscipit quam autem. Neque magni sed rerum est aut qui.', 1, 1, '2018-01-01 08:14:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 34, 59, 'Sed sed qui aut et reiciendis omnis. Et quibusdam omnis magni aliquid. Qui eveniet itaque quia atque et.', 0, 1, '2018-06-09 14:58:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 63, 4, 'Ut perspiciatis aut harum quidem quaerat delectus eum. Enim dolores autem sint dolor quos est eum necessitatibus. Quia eligendi consequatur libero quia non facere.', 1, 1, '2018-07-11 07:29:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 61, 24, 'Esse et odio fugiat ex. Doloribus quis corrupti explicabo reprehenderit. Consequatur dolore voluptates sed aut. Et sint veniam quis animi.', 1, 0, '2014-12-18 21:13:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 55, 27, 'Temporibus in molestias repellat nisi est delectus. Molestiae sit dolorem numquam odit nostrum accusantium. Minus rem explicabo incidunt blanditiis impedit.', 1, 0, '2015-07-27 08:36:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 9, 58, 'Amet provident quaerat vel accusantium quod. Ad reiciendis ex et. Quasi fuga dolor eveniet itaque et veritatis.', 1, 0, '2011-10-30 05:47:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 27, 29, 'Sit et quod molestias aspernatur. Quis eligendi inventore vel non magnam fuga optio. Ut perferendis voluptatem voluptatem corrupti corrupti. Ipsam accusantium minima ipsa illo velit.', 0, 1, '2019-10-10 07:05:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 1, 91, 'Amet quod natus ut ea nihil consequatur consequatur asperiores. Sit repellendus quam qui unde. Rerum eius sint totam aliquam necessitatibus est iste quae. Eum amet ab doloremque minus voluptate.', 1, 1, '2019-07-31 05:04:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 66, 16, 'Et quis doloribus nihil cupiditate sunt dignissimos sint. Architecto non eaque mollitia sint eius maiores aliquid. Atque maiores voluptas corporis ipsam porro ut.', 1, 1, '2016-03-03 00:20:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 21, 78, 'Ut dolor dolorem culpa temporibus vel laborum. Qui necessitatibus qui architecto. Explicabo vel porro cupiditate reprehenderit fugiat rem perferendis.', 0, 0, '2012-04-13 19:50:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 19, 27, 'Labore nihil non minima sint. Accusantium ex in architecto distinctio voluptatem hic.', 0, 0, '2019-03-26 06:03:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 91, 51, 'Minus autem est expedita eos. Et enim nisi commodi. Eveniet beatae laborum magnam ullam. Consequatur aperiam velit veritatis quo.', 0, 1, '2019-05-24 10:21:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 64, 10, 'Dignissimos eveniet quasi impedit itaque. Quasi dolores impedit et. In qui fugit voluptatem quo non explicabo nam. Amet est omnis autem eos voluptas. Quia iusto quia voluptatem ipsam delectus.', 1, 1, '2015-06-14 10:15:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 69, 69, 'Sit iusto sint veniam accusamus. Nihil ut aut dolores neque quis voluptatem sequi. Earum nam numquam dolorem impedit rerum non et laborum.', 1, 1, '2016-08-18 12:22:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 44, 80, 'Et voluptatem rerum deserunt eaque voluptate architecto porro. Molestias sit praesentium accusamus cupiditate facere. Est perferendis dolor ut perferendis hic.', 0, 0, '2018-02-01 20:54:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 92, 71, 'Accusantium ducimus quos aut est vel laborum. Nihil porro quis dolores rerum quos ullam. Cupiditate et itaque odio aut sunt iure et. Nulla adipisci deleniti excepturi quos laboriosam. Eveniet ut eaque illo voluptates ducimus consequatur voluptatem alias.', 1, 1, '2012-09-22 12:38:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 72, 10, 'Sit rerum voluptatem et magni. Et aut rem sunt et vitae eveniet.', 0, 0, '2011-05-25 05:39:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 96, 42, 'Rem et sit aut deleniti. Suscipit non sunt sunt minima aut autem. Modi repudiandae itaque tenetur.', 1, 0, '2016-07-10 14:52:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 52, 4, 'Minima ut asperiores qui facere aut. Rerum ea facere recusandae. Dolorem totam molestias tenetur unde mollitia. Sunt ullam placeat ut est minus.', 0, 0, '2017-10-23 09:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 99, 62, 'Labore quia voluptas labore. Voluptas quam et aut. Consequatur libero possimus et. Iusto quia accusantium sed quo.', 1, 1, '2013-08-23 20:01:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 23, 77, 'Consequuntur soluta consequuntur labore iure. Quae et impedit dolorem laboriosam aut vitae ullam. Quo et est consequatur sequi et sequi ut. Eos velit quidem rem est minus nostrum ab optio.', 0, 1, '2016-02-04 19:11:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 49, 67, 'Qui omnis velit libero quaerat laudantium soluta sunt. Quisquam id qui laboriosam quibusdam qui. Molestiae quis iure corrupti qui debitis eligendi quidem. Amet natus optio et. Architecto itaque distinctio earum consequuntur.', 1, 0, '2017-08-04 14:00:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 56, 79, 'Ipsam et repellendus voluptatem laudantium. Sunt illo qui et ut unde. Quam quia dicta qui consequatur.', 0, 0, '2017-06-30 17:39:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 51, 5, 'Expedita impedit aut voluptatem amet a error. Hic repellendus quo dolor nobis. Aut eum dolor eum quia sunt doloremque sit.', 0, 0, '2012-10-18 00:17:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 79, 5, 'Et error et dignissimos nam quo qui consequatur. Ex atque est qui illum ullam pariatur quis non. Voluptas autem iste totam.', 1, 0, '2018-06-04 10:16:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 90, 67, 'Est et sunt reprehenderit ullam dolorum. Praesentium et porro rerum enim veritatis. Eum fugiat quo quo saepe.', 1, 1, '2015-05-12 19:58:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 68, 24, 'Quis natus tempore delectus dolores. Ipsam officiis reprehenderit pariatur dolores repudiandae molestias officia porro. Aliquam sint sit soluta ducimus quae eum magnam. Blanditiis et magnam ipsum voluptatibus incidunt.', 0, 0, '2011-06-15 06:47:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 5, 87, 'Aut ipsa dignissimos praesentium dicta. Voluptatem esse earum ea aut dolorum fugiat voluptatem. Rerum deserunt ad corrupti voluptatem ab. Animi veniam nisi dolorem incidunt officia error.', 1, 1, '2018-06-01 21:40:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 14, 37, 'Velit consequatur asperiores porro deleniti ut esse est. Non explicabo necessitatibus consequatur. Sed velit quos sequi ut. Molestiae optio aut fugiat quaerat quos temporibus. Pariatur voluptate quidem quo voluptatum.', 0, 1, '2016-11-15 21:59:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 23, 13, 'Aut aperiam quod ipsum aliquam. Porro cum modi fugiat distinctio qui exercitationem vel. Provident sint voluptas aut.', 1, 1, '2013-05-14 01:19:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 77, 18, 'Qui eaque earum asperiores itaque est sed ratione aut. Sit consequatur rem non facere repudiandae ipsam aut. Unde provident nesciunt ut in. Impedit culpa dicta ea adipisci repudiandae eos tenetur.', 0, 1, '2021-01-07 16:58:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 41, 27, 'Assumenda consequatur similique consequatur optio repellat et inventore. Minima dolorum incidunt sit non vitae.', 1, 1, '2011-12-04 06:51:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 8, 93, 'Error deserunt vitae eaque delectus sit dolorem a. Quaerat molestiae quasi ut et quibusdam consequatur excepturi. Doloremque exercitationem est voluptas harum harum officia.', 0, 0, '2011-07-26 05:52:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 47, 30, 'Asperiores occaecati quo sint voluptas. Explicabo rerum soluta repudiandae eos numquam porro reprehenderit. Omnis est ut voluptatum corporis quo dolor delectus et. Dolor aliquid sed voluptas quidem reiciendis.', 1, 0, '2020-01-18 12:10:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 80, 34, 'Aut et quis perferendis at. Incidunt saepe repellat sint qui voluptas. Dolores illum quis quam. Quos labore facilis quia suscipit reprehenderit.', 0, 1, '2015-07-18 19:22:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 82, 82, 'Quis error vel tempora repellendus id. Nesciunt cumque ut doloribus quisquam. Accusantium in nulla pariatur ad optio porro. Repellendus perferendis optio illum cupiditate esse eum voluptatem.', 1, 1, '2015-01-06 23:43:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 87, 65, 'Est repellat alias deleniti eos sit. Velit sequi totam et occaecati qui. Id laboriosam minus iste aut. Beatae harum laboriosam voluptate est culpa.', 1, 1, '2018-04-13 13:32:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 48, 6, 'Facilis corrupti veniam sapiente dolor. Aut quis eaque libero. Laborum esse quia porro fugit voluptatem rerum.', 1, 0, '2011-05-05 22:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 41, 8, 'Non non laboriosam excepturi modi. Tempora laborum impedit aliquid sit quis.', 0, 0, '2013-06-29 06:46:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 57, 61, 'Sint quam dolores neque rerum omnis enim. Consectetur ut dolore neque ratione dolores. Totam dolorem unde in rem voluptatibus ab. Voluptatem totam deserunt laborum quis sapiente aut.', 1, 1, '2013-01-21 02:45:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 22, 76, 'Praesentium necessitatibus qui odio ratione nostrum inventore optio. Iste ea atque eligendi nostrum ut quo. Blanditiis hic sint fuga rerum ut voluptas.', 1, 1, '2012-12-19 21:08:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 40, 65, 'Blanditiis aliquam occaecati porro quidem corrupti. Explicabo cumque quia dolorem nostrum iste ipsa dolores. Sunt qui exercitationem accusantium iure ut iure. Rerum omnis sit officiis nobis nulla sequi nemo.', 0, 0, '2011-07-01 19:06:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 38, 21, 'Facere quis corrupti quidem quae et officia. Non voluptates non similique. Non amet vitae in illo quia qui dolor.', 1, 0, '2013-02-22 17:55:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 96, 15, 'Qui ducimus non asperiores est pariatur recusandae quia. Aut qui rerum velit accusantium aliquid. Explicabo eos non ut. Eos aut quasi aperiam eos rerum perferendis eum.', 0, 1, '2014-06-16 23:29:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 40, 95, 'Omnis et commodi et facilis possimus illo. Laboriosam ratione dignissimos quo et non. Molestiae adipisci qui consequatur. Qui distinctio quidem eos ut perferendis aut.', 0, 1, '2016-05-11 22:08:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 36, 72, 'Aut tempore dolores labore totam deleniti cupiditate placeat. Sed aut corrupti consequatur vel ut laborum. Est corporis est eos aut eligendi exercitationem. Et veritatis ab iste ea est eum.', 0, 1, '2013-06-28 10:52:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 42, 75, 'Vel et quos dolorem tenetur. Sunt praesentium rerum sit autem qui sint laborum. Repellendus aspernatur consequatur fugiat nostrum.', 1, 1, '2019-07-15 15:03:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 80, 96, 'Omnis et nisi sit fugit id vero deserunt. Vel ipsa ut consequatur consequatur. Maxime perferendis molestias sint impedit ut veniam eum explicabo. Qui non ducimus perspiciatis quia enim quo labore.', 1, 0, '2012-03-30 10:19:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 39, 94, 'Modi hic non animi cupiditate aut aperiam. Dignissimos in doloremque sit ipsam doloribus. Quos voluptatibus voluptatem atque omnis nemo nostrum impedit possimus. Accusantium possimus ea necessitatibus consequuntur.', 0, 1, '2015-02-14 15:14:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 87, 98, 'Est quisquam dicta sapiente ab. Cupiditate maxime pariatur omnis possimus provident. Voluptatem facilis molestias voluptas sit consequatur occaecati. Est blanditiis commodi deleniti magnam officiis corrupti.', 0, 1, '2019-11-19 11:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 98, 76, 'Qui explicabo sint ea atque pariatur sunt. Culpa magnam minus dolore dolorem non facilis. Occaecati fugiat enim ratione unde qui dolorem. Ut non corporis eligendi sint est nihil officia.', 1, 0, '2019-10-30 07:22:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 46, 2, 'Suscipit eum eius qui quia quis qui. Dolorem labore praesentium nobis minus. Aperiam quae praesentium qui vitae cum nesciunt doloremque sed. Et nihil molestias veritatis neque.', 0, 1, '2021-01-26 15:01:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 24, 18, 'Ut velit nostrum vel quia fuga doloremque. Autem minima architecto delectus quisquam et. Id eum et qui.', 1, 1, '2019-10-04 13:27:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 21, 77, 'Officia saepe assumenda hic rerum. Possimus quia adipisci recusandae excepturi est optio quis. Sed hic voluptatem eum eum nihil in esse.', 1, 1, '2020-05-18 18:08:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 2, 33, 'Soluta voluptate accusamus ut eveniet ipsam dolor. Et sunt quod qui quis dolor porro. Qui porro autem alias illo atque sunt.', 0, 1, '2020-11-14 21:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 14, 4, 'Amet qui quis similique nisi reiciendis. Magni ipsa quasi veniam nisi incidunt distinctio tempora. Nesciunt voluptatum quidem voluptatem voluptas voluptatem ut hic exercitationem. Repudiandae eligendi voluptatibus est rem sed eius possimus.', 0, 0, '2014-01-21 09:04:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 52, 89, 'Fuga repellendus perferendis et. Corporis doloribus assumenda est est. Praesentium molestiae laborum et sunt.', 1, 1, '2021-03-06 17:03:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 94, 33, 'Est doloribus blanditiis sint incidunt ullam itaque. Dolores eaque voluptas qui itaque vel quia ab omnis. Libero ut eveniet cumque laudantium velit non.', 0, 0, '2017-09-08 11:42:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 97, 50, 'Aut dolorum nemo vel illum expedita dolorem enim. Ea quis beatae ipsa illum eos aut. Excepturi quos quas possimus vel molestias.', 1, 1, '2016-11-21 06:01:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 12, 49, 'Mollitia quis veniam ab et aliquam ut. Et dolores dignissimos nesciunt id in itaque eum. Ut ipsum quia amet quas rerum. Repellendus velit consequuntur assumenda et voluptas amet. Quis tenetur est cum delectus libero vel aut.', 1, 0, '2017-12-08 04:30:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 43, 82, 'Sed et nisi accusamus enim sit est. Et dolores quia quia ex adipisci vero et. Perspiciatis qui velit ea. Tenetur quaerat et at non qui.', 1, 1, '2017-02-06 03:48:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 65, 53, 'Beatae sunt totam voluptatem voluptates cupiditate architecto. Rerum occaecati consectetur in. Ut quo ipsum occaecati et aspernatur est iusto dolorem. Rerum harum pariatur sed unde odio.', 1, 0, '2018-02-05 12:33:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 67, 21, 'Hic temporibus fugit sit omnis tempore animi. Ut corrupti cumque mollitia odio sed. Quia quis temporibus rerum quo nulla.', 1, 1, '2020-09-02 09:03:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 82, 86, 'Iusto aut quaerat et. Hic qui sunt aut laboriosam inventore. Quas veritatis rerum magni ut.', 1, 1, '2015-05-09 11:07:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 1, 60, 'Et consequatur accusamus soluta harum. Eligendi voluptas et numquam et fuga non sapiente. Laudantium commodi possimus est tenetur odit molestiae. Nihil ut voluptas est praesentium.', 0, 0, '2015-06-10 03:59:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 23, 82, 'Sed dolores unde delectus fuga. Eaque quasi non illum cumque autem quaerat id. Temporibus vel omnis sit libero dicta magni eos.', 1, 0, '2019-11-28 18:12:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 62, 74, 'Suscipit ullam ipsa quos. Perspiciatis vel voluptatibus nihil aut facilis voluptatem. Sapiente ipsa aut voluptatem eum odio assumenda earum. Quam optio ea illo voluptas harum.', 1, 0, '2020-08-24 08:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 48, 54, 'Ipsam optio ducimus rerum est nisi adipisci modi. Suscipit ad eveniet totam qui accusantium corrupti voluptatem ea. Repellendus in odio velit est dolores voluptatem.', 0, 0, '2018-11-08 03:12:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 79, 38, 'A earum itaque nam autem ut. Consequatur rem necessitatibus incidunt fugit sunt harum. Asperiores eos ad qui corporis.', 1, 0, '2018-06-01 01:01:24');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bithday` datetime DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '1986-07-13 00:16:55', 'New Alexandria', 'Iceland', '2011-10-29 14:01:20', '2020-08-29 14:50:33');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1999-04-18 20:20:03', 'Port Claudie', 'Mongolia', '2018-12-04 18:48:16', '2015-08-23 19:42:54');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '1982-12-24 22:55:11', 'New Citlalli', 'Vietnam', '2012-08-30 15:15:38', '2012-01-29 09:32:26');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1972-08-27 16:09:31', 'Prosaccoton', 'Pakistan', '2018-04-26 18:56:26', '2014-04-15 18:44:02');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '1997-06-09 10:34:04', 'Gilbertohaven', 'India', '2014-06-20 01:14:48', '2012-05-31 14:14:25');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'f', '1996-12-29 21:32:23', 'Marcellafurt', 'United States Minor Outlying Islands', '2014-06-25 09:13:33', '2014-12-13 22:03:30');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '2014-01-10 15:37:56', 'Alexandrinefurt', 'Tuvalu', '2017-10-14 00:38:57', '2014-11-06 11:23:09');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1992-03-29 00:57:42', 'Hirthetown', 'Jersey', '2018-04-28 09:37:47', '2014-03-02 07:04:26');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '1980-01-08 15:08:46', 'South Autumnview', 'Bolivia', '2019-09-03 06:02:52', '2021-02-02 20:21:49');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'f', '1972-04-09 18:41:17', 'Connside', 'Sri Lanka', '2014-02-23 00:03:34', '2017-01-12 05:58:00');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '2015-01-30 08:28:15', 'Reingerfurt', 'Cameroon', '2020-08-11 09:48:43', '2011-09-19 23:55:35');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '2002-01-27 22:12:23', 'North Alexandrea', 'Dominican Republic', '2018-06-29 15:58:34', '2015-11-03 06:00:29');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1999-01-29 11:36:49', 'Port Alannaview', 'Syrian Arab Republic', '2013-12-05 22:02:42', '2013-06-17 22:33:06');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'm', '2003-12-02 10:41:18', 'Rogahnshire', 'Turkmenistan', '2021-01-10 14:18:14', '2016-07-02 21:48:54');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '1983-07-30 14:33:15', 'Lake Kayleyshire', 'United States of America', '2015-05-11 00:58:29', '2020-09-01 14:44:57');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'm', '1987-09-25 00:01:27', 'Delaneyview', 'Guadeloupe', '2017-07-27 23:58:13', '2021-04-04 11:55:52');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2014-10-05 09:04:48', 'Towneview', 'Somalia', '2015-02-19 05:15:34', '2014-01-21 05:28:36');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '1992-03-28 10:31:10', 'Kilbackmouth', 'Belize', '2012-02-19 23:28:33', '2018-08-23 08:47:25');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '2011-07-27 18:17:43', 'East Ashlyberg', 'Central African Republic', '2016-05-19 10:23:07', '2018-12-14 08:43:34');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2003-05-08 00:47:54', 'Lowellberg', 'Antarctica (the territory South of 60 deg S)', '2011-12-01 17:51:54', '2020-10-23 03:28:34');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '1985-01-18 03:55:08', 'Frederikburgh', 'Belarus', '2016-08-11 17:28:24', '2014-10-06 17:11:09');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2008-03-18 09:49:36', 'West Romaine', 'Vanuatu', '2019-02-19 20:56:22', '2012-06-28 11:59:39');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '2000-03-13 09:26:23', 'Reynoldsview', 'Honduras', '2016-11-24 16:13:55', '2014-04-21 18:53:33');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '2005-04-20 12:52:32', 'Feeststad', 'Japan', '2018-12-03 09:39:06', '2014-04-25 16:01:10');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '2013-11-13 13:55:50', 'West Aiyanaland', 'Iran', '2011-12-06 17:48:56', '2015-02-28 06:32:38');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '1984-01-28 04:06:13', 'South Nevaland', 'Ukraine', '2017-04-26 04:24:07', '2017-06-15 02:15:25');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '2006-12-21 06:46:57', 'Strackeshire', 'Singapore', '2017-11-29 11:45:20', '2020-10-06 10:55:34');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '1998-12-02 10:06:19', 'Rutherfordberg', 'Norway', '2013-01-12 11:41:10', '2016-05-10 18:44:38');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '1992-06-09 13:18:06', 'Josueland', 'Falkland Islands (Malvinas)', '2016-03-12 18:38:45', '2014-09-05 07:01:43');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1991-07-17 01:18:45', 'Bradleystad', 'Romania', '2017-03-10 02:16:23', '2014-01-15 12:22:03');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'f', '2011-05-12 02:22:48', 'East Buddy', 'Turks and Caicos Islands', '2020-09-25 00:54:12', '2017-04-24 13:11:47');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '1981-06-16 16:41:37', 'West Stefanton', 'Burundi', '2017-01-02 19:08:01', '2020-02-22 05:26:29');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'm', '2009-06-25 00:08:18', 'Huberttown', 'Trinidad and Tobago', '2020-03-02 18:37:00', '2013-11-04 19:24:58');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '2009-08-19 02:19:58', 'West Rockyhaven', 'French Southern Territories', '2017-07-10 22:03:28', '2015-05-17 15:22:01');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '2011-06-06 01:04:48', 'Isabelleshire', 'Zambia', '2015-09-29 00:18:30', '2016-08-25 01:35:57');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '2010-08-10 15:14:28', 'Schoenmouth', 'Kenya', '2017-01-01 05:33:51', '2013-07-21 05:15:07');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1991-03-20 05:22:12', 'Lednermouth', 'Cook Islands', '2014-09-13 19:16:17', '2012-07-30 04:25:50');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '2013-12-31 14:44:59', 'Kautzershire', 'Guinea', '2017-10-26 18:44:54', '2015-02-19 07:54:13');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '1985-02-14 09:29:13', 'Lake Tre', 'Montenegro', '2015-09-01 09:15:22', '2017-08-27 04:58:14');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '1988-07-01 20:16:48', 'Port Eda', 'Chad', '2018-07-06 10:39:55', '2018-03-12 02:16:36');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '2009-06-23 07:25:07', 'East Conradport', 'Sweden', '2020-05-29 10:53:18', '2020-05-06 10:41:30');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '2005-05-31 14:21:20', 'Lake Ted', 'Nepal', '2015-12-25 07:28:16', '2012-12-18 01:31:58');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '2002-05-16 21:46:31', 'Port Annamarieview', 'Madagascar', '2020-12-11 05:28:24', '2015-08-03 22:56:50');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '2003-07-12 00:39:52', 'West Patsyhaven', 'Portugal', '2012-02-09 03:29:09', '2019-02-03 05:14:52');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '2017-11-01 18:40:30', 'Nolanborough', 'Suriname', '2020-01-19 21:00:24', '2015-12-12 15:53:14');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '1986-05-13 23:26:50', 'Port Audreanne', 'Nicaragua', '2019-04-30 12:33:54', '2020-02-25 21:55:39');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'f', '2019-07-02 16:29:35', 'Veumchester', 'Nicaragua', '2020-04-28 06:01:30', '2019-05-08 02:49:24');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '1979-03-11 00:59:46', 'South Kaleighberg', 'Burkina Faso', '2014-07-17 10:45:37', '2015-12-31 02:32:42');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'f', '1994-09-28 09:14:30', 'Gerholdfurt', 'New Caledonia', '2019-07-15 04:07:07', '2012-01-11 05:22:39');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '1987-05-27 10:53:27', 'Lake Zoieside', 'Libyan Arab Jamahiriya', '2020-05-07 00:45:58', '2012-07-03 23:36:30');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '1985-02-15 07:19:46', 'Kassandrafurt', 'Bouvet Island (Bouvetoya)', '2012-05-30 19:34:41', '2018-12-28 09:22:16');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'f', '2001-12-04 12:48:34', 'Turnerburgh', 'Trinidad and Tobago', '2016-06-12 11:28:14', '2011-10-28 12:30:37');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '2014-08-10 18:13:47', 'North Elisha', 'British Virgin Islands', '2015-10-14 01:17:20', '2016-05-27 12:56:40');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '2013-03-15 12:25:45', 'Port Bertram', 'Monaco', '2011-12-02 16:43:55', '2011-10-02 18:25:56');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '2019-09-10 21:27:55', 'New Tiffanyberg', 'Northern Mariana Islands', '2016-11-04 18:13:52', '2020-10-21 13:12:54');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '1981-04-18 20:09:31', 'New Frederiqueborough', 'American Samoa', '2021-04-07 20:16:23', '2012-10-17 04:09:03');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'f', '1986-06-03 13:36:43', 'West Telly', 'Tunisia', '2013-02-26 12:16:55', '2018-02-26 11:02:14');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '2005-02-08 11:32:11', 'South Keon', 'Niger', '2019-12-08 14:34:35', '2020-04-18 15:06:21');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '2004-08-13 04:40:24', 'Towneshire', 'Philippines', '2011-10-29 13:52:19', '2015-01-05 17:58:16');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '1970-02-05 00:22:19', 'Jadonside', 'Afghanistan', '2012-03-17 06:07:31', '2020-05-16 19:15:14');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1975-01-02 06:52:34', 'North Vivienne', 'Sri Lanka', '2017-06-02 18:14:43', '2019-12-28 01:12:37');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '1971-07-14 01:20:11', 'Kielburgh', 'Myanmar', '2020-08-07 01:06:20', '2012-01-02 04:55:26');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '2018-10-08 17:55:10', 'West Kennithfurt', 'Bouvet Island (Bouvetoya)', '2014-02-10 18:17:12', '2013-12-26 05:44:41');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'm', '1991-01-03 01:35:26', 'Daughertyberg', 'Costa Rica', '2013-02-22 13:59:03', '2014-03-05 09:20:36');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '1982-08-28 17:12:25', 'Murazikchester', 'Israel', '2014-01-14 17:14:07', '2019-08-07 12:26:22');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '1994-10-18 23:42:57', 'Murraybury', 'Namibia', '2012-06-23 02:52:03', '2020-09-02 11:25:03');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '2008-01-12 01:29:08', 'Vincentfort', 'Uzbekistan', '2018-01-26 04:59:31', '2021-04-05 08:01:38');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '2013-06-20 14:28:37', 'Herzogville', 'Swaziland', '2016-10-13 22:17:03', '2011-11-27 02:51:58');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'f', '1976-03-04 07:32:34', 'Hodkiewiczshire', 'Korea', '2019-09-17 22:32:05', '2014-05-25 10:29:24');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '1987-04-04 01:46:55', 'East Carolyn', 'Antarctica (the territory South of 60 deg S)', '2012-08-21 17:50:40', '2013-02-13 14:11:25');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'f', '1985-03-17 10:52:20', 'Billview', 'Falkland Islands (Malvinas)', '2017-04-06 17:34:49', '2014-06-14 09:07:36');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '1985-04-24 10:10:29', 'Lubowitzchester', 'Somalia', '2018-11-07 22:40:48', '2017-03-12 00:12:53');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '2011-11-04 13:09:20', 'Lake Kellen', 'Namibia', '2020-03-04 03:33:24', '2011-10-03 00:16:04');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '1991-02-09 19:58:57', 'Port Katrinemouth', 'Korea', '2011-10-14 18:44:34', '2015-10-18 15:43:33');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '2004-06-23 15:05:01', 'Beauton', 'South Georgia and the South Sandwich Islands', '2015-04-07 23:16:49', '2013-12-05 02:37:05');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '1977-09-03 02:18:56', 'Lake Enola', 'Burundi', '2017-09-07 19:45:50', '2016-01-28 17:49:26');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '1998-05-20 15:56:32', 'Kautzerburgh', 'Saudi Arabia', '2015-08-03 03:37:36', '2018-06-22 20:32:44');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1971-12-06 04:24:45', 'East Callie', 'Montserrat', '2020-05-30 23:21:32', '2016-09-01 22:38:05');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '2008-01-22 08:40:44', 'Lake Rudolph', 'Mali', '2017-10-18 22:08:48', '2016-10-07 10:23:56');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '1979-12-20 16:59:14', 'Lake Althea', 'Puerto Rico', '2018-10-29 05:50:42', '2014-11-06 12:05:30');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '1971-02-12 11:06:24', 'South Donavonmouth', 'Guam', '2016-10-21 22:10:46', '2013-04-15 16:16:01');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '1986-07-20 03:07:11', 'Wehnerborough', 'Uganda', '2013-01-09 12:41:50', '2017-06-23 08:51:19');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'f', '1970-12-18 19:05:28', 'Raynorshire', 'Haiti', '2020-06-17 22:02:24', '2017-06-14 11:29:02');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '2009-06-08 21:22:57', 'Dennisshire', 'Kuwait', '2013-08-22 13:49:56', '2018-08-22 21:57:52');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '2011-10-10 22:13:26', 'Lake Liam', 'Guinea-Bissau', '2014-02-13 15:16:20', '2012-01-30 17:36:24');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '1995-10-09 00:26:41', 'South Rosamond', 'Iceland', '2017-06-19 13:27:29', '2018-10-16 19:21:04');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '1983-12-18 20:34:25', 'Millsville', 'Mexico', '2017-05-24 22:27:57', '2020-01-08 01:45:54');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1996-04-06 10:21:48', 'O\'Konfort', 'Guam', '2015-11-04 23:41:15', '2012-08-14 22:46:09');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '1981-09-19 00:39:19', 'Haagbury', 'Reunion', '2020-02-14 09:43:44', '2020-01-22 01:04:57');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '1977-11-22 00:35:13', 'Johnsonborough', 'Cameroon', '2020-08-19 15:32:20', '2018-05-25 10:43:42');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '1977-07-05 20:23:51', 'Lake Theronshire', 'Brunei Darussalam', '2015-06-25 00:11:47', '2015-06-04 09:02:39');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1970-05-16 14:13:46', 'West Audie', 'Andorra', '2013-12-17 04:35:20', '2012-08-08 20:03:51');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '1980-10-19 18:22:03', 'West Floydshire', 'Guyana', '2016-06-14 01:32:01', '2014-08-22 17:44:20');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '2009-01-30 22:04:29', 'North Rosalindbury', 'Myanmar', '2020-05-06 03:53:51', '2019-12-20 13:38:45');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'm', '1978-09-20 02:12:13', 'Brakustown', 'New Caledonia', '2013-09-16 09:04:58', '2012-01-03 17:41:51');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'm', '2005-10-21 01:59:21', 'Rheaberg', 'Mauritania', '2014-12-06 19:21:15', '2011-11-08 00:25:56');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2017-12-12 18:41:57', 'Maybellestad', 'Comoros', '2011-12-07 23:50:36', '2018-06-18 18:18:02');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '1986-10-25 04:22:01', 'South Hugh', 'Russian Federation', '2018-02-07 10:16:43', '2019-10-12 12:14:57');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '2004-04-15 12:37:30', 'Port Darylport', 'Samoa', '2019-08-21 09:52:12', '2012-01-19 09:50:12');
INSERT INTO `profiles` (`user_id`, `gender`, `bithday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '2016-11-27 18:12:34', 'Lake Burleyfort', 'Saint Vincent and the Grenadines', '2017-02-19 17:54:18', '2012-04-17 06:39:19');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Ibrahim', 'Cremin', 'muhammad.hackett@example.net', '(933)095-4714x01128', '2017-02-09 04:40:15', '2013-09-02 19:34:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Darwin', 'Schroeder', 'jaskolski.kayleigh@example.com', '731-349-9986x04986', '2013-06-30 08:22:19', '2016-07-15 02:15:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Clovis', 'Heaney', 'hassie.swift@example.org', '(901)508-0050x834', '2019-06-07 06:29:05', '2020-12-11 02:59:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Chase', 'Fay', 'walsh.herbert@example.org', '(976)505-3567x244', '2013-11-12 07:29:40', '2011-06-26 19:19:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Lucinda', 'Schaefer', 'bayer.norberto@example.com', '410-096-3239', '2016-03-24 17:46:38', '2011-12-04 00:20:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Wilfred', 'Daugherty', 'gaylord.laurine@example.org', '439-435-1018x854', '2020-04-27 22:29:52', '2012-06-09 09:13:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Rafael', 'Dickens', 'johnny43@example.net', '402-361-8765x172', '2019-08-30 23:28:26', '2017-12-17 22:50:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Zaria', 'Steuber', 'macejkovic.efrain@example.com', '(777)869-9576', '2014-04-05 03:21:44', '2018-02-17 14:44:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Antonette', 'Buckridge', 'nicole.zboncak@example.net', '1-368-198-7054', '2015-07-23 22:03:03', '2018-03-17 07:07:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Kade', 'Bernhard', 'fhermiston@example.com', '06784007832', '2012-08-03 13:20:48', '2013-01-25 12:27:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Amy', 'Carroll', 'camryn.gleichner@example.com', '(133)395-2856', '2018-10-13 00:42:32', '2019-12-16 14:10:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Demarco', 'Simonis', 'ebins@example.org', '1-432-644-6876x73443', '2013-05-06 07:02:54', '2020-03-25 09:28:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Aron', 'Gleason', 'lfadel@example.com', '(447)339-2143x167', '2014-01-02 18:07:50', '2016-10-23 22:46:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Hillary', 'Greenfelder', 'ophelia.wilkinson@example.org', '707.735.1373x70239', '2020-07-24 23:00:46', '2015-04-16 20:47:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Gage', 'Bashirian', 'amber33@example.net', '08268841488', '2020-10-07 19:18:04', '2019-03-15 19:00:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Magdalen', 'Harvey', 'ojenkins@example.com', '405-594-1948', '2021-01-08 23:43:03', '2020-12-27 01:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Deborah', 'Ebert', 'bkerluke@example.net', '(555)979-7956x0458', '2016-02-22 07:23:39', '2014-09-19 07:31:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Paula', 'Barrows', 'gabbott@example.com', '258-168-1270x0436', '2017-10-28 11:52:23', '2017-07-14 19:29:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Eric', 'Purdy', 'beer.taylor@example.com', '+67(2)0205105587', '2019-02-02 02:35:14', '2014-03-16 13:05:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Abagail', 'Osinski', 'andreane18@example.com', '06852939579', '2016-04-21 16:53:55', '2017-05-01 08:21:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Chaya', 'Brakus', 'pgerhold@example.com', '966.894.1717', '2018-06-23 01:54:36', '2020-11-15 04:13:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Joshua', 'Bailey', 'boehm.peggie@example.net', '1-277-427-5488x10191', '2014-11-22 17:18:49', '2019-05-06 12:28:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Talia', 'Abshire', 'ikilback@example.net', '1-144-354-0923x77430', '2015-02-09 15:16:47', '2020-10-20 08:34:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Aylin', 'Wisozk', 'gail.daugherty@example.org', '(495)913-8249x702', '2012-04-18 02:40:56', '2017-12-13 09:17:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Elissa', 'Fritsch', 'tbarton@example.net', '+38(4)7687645184', '2019-11-13 20:36:26', '2014-07-31 08:53:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Jenifer', 'Becker', 'adelia.mueller@example.com', '1-521-019-4615x9421', '2012-09-30 18:55:47', '2020-02-12 06:07:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Missouri', 'Swift', 'rosemary.labadie@example.org', '729.313.0980x363', '2012-06-21 17:08:33', '2011-08-28 14:22:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Kira', 'Fisher', 'kelly.wilderman@example.com', '056-633-1666x2957', '2011-04-15 03:13:38', '2018-10-02 23:25:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Linwood', 'Stehr', 'walker.grant@example.org', '(735)883-5972', '2019-02-07 21:12:56', '2012-05-24 20:14:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Oceane', 'McKenzie', 'jaylin14@example.com', '09676628195', '2018-06-05 20:03:39', '2019-11-30 01:29:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Margarette', 'Bashirian', 'juston50@example.org', '06112139279', '2017-10-22 02:55:59', '2015-07-03 16:28:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Toy', 'Nolan', 'stark.nigel@example.org', '1-486-269-8989x45921', '2016-04-18 07:41:34', '2012-03-15 05:54:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Jackie', 'Blick', 'lorenz21@example.net', '504.757.1109', '2013-05-27 04:36:36', '2018-09-10 03:04:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Jerry', 'Dickinson', 'walsh.adriana@example.org', '04842134864', '2020-12-15 09:35:32', '2018-01-07 12:25:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Isobel', 'Collier', 'tmraz@example.net', '933.715.5708x4708', '2013-11-05 12:04:08', '2014-05-03 16:31:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Kenya', 'Gutkowski', 'dillan.altenwerth@example.org', '(712)602-2826', '2013-12-16 19:01:26', '2019-07-31 02:49:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Brice', 'Gaylord', 'chyna03@example.net', '925.682.7073x7542', '2014-09-28 23:12:47', '2019-07-07 15:55:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Concepcion', 'Lang', 'mattie.gleason@example.org', '452-114-2593x43486', '2013-05-15 16:07:39', '2015-06-01 06:24:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Eldon', 'Considine', 'willms.devyn@example.net', '+84(3)0213452434', '2019-12-22 14:41:12', '2012-02-01 20:03:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Ronny', 'Leuschke', 'chandler.mcclure@example.net', '888.043.7228x85253', '2018-06-07 07:21:19', '2017-10-02 21:56:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Ed', 'Kuphal', 'sydney88@example.net', '1-819-140-8741x9004', '2014-05-23 13:47:27', '2017-05-29 07:33:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Ruthe', 'Murray', 'lisandro.cummerata@example.net', '(116)957-3914x569', '2015-10-09 07:39:16', '2015-07-02 15:59:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Clifton', 'Wolff', 'dorcas.tillman@example.net', '252.621.2981', '2011-05-06 09:28:52', '2020-04-15 07:26:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Elyssa', 'Lueilwitz', 'mbosco@example.com', '1-807-846-1748', '2017-04-24 16:13:35', '2020-12-03 14:05:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Lurline', 'Gerlach', 'shanie00@example.net', '877-781-3583x886', '2017-11-20 05:15:06', '2018-05-05 07:59:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Dawson', 'Muller', 'jazmyn.herzog@example.net', '630-914-1661x70886', '2020-04-14 15:39:59', '2019-08-15 23:55:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Kacey', 'Hammes', 'rupert36@example.com', '050-766-3101x283', '2011-11-18 18:47:11', '2020-09-07 00:14:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Jalyn', 'Shanahan', 'trantow.martina@example.org', '1-674-244-6357x97318', '2015-03-25 18:04:57', '2012-06-08 10:49:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Ignacio', 'Block', 'jones.katelyn@example.com', '154.120.6738', '2017-09-26 01:28:17', '2016-01-02 19:11:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Josefina', 'Littel', 'flossie93@example.com', '06473893961', '2016-05-06 08:55:18', '2013-05-03 07:47:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Raleigh', 'Hayes', 'rodriguez.jayden@example.net', '(780)532-6435x4854', '2017-03-16 11:42:37', '2019-06-03 07:35:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Rogers', 'Carroll', 'madelynn75@example.org', '862.234.4373', '2016-07-24 19:56:27', '2012-11-30 06:29:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Richard', 'West', 'yfunk@example.org', '(690)892-6267', '2012-05-10 21:26:21', '2013-06-23 08:32:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Monserrate', 'Renner', 'umurray@example.net', '158-733-6603', '2018-05-24 04:26:43', '2014-10-21 15:31:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Darryl', 'Weber', 'umorissette@example.org', '08192175629', '2017-04-09 17:13:52', '2013-09-03 05:27:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Alaina', 'Nader', 'serenity41@example.org', '1-138-468-6636', '2012-04-25 06:52:05', '2017-03-18 13:39:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Grayce', 'Schamberger', 'jettie03@example.net', '(893)910-7018', '2011-10-25 09:53:28', '2016-03-26 05:07:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Arvel', 'Swaniawski', 'wrosenbaum@example.org', '1-291-992-1033x45497', '2014-03-12 00:59:12', '2011-09-13 04:09:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Betty', 'O\'Keefe', 'nsteuber@example.net', '887-737-8660', '2019-11-23 20:48:53', '2017-09-15 01:45:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Dannie', 'Hudson', 'ischaefer@example.net', '1-666-774-1684', '2014-09-15 13:02:10', '2013-03-12 01:02:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jaron', 'Ledner', 'chesley.batz@example.org', '878-831-6740', '2014-04-15 10:42:17', '2016-10-13 15:44:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Zula', 'Watsica', 'milford87@example.org', '072.166.4697', '2015-11-01 01:42:05', '2011-11-06 01:02:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Christina', 'Wilkinson', 'lowell54@example.com', '581-720-3394x6799', '2016-04-22 04:55:33', '2016-09-21 14:21:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Loma', 'Hills', 'wjohnson@example.com', '1-133-860-8147x8905', '2019-10-23 00:21:08', '2018-04-30 02:43:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Rubye', 'Reynolds', 'lstiedemann@example.net', '1-675-946-1262', '2018-10-12 14:22:07', '2014-07-02 21:58:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Grace', 'Emmerich', 'ajacobi@example.net', '+85(0)4290273334', '2019-08-18 20:46:11', '2018-03-23 22:24:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Brigitte', 'Runolfsson', 'hauck.mikayla@example.net', '565-182-6927', '2020-07-17 13:43:47', '2015-04-17 23:34:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Mateo', 'Franecki', 'kirlin.itzel@example.org', '(409)986-0226x0423', '2016-01-29 12:28:44', '2016-04-01 18:06:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Thaddeus', 'Hudson', 'kerluke.quinten@example.net', '1-928-090-3135x48895', '2020-11-07 03:58:40', '2019-10-18 18:12:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Willa', 'Schuster', 'holly61@example.org', '1-091-645-9504', '2014-10-24 21:50:02', '2012-06-30 08:05:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Akeem', 'Rosenbaum', 'korbin63@example.com', '881.470.3029', '2020-02-04 14:49:25', '2019-12-07 01:04:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Jany', 'Kuvalis', 'kbartoletti@example.org', '733.853.4906', '2015-09-17 00:20:29', '2014-09-03 01:18:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Maddison', 'Medhurst', 'ted.sauer@example.org', '432.650.7742x56865', '2016-05-18 23:16:31', '2020-04-08 09:29:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Chaya', 'Marks', 'vena.morar@example.net', '029.697.7814x2109', '2019-04-06 01:38:31', '2015-12-06 19:54:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Doyle', 'Harvey', 'stokes.rosa@example.org', '106-566-7741', '2019-02-12 06:26:38', '2014-04-08 13:16:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Zachery', 'Reynolds', 'tmitchell@example.com', '029.289.1706x937', '2020-12-28 23:46:03', '2013-04-26 13:28:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Elisa', 'Morissette', 'trace.lebsack@example.com', '1-516-936-4692x558', '2012-12-31 09:06:47', '2016-01-20 22:49:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Floyd', 'Grimes', 'roslyn.legros@example.org', '+10(0)2438869293', '2020-03-26 04:46:01', '2013-12-19 11:59:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Mitchell', 'Wilderman', 'alexandro05@example.net', '1-305-296-0781x660', '2012-04-24 03:17:25', '2013-05-26 20:07:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Lula', 'Williamson', 'jrobel@example.org', '08321754440', '2018-03-21 22:00:19', '2020-11-24 02:28:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Adriana', 'Boyle', 'wanda19@example.org', '502.410.9307x03090', '2013-02-25 14:42:42', '2018-06-17 20:31:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Beulah', 'Lockman', 'thiel.darion@example.net', '+64(8)5095890902', '2014-03-29 16:54:25', '2016-08-06 19:18:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Hershel', 'Schowalter', 'jarrell.murphy@example.org', '1-129-236-2256x578', '2015-08-29 23:47:41', '2012-03-01 20:18:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Shaina', 'Nienow', 'pgreen@example.net', '679-051-0173', '2016-09-19 14:06:07', '2021-01-25 07:56:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Oran', 'Fadel', 'noble97@example.net', '554.998.2612x9047', '2016-10-08 04:34:44', '2015-01-15 21:46:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Vinnie', 'Pfeffer', 'asia01@example.com', '666-677-3604x62856', '2012-11-01 06:58:29', '2015-04-19 22:31:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Easton', 'Ward', 'ibogisich@example.com', '(477)555-6952', '2019-08-05 08:39:52', '2013-10-07 08:27:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Madie', 'McClure', 'yreichel@example.net', '1-151-220-0834x9002', '2014-06-28 15:22:06', '2012-12-10 00:07:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Augustine', 'Wilkinson', 'rosina37@example.net', '146.939.7124', '2019-12-04 11:39:53', '2019-05-03 21:31:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Aniya', 'Breitenberg', 'erling.mckenzie@example.org', '498.652.8686', '2014-01-31 12:15:44', '2012-09-17 21:19:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Akeem', 'Graham', 'caleb46@example.org', '108-709-5431x9972', '2020-05-23 10:41:30', '2017-03-26 21:12:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Lamont', 'Emard', 'rebecca.gleichner@example.net', '512-793-8934', '2016-01-11 18:28:29', '2020-10-14 09:32:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Clovis', 'Kautzer', 'mmarks@example.net', '847-367-5983x42425', '2018-02-28 16:58:39', '2017-02-05 13:57:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Kendra', 'Stiedemann', 'kkirlin@example.org', '(859)975-6161', '2016-08-08 06:57:25', '2013-03-22 08:24:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Ford', 'Ortiz', 'liliana.bosco@example.net', '(786)166-5862x43697', '2018-12-04 06:46:36', '2014-03-06 04:30:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Lucienne', 'Reynolds', 'elisa52@example.org', '913-787-9032x45281', '2012-04-21 15:58:56', '2016-08-01 06:19:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Yvonne', 'Pollich', 'brian43@example.net', '971.292.4426x886', '2017-08-30 04:41:59', '2017-05-21 18:28:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Werner', 'Huels', 'ora.corkery@example.net', '(246)917-2955', '2013-12-23 00:58:20', '2015-08-29 04:40:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Taya', 'Jacobson', 'romaguera.kellen@example.net', '585-684-1561', '2018-05-11 21:38:28', '2019-05-26 05:40:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Lenora', 'Ledner', 'fritsch.arjun@example.net', '954.640.2925x12751', '2018-03-16 15:46:33', '2018-01-18 14:07:19');


