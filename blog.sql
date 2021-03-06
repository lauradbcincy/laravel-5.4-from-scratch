# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23-0ubuntu0.18.04.1)
# Database: blog
# Generation Time: 2018-09-20 21:57:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(12,'2014_10_12_000000_create_users_table',1),
	(13,'2014_10_12_100000_create_password_resets_table',1),
	(14,'2018_09_12_145121_create_tasks_table',1),
	(15,'2018_09_12_174549_create_posts_table',1),
	(16,'2018_09_14_143439_create_comments_table',1),
	(17,'2018_09_20_213318_create_tags_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table post_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tag`;

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`)
VALUES
	(1,6,'my post','post text','2018-09-17 15:40:15','2018-09-17 15:40:15'),
	(2,6,'second post','some more','2018-08-17 15:41:03','2018-09-17 15:41:03'),
	(3,10,'asdf','asdf','2018-09-17 19:48:09','2018-09-17 19:48:09'),
	(4,11,'The Test Post','ipsum stuff','2017-10-18 20:03:37','2018-09-17 20:03:37'),
	(5,24,'foo','bar','2018-09-20 18:16:45','2018-09-20 18:16:45');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Personal','2018-09-20 21:39:25','2018-09-20 21:39:25'),
	(2,'PHP','2018-09-20 21:39:35','2018-09-20 21:39:35');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'John Doe','johndoe@example.com','mypass',NULL,'2018-09-17 14:30:03','2018-09-17 14:30:03'),
	(3,'Jane Doe','jdoe@example.com','mypass','FfXLbm21RfeihMWkpPF5wNbrZl0JaDfYM3mDtHTzeB5obTzbpruyCBpGmfBn','2018-09-17 14:33:31','2018-09-17 14:33:31'),
	(5,'Jane Doe','janedoe@example.com','mypass','1gtCb6gDpNwyuOTvaUhFxMTrFtK1wL76VIolF14iC2LnSXxhp3mimpmiQymc','2018-09-17 14:48:11','2018-09-17 14:48:11'),
	(6,'Test Client','me@myserver.com','mypass',NULL,'2018-09-17 15:25:53','2018-09-17 15:25:53'),
	(7,'Suzy Que','sque@example.com','mypass',NULL,'2018-09-17 16:42:50','2018-09-17 16:42:50'),
	(8,'Suzy Que2','sque2@example.com','mypass',NULL,'2018-09-17 16:47:16','2018-09-17 16:47:16'),
	(9,'Test 01','test01@example.com','$2y$10$M2dM8CTU9wLPm8iwbedAneqIoPRlUx3eF5lEGaIuSHcwf2bbBb6e2','Z1sO17HrLr5rIZKRh5C5TichafgN4UtMifmYcnWFrjDHYWvV7qSknZkWlsAT','2018-09-17 18:27:36','2018-09-17 18:27:36'),
	(10,'Test 02','test02@example.com','$2y$10$OFCBsjro6KROm2yuXAy07ehwnvkC75NtA8NvMQk31osNApmiQvnKG','YQhsdn8oSlNdiehL5mGYuA4453CjmDFeLVtJIBPsBNiXzM5BEFFGfEC3KCdD','2018-09-17 19:04:27','2018-09-17 19:04:27'),
	(11,'Test 03','test03@example.com','$2y$10$GGXg4xxQT0n0fJgZVmxq3.hANi343akP70kKBrONQc0n/O4DHnIbS',NULL,'2018-09-17 20:02:04','2018-09-17 20:02:04'),
	(12,'Test 04','test04@example.com','$2y$10$4o0iec2zSEji3lRZXqfY2OhrMe1xMAOfIqMxTimV9cyWT8khfUoo.','ku93wp8HBPxa5QBANX3NOOnO3D8o90fteztyeOy3FblbybRPLBU4ixB0J2RE','2018-09-18 21:06:45','2018-09-18 21:06:45'),
	(13,'Test 05','test05@example.com','$2y$10$FeRhpYz5FIvS7sXm9s/KnOpLMSqXupQeGoFwIWrxCwNoRPP5c/6ju',NULL,'2018-09-18 21:15:40','2018-09-18 21:15:40'),
	(15,'Test 06','test06@example.com','$2y$10$QprkKvAV9bI.1pzKq7SqOuEYYvdhBNq/I.CgftKkKeFntZtPc6/gy',NULL,'2018-09-18 21:23:36','2018-09-18 21:23:36'),
	(17,'adf','johndoe1@example.com','$2y$10$WTyeUftcol1i69TesVqWsOadrvonpW10UEj6j3Vx45BhFgFe8k8Rq','kDFDhz5yLgT97kyUONkeZ7z9iVQMr0tdb7CYwafurPmgczkeNH6DTxujKcaq','2018-09-20 15:46:48','2018-09-20 15:46:48'),
	(18,'Test 07','test07@example.com','mypass',NULL,'2018-09-20 16:12:33','2018-09-20 16:12:33'),
	(19,'Test 08','test08@example.com','mypass',NULL,'2018-09-20 17:41:53','2018-09-20 17:41:53'),
	(21,'Test 09','test09@example.com','mypass','Ue4eHTjrxA1UcV2pYlvjkfEubEPU8pgz4Cy0zKy1DPfnEf1FNUxJJWNUD0lr','2018-09-20 17:43:21','2018-09-20 17:43:21'),
	(22,'Test 10','test10@example.com','mypass',NULL,'2018-09-20 17:53:18','2018-09-20 17:53:18'),
	(24,'Test 11','test11@example.com','mypass','aZPoe83uyn3A3kOJ1jFYawzlYj28Keu2LsNOupRuij6CPEdm2M9Bp8hocv4e','2018-09-20 17:57:34','2018-09-20 17:57:34');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
