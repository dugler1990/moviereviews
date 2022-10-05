# File name: C:/Users/dougl/Desktop/Data_Blog/moviereviewsproject/db.sqlite3.sql
# Creation date: 10/03/2022
# Created by SQLite to MySQL 2.3 [Demo]
# --------------------------------------------------
# More conversion tools at http://www.convert-in.com

SET NAMES utf8;

#
# Table structure for table 'auth_group'
#

DROP TABLE IF EXISTS `auth_group` CASCADE;
CREATE TABLE `auth_group` (
  `id` INT NOT NULL,
  `name` VARCHAR(150) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `sqlite_autoindex_auth_group_1` (`name`)
) ENGINE=InnoDB;

#
# Dumping data for table 'auth_group'
#

LOCK TABLES `auth_group` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'auth_group_permissions'
#

DROP TABLE IF EXISTS `auth_group_permissions` CASCADE;
CREATE TABLE `auth_group_permissions` (
  `id` INT NOT NULL,
  `group_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_group_permissions_permission_id_84c5c92e` (`permission_id`),
  INDEX `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  UNIQUE `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`, `permission_id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'auth_group_permissions'
#

LOCK TABLES `auth_group_permissions` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'auth_permission'
#

DROP TABLE IF EXISTS `auth_permission` CASCADE;
CREATE TABLE `auth_permission` (
  `id` INT NOT NULL,
  `content_type_id` INT NOT NULL,
  `codename` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `name` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_permission_content_type_id_2f476e4b` (`content_type_id`),
  UNIQUE `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`, `codename`)
) ENGINE=InnoDB;

#
# Dumping data for table 'auth_permission'
#

LOCK TABLES `auth_permission` WRITE;
INSERT IGNORE INTO `auth_permission`(`id`, `content_type_id`, `codename`, `name`) VALUES(1, 1, 'add_logentry', 'Can add log entry'), (2, 1, 'change_logentry', 'Can change log entry'), (3, 1, 'delete_logentry', 'Can delete log entry'), (4, 1, 'view_logentry', 'Can view log entry'), (5, 2, 'add_permission', 'Can add permission'), (6, 2, 'change_permission', 'Can change permission'), (7, 2, 'delete_permission', 'Can delete permission'), (8, 2, 'view_permission', 'Can view permission'), (9, 3, 'add_group', 'Can add group'), (10, 3, 'change_group', 'Can change group'), (11, 3, 'delete_group', 'Can delete group'), (12, 3, 'view_group', 'Can view group'), (13, 4, 'add_user', 'Can add user'), (14, 4, 'change_user', 'Can change user'), (15, 4, 'delete_user', 'Can delete user'), (16, 4, 'view_user', 'Can view user'), (17, 5, 'add_contenttype', 'Can add content type'), (18, 5, 'change_contenttype', 'Can change content type'), (19, 5, 'delete_contenttype', 'Can delete content type'), (20, 5, 'view_contenttype', 'Can view content type'), (21, 6, 'add_session', 'Can add session'), (22, 6, 'change_session', 'Can change session'), (23, 6, 'delete_session', 'Can delete session'), (24, 6, 'view_session', 'Can view session'), (25, 7, 'add_movie', 'Can add movie'), (26, 7, 'change_movie', 'Can change movie'), (27, 7, 'delete_movie', 'Can delete movie'), (28, 7, 'view_movie', 'Can view movie'), (29, 8, 'add_news', 'Can add news'), (30, 8, 'change_news', 'Can change news'), (31, 8, 'delete_news', 'Can delete news'), (32, 8, 'view_news', 'Can view news');
UNLOCK TABLES;

#
# Table structure for table 'auth_user'
#

DROP TABLE IF EXISTS `auth_user` CASCADE;
CREATE TABLE `auth_user` (
  `id` INT NOT NULL,
  `password` VARCHAR(128) CHARACTER SET utf8 NOT NULL,
  `last_login` DATETIME,
  `is_superuser` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `username` VARCHAR(150) CHARACTER SET utf8 NOT NULL,
  `last_name` VARCHAR(150) CHARACTER SET utf8 NOT NULL,
  `email` VARCHAR(254) CHARACTER SET utf8 NOT NULL,
  `is_staff` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `is_active` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `date_joined` DATETIME NOT NULL,
  `first_name` VARCHAR(150) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `sqlite_autoindex_auth_user_1` (`username`)
) ENGINE=InnoDB;

#
# Dumping data for table 'auth_user'
#

LOCK TABLES `auth_user` WRITE;
INSERT IGNORE INTO `auth_user`(`id`, `password`, `last_login`, `is_superuser`, `username`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `first_name`) VALUES(1, 'pbkdf2_sha256$390000$e86GNckJqKQcFCTxj80kGX$fk/zl3/RoGLWdFxeXEVGPw7MCnzLIb8xX1/3meRNfcQ=', '2022-10-02 10:06:11.156501', 1, 'admin', '', 'douglas.j.martin1990@gmail.com', 1, 1, '2022-10-02 09:48:56.949626', '');
UNLOCK TABLES;

#
# Table structure for table 'auth_user_groups'
#

DROP TABLE IF EXISTS `auth_user_groups` CASCADE;
CREATE TABLE `auth_user_groups` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `group_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_user_groups_group_id_97559544` (`group_id`),
  INDEX `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  UNIQUE `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`, `group_id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'auth_user_groups'
#

LOCK TABLES `auth_user_groups` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'auth_user_user_permissions'
#

DROP TABLE IF EXISTS `auth_user_user_permissions` CASCADE;
CREATE TABLE `auth_user_user_permissions` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`),
  INDEX `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  UNIQUE `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`, `permission_id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'auth_user_user_permissions'
#

LOCK TABLES `auth_user_user_permissions` WRITE;
UNLOCK TABLES;

#
# Table structure for table 'django_admin_log'
#

DROP TABLE IF EXISTS `django_admin_log` CASCADE;
CREATE TABLE `django_admin_log` (
  `id` INT NOT NULL,
  `action_time` DATETIME NOT NULL,
  `object_id` LONGTEXT CHARACTER SET utf8,
  `object_repr` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `change_message` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `content_type_id` INT,
  `user_id` INT NOT NULL,
  `action_flag` LONGTEXT CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `django_admin_log_user_id_c564eba6` (`user_id`),
  INDEX `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'django_admin_log'
#

LOCK TABLES `django_admin_log` WRITE;
INSERT IGNORE INTO `django_admin_log`(`id`, `action_time`, `object_id`, `object_repr`, `change_message`, `content_type_id`, `user_id`, `action_flag`) VALUES(1, '2022-10-02 11:52:26.417395', '1', 'Movie object (1)', '[{"added": {}}]', 7, 1, 1), (2, '2022-10-02 11:59:21.197565', '2', 'Movie object (2)', '[{"added": {}}]', 7, 1, 1), (3, '2022-10-02 11:59:23.011020', '2', 'Movie object (2)', '[]', 7, 1, 2), (4, '2022-10-02 12:46:41.523642', '3', 'Movie object (3)', '[{"added": {}}]', 7, 1, 1), (5, '2022-10-02 12:49:28.286941', '4', 'Movie object (4)', '[{"added": {}}]', 7, 1, 1), (6, '2022-10-02 12:49:37.394658', '1', 'Movie object (1)', '', 7, 1, 3), (7, '2022-10-02 22:20:40.217067', '1', 'News object (1)', '[{"added": {}}]', 8, 1, 1), (8, '2022-10-02 22:26:12.293415', '1', 'News object (1)', '[{"changed": {"fields": ["Body"]}}]', 8, 1, 2), (9, '2022-10-02 22:26:29.713003', '2', 'News object (2)', '[{"added": {}}]', 8, 1, 1);
UNLOCK TABLES;

#
# Table structure for table 'django_content_type'
#

DROP TABLE IF EXISTS `django_content_type` CASCADE;
CREATE TABLE `django_content_type` (
  `id` INT NOT NULL,
  `app_label` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `model` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`, `model`)
) ENGINE=InnoDB;

#
# Dumping data for table 'django_content_type'
#

LOCK TABLES `django_content_type` WRITE;
INSERT IGNORE INTO `django_content_type`(`id`, `app_label`, `model`) VALUES(1, 'admin', 'logentry'), (2, 'auth', 'permission'), (3, 'auth', 'group'), (4, 'auth', 'user'), (5, 'contenttypes', 'contenttype'), (6, 'sessions', 'session'), (7, 'movie', 'movie'), (8, 'news', 'news');
UNLOCK TABLES;

#
# Table structure for table 'django_migrations'
#

DROP TABLE IF EXISTS `django_migrations` CASCADE;
CREATE TABLE `django_migrations` (
  `id` INT NOT NULL,
  `app` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  `name` VARCHAR(255) CHARACTER SET utf8 NOT NULL,
  `applied` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'django_migrations'
#

LOCK TABLES `django_migrations` WRITE;
INSERT IGNORE INTO `django_migrations`(`id`, `app`, `name`, `applied`) VALUES(1, 'contenttypes', '0001_initial', '2022-10-01 22:34:07.381570'), (2, 'auth', '0001_initial', '2022-10-01 22:34:07.406575'), (3, 'admin', '0001_initial', '2022-10-01 22:34:07.425563'), (4, 'admin', '0002_logentry_remove_auto_add', '2022-10-01 22:34:07.443565'), (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-01 22:34:07.464563'), (6, 'contenttypes', '0002_remove_content_type_name', '2022-10-01 22:34:07.494567'), (7, 'auth', '0002_alter_permission_name_max_length', '2022-10-01 22:34:07.510565'), (8, 'auth', '0003_alter_user_email_max_length', '2022-10-01 22:34:07.527619'), (9, 'auth', '0004_alter_user_username_opts', '2022-10-01 22:34:07.550563'), (10, 'auth', '0005_alter_user_last_login_null', '2022-10-01 22:34:07.571578'), (11, 'auth', '0006_require_contenttypes_0002', '2022-10-01 22:34:07.578568'), (12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-01 22:34:07.606563'), (13, 'auth', '0008_alter_user_username_max_length', '2022-10-01 22:34:07.624574'), (14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-01 22:34:07.644572'), (15, 'auth', '0010_alter_group_name_max_length', '2022-10-01 22:34:07.662601'), (16, 'auth', '0011_update_proxy_permissions', '2022-10-01 22:34:07.676581'), (17, 'sessions', '0001_initial', '2022-10-01 22:34:07.686570'), (18, 'movie', '0001_initial', '2022-10-01 22:39:43.780748'), (19, 'auth', '0012_alter_user_first_name_max_length', '2022-10-02 09:47:34.742200'), (20, 'movie', '0002_alter_movie_id', '2022-10-02 13:20:16.109765'), (21, 'news', '0001_initial', '2022-10-02 13:20:16.119764');
UNLOCK TABLES;

#
# Table structure for table 'django_session'
#

DROP TABLE IF EXISTS `django_session` CASCADE;
CREATE TABLE `django_session` (
  `session_key` VARCHAR(40) CHARACTER SET utf8 NOT NULL,
  `session_data` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `expire_date` DATETIME NOT NULL,
  PRIMARY KEY (`session_key`),
  INDEX `django_session_expire_date_a5c62663` (`expire_date`),
  UNIQUE `sqlite_autoindex_django_session_1` (`session_key`)
) ENGINE=InnoDB;

#
# Dumping data for table 'django_session'
#

LOCK TABLES `django_session` WRITE;
INSERT IGNORE INTO `django_session`(`session_key`, `session_data`, `expire_date`) VALUES('gyj6i9ckgje9y45m3hd9gwg5q6bj3z3r', '.eJxVjDEOwjAMRe-SGUU4TmWHkZ0zVK7jkgJqpaadKu4OlTrA-t97f3OtrEtp12pzO2R3ceBOv1sn-rRxB_kh433yOo3LPHR-V_xBq79N2V7Xw_07KFLLtw5nxqhmTBk5UKAEERsyDNBjD0lUTKFDjQ1QYAmRk2ECVkZKBO79AbokNpU:1oevrP:52A9Yy6eRLcYrnNoscKvKrRWtHS_7kwBr3fQtk5y3bE', '2022-10-16 10:06:11.162499');
UNLOCK TABLES;

#
# Table structure for table 'movie_movie'
#

DROP TABLE IF EXISTS `movie_movie` CASCADE;
CREATE TABLE `movie_movie` (
  `id` INT NOT NULL,
  `title` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `description` VARCHAR(250) CHARACTER SET utf8 NOT NULL,
  `image` VARCHAR(100) CHARACTER SET utf8 NOT NULL,
  `url` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'movie_movie'
#

LOCK TABLES `movie_movie` WRITE;
INSERT IGNORE INTO `movie_movie`(`id`, `title`, `description`, `image`, `url`) VALUES(2, 'vivarium', 'psychological horror sci-fi', 'movie/images/vivarium_cover.jpg', ''), (3, 'Cabin in the Woods', 'Horror cliche with a fun twist', 'movie/images/cabin_in_the_woods_cover.jpg', ''), (4, 'Dark City', 'Basically the matrix but released earlier', 'movie/images/dark_city_cover.jpg', '');
UNLOCK TABLES;

#
# Table structure for table 'news_news'
#

DROP TABLE IF EXISTS `news_news` CASCADE;
CREATE TABLE `news_news` (
  `id` INT NOT NULL,
  `headline` VARCHAR(200) CHARACTER SET utf8 NOT NULL,
  `body` LONGTEXT CHARACTER SET utf8 NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

#
# Dumping data for table 'news_news'
#

LOCK TABLES `news_news` WRITE;
INSERT IGNORE INTO `news_news`(`id`, `headline`, `body`, `date`) VALUES(1, 'Real Madrid 1-1 Osasuna: Goals and highlights - LaLiga 22/23', 'Good evening everybody and welcome along to another MARCA in English live blog, this time taking you through the LaLiga match between Real Madrid and Osasuna from the Estadio Santiago Bernabeu.

Real Madrid will look to make it seven wins from seven LaLiga Santander games on Sunday night as they host sixth-place Osasuna.

After a derby win over Atletico Madrid before the international break, they return home carrying a few more injuries but are still favourites to beat the Pamplona club.', '2022-10-02'), (2, 'YEA I MADE A NEWS', 'POOPIEEE', '2022-10-02');
UNLOCK TABLES;
ALTER TABLE `news_news` MODIFY `date` DATE NOT NULL;

#
# Table structure for table 'sqlite_sequence'
#

DROP TABLE IF EXISTS `sqlite_sequence` CASCADE;
CREATE TABLE `sqlite_sequence` (
  `name` LONGTEXT CHARACTER SET utf8,
  `seq` LONGTEXT CHARACTER SET utf8
) ENGINE=InnoDB;

#
# Dumping data for table 'sqlite_sequence'
#

LOCK TABLES `sqlite_sequence` WRITE;
INSERT IGNORE INTO `sqlite_sequence`(`name`, `seq`) VALUES('django_migrations', 21), ('django_admin_log', 9), ('django_content_type', 8), ('auth_permission', 32), ('auth_group', 0), ('auth_user', 1), ('movie_movie', 4), ('news_news', 2);
UNLOCK TABLES;
ALTER TABLE `news_news` MODIFY `date` DATE NOT NULL;
