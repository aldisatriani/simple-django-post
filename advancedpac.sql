-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "advancedpac" ---------------------------
CREATE DATABASE IF NOT EXISTS `advancedpac` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `advancedpac`;
-- ---------------------------------------------------------


-- CREATE TABLE "auth_group" -------------------------------
-- CREATE TABLE "auth_group" -----------------------------------
CREATE TABLE `auth_group` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 80 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `name` UNIQUE( `name` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_group_permissions" -------------------
-- CREATE TABLE "auth_group_permissions" -----------------------
CREATE TABLE `auth_group_permissions` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`group_id` Int( 11 ) NOT NULL,
	`permission_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` UNIQUE( `group_id`, `permission_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_permission" --------------------------
-- CREATE TABLE "auth_permission" ------------------------------
CREATE TABLE `auth_permission` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`content_type_id` Int( 11 ) NOT NULL,
	`codename` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `auth_permission_content_type_id_codename_01ab375a_uniq` UNIQUE( `content_type_id`, `codename` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 22;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_user" --------------------------------
-- CREATE TABLE "auth_user" ------------------------------------
CREATE TABLE `auth_user` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`password` VarChar( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`last_login` DateTime NULL,
	`is_superuser` TinyInt( 1 ) NOT NULL,
	`username` VarChar( 150 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`first_name` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`last_name` VarChar( 150 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`email` VarChar( 254 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`is_staff` TinyInt( 1 ) NOT NULL,
	`is_active` TinyInt( 1 ) NOT NULL,
	`date_joined` DateTime NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `username` UNIQUE( `username` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_user_groups" -------------------------
-- CREATE TABLE "auth_user_groups" -----------------------------
CREATE TABLE `auth_user_groups` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`group_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `auth_user_groups_user_id_group_id_94350c0c_uniq` UNIQUE( `user_id`, `group_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "auth_user_user_permissions" ---------------
-- CREATE TABLE "auth_user_user_permissions" -------------------
CREATE TABLE `auth_user_user_permissions` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`permission_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` UNIQUE( `user_id`, `permission_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "django_admin_log" -------------------------
-- CREATE TABLE "django_admin_log" -----------------------------
CREATE TABLE `django_admin_log` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`action_time` DateTime NOT NULL,
	`object_id` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`object_repr` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`action_flag` Smallint( 5 ) UNSIGNED NOT NULL,
	`change_message` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`content_type_id` Int( 11 ) NULL,
	`user_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "django_content_type" ----------------------
-- CREATE TABLE "django_content_type" --------------------------
CREATE TABLE `django_content_type` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`app_label` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`model` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `django_content_type_app_label_model_76bd3d3b_uniq` UNIQUE( `app_label`, `model` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "django_migrations" ------------------------
-- CREATE TABLE "django_migrations" ----------------------------
CREATE TABLE `django_migrations` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`app` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`applied` DateTime NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 18;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "django_session" ---------------------------
-- CREATE TABLE "django_session" -------------------------------
CREATE TABLE `django_session` ( 
	`session_key` VarChar( 40 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`session_data` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`expire_date` DateTime NOT NULL,
	PRIMARY KEY ( `session_key` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "posts_posts" ------------------------------
-- CREATE TABLE "posts_posts" ----------------------------------
CREATE TABLE `posts_posts` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`title` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`body` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`created_at` DateTime NOT NULL,
	`image` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "auth_group" -------------------------------
-- ---------------------------------------------------------


-- Dump data of "auth_group_permissions" -------------------
-- ---------------------------------------------------------


-- Dump data of "auth_permission" --------------------------
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '1', 'Can add log entry', '1', 'add_logentry' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '2', 'Can change log entry', '1', 'change_logentry' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '3', 'Can delete log entry', '1', 'delete_logentry' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '4', 'Can add permission', '2', 'add_permission' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '5', 'Can change permission', '2', 'change_permission' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '6', 'Can delete permission', '2', 'delete_permission' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '7', 'Can add group', '3', 'add_group' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '8', 'Can change group', '3', 'change_group' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '9', 'Can delete group', '3', 'delete_group' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '10', 'Can add user', '4', 'add_user' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '11', 'Can change user', '4', 'change_user' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '12', 'Can delete user', '4', 'delete_user' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '13', 'Can add content type', '5', 'add_contenttype' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '14', 'Can change content type', '5', 'change_contenttype' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '15', 'Can delete content type', '5', 'delete_contenttype' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '16', 'Can add session', '6', 'add_session' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '17', 'Can change session', '6', 'change_session' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '18', 'Can delete session', '6', 'delete_session' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '19', 'Can add posts', '7', 'add_posts' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '20', 'Can change posts', '7', 'change_posts' );
INSERT INTO `auth_permission`(`id`,`name`,`content_type_id`,`codename`) VALUES ( '21', 'Can delete posts', '7', 'delete_posts' );
-- ---------------------------------------------------------


-- Dump data of "auth_user" --------------------------------
INSERT INTO `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) VALUES ( '1', 'pbkdf2_sha256$100000$WKL9jckskebY$oZlP/tah9y2BG631NBhupqevjY2s/SGMwMZmEu3hMZk=', '2018-03-13 09:08:00.582609', '1', 'admin', '', '', 'admin@atpproject.com', '1', '1', '2018-03-07 07:29:17.051202' );
-- ---------------------------------------------------------


-- Dump data of "auth_user_groups" -------------------------
-- ---------------------------------------------------------


-- Dump data of "auth_user_user_permissions" ---------------
-- ---------------------------------------------------------


-- Dump data of "django_admin_log" -------------------------
INSERT INTO `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES ( '1', '2018-03-07 08:26:03.276651', '1', 'Posts object (1)', '1', '[{"added": {}}]', '7', '1' );
INSERT INTO `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES ( '2', '2018-03-07 08:26:24.818721', '2', 'Posts object (2)', '1', '[{"added": {}}]', '7', '1' );
INSERT INTO `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES ( '3', '2018-03-07 08:52:45.543673', '3', 'Hello World', '1', '[{"added": {}}]', '7', '1' );
INSERT INTO `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES ( '4', '2018-03-08 13:22:30.573927', '4', 'Test Post', '1', '[{"added": {}}]', '7', '1' );
INSERT INTO `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES ( '5', '2018-03-13 09:08:57.083246', '5', 'Image Test Post', '1', '[{"added": {}}]', '7', '1' );
INSERT INTO `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES ( '6', '2018-03-13 09:10:48.031525', '3', 'Hello World', '2', '[{"changed": {"fields": ["image"]}}]', '7', '1' );
-- ---------------------------------------------------------


-- Dump data of "django_content_type" ----------------------
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '1', 'admin', 'logentry' );
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '3', 'auth', 'group' );
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '2', 'auth', 'permission' );
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '4', 'auth', 'user' );
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '5', 'contenttypes', 'contenttype' );
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '7', 'posts', 'posts' );
INSERT INTO `django_content_type`(`id`,`app_label`,`model`) VALUES ( '6', 'sessions', 'session' );
-- ---------------------------------------------------------


-- Dump data of "django_migrations" ------------------------
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '1', 'contenttypes', '0001_initial', '2018-03-07 07:25:08.055612' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '2', 'auth', '0001_initial', '2018-03-07 07:25:16.430615' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '3', 'admin', '0001_initial', '2018-03-07 07:25:18.563247' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '4', 'admin', '0002_logentry_remove_auto_add', '2018-03-07 07:25:18.622582' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '5', 'contenttypes', '0002_remove_content_type_name', '2018-03-07 07:25:19.935283' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '6', 'auth', '0002_alter_permission_name_max_length', '2018-03-07 07:25:20.617966' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '7', 'auth', '0003_alter_user_email_max_length', '2018-03-07 07:25:21.421478' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '8', 'auth', '0004_alter_user_username_opts', '2018-03-07 07:25:21.478463' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '9', 'auth', '0005_alter_user_last_login_null', '2018-03-07 07:25:22.091304' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '10', 'auth', '0006_require_contenttypes_0002', '2018-03-07 07:25:22.136752' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '11', 'auth', '0007_alter_validators_add_error_messages', '2018-03-07 07:25:22.197894' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '12', 'auth', '0008_alter_user_username_max_length', '2018-03-07 07:25:23.733937' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '13', 'auth', '0009_alter_user_last_name_max_length', '2018-03-07 07:25:24.606366' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '14', 'sessions', '0001_initial', '2018-03-07 07:25:25.107743' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '15', 'posts', '0001_initial', '2018-03-07 08:16:31.717335' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '16', 'posts', '0002_auto_20180312_0849', '2018-03-12 08:49:49.163483' );
INSERT INTO `django_migrations`(`id`,`app`,`name`,`applied`) VALUES ( '17', 'posts', '0003_posts_image', '2018-03-13 08:54:57.048864' );
-- ---------------------------------------------------------


-- Dump data of "django_session" ---------------------------
INSERT INTO `django_session`(`session_key`,`session_data`,`expire_date`) VALUES ( '706py0a9fqhq6angmvobj4qfig4w7r0x', 'YTVhZWVkNDdmOWZhMTRkMjdlYmQ4MjgzZTM3NjFkYThlNTBiNjkyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzdkNmEzZmYxOGUxMDZhMGI3ODQ2NzBhMjk3NTIxMTAyZjEzZGJjIn0=', '2018-03-27 09:08:00.684848' );
-- ---------------------------------------------------------


-- Dump data of "posts_posts" ------------------------------
INSERT INTO `posts_posts`(`id`,`title`,`body`,`created_at`,`image`) VALUES ( '1', 'First Post', 'Lorem Ipsum', '2018-03-07 08:25:43.000000', '' );
INSERT INTO `posts_posts`(`id`,`title`,`body`,`created_at`,`image`) VALUES ( '2', 'Post 2', 'Lorem Ipsum dolor sir amet', '2018-03-07 08:26:08.000000', '' );
INSERT INTO `posts_posts`(`id`,`title`,`body`,`created_at`,`image`) VALUES ( '3', 'Hello World', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ornare molestie est, at iaculis turpis suscipit quis. Nulla neque urna, blandit sed tortor at, aliquet scelerisque massa. Ut convallis arcu mi, nec facilisis turpis lobortis consequat. Quisque eu auctor turpis. Fusce nisi leo, laoreet ac ligula a, ullamcorper placerat enim. Cras accumsan nisl ac tincidunt blandit. Integer ornare turpis nisl, tempus viverra sem mollis at.

Nunc ornare a ligula eu viverra. In posuere lacus vel mattis blandit. Nam auctor lacus sed ullamcorper commodo. Pellentesque tempor justo arcu, et scelerisque nunc facilisis eget. Morbi et velit feugiat, placerat est ut, posuere metus. Vestibulum imperdiet risus ante, et auctor felis iaculis laoreet. Sed sit amet elementum ligula. Nunc nunc felis, vulputate in sem hendrerit, semper dictum mi. In molestie nisl elit, non luctus arcu feugiat in. Cras ultricies, purus vel laoreet elementum, tortor magna feugiat felis, quis aliquam elit est at tellus. Sed ut ligula sit amet nulla condimentum laoreet in nec dui.

In vitae malesuada ante, eu auctor neque. Vivamus tempor nec velit vitae pellentesque. Pellentesque et dignissim ante. Sed porta tempor sodales. Morbi sodales tortor non ex volutpat, semper varius ligula commodo. Fusce vehicula maximus mauris, vitae luctus tellus pharetra eu. Nullam elit dui, viverra a interdum in, pulvinar non nibh. Curabitur a vestibulum sapien. Donec vitae ligula arcu. Sed dictum et risus ac suscipit. Praesent id risus vitae sapien malesuada sagittis. Duis pulvinar, est eget bibendum laoreet, turpis nulla efficitur nisi, at gravida ex lectus vitae nisi.

Ut in lacinia tellus. Sed porttitor vel magna sit amet faucibus. Pellentesque ut metus efficitur libero viverra fringilla vitae ac lacus. Cras fringilla mauris sed eros volutpat, id mattis dolor tempus. Cras placerat cursus pretium. Nullam sit amet mauris vestibulum, ornare urna et, porttitor leo. Integer a dictum dui, sed bibendum libero. Sed egestas mi leo, sit amet congue mi malesuada sed. Vivamus auctor tellus sit amet fringilla posuere. Donec feugiat, nulla et rhoncus tempor, libero augue dignissim leo, vel sagittis nibh massa sed arcu. Fusce nec elementum nisi. Sed ultricies scelerisque porta. Ut sit amet pulvinar nulla. Phasellus dictum augue a tortor condimentum, ut feugiat dolor elementum.

Donec ullamcorper tortor vulputate, volutpat orci et, maximus orci. Morbi feugiat bibendum felis sit amet sagittis. Sed vulputate volutpat risus nec tempus. Quisque feugiat accumsan pulvinar. Etiam in orci vitae tortor commodo volutpat a ac tortor. Nam vitae neque quis lectus ultricies volutpat ac vel lectus. Vivamus vel lorem porta, gravida purus eu, suscipit tellus. Suspendisse placerat auctor nisi, non efficitur dolor egestas iaculis. Nam porttitor scelerisque ex, quis rhoncus ante volutpat vitae.', '2018-03-07 08:52:00.000000', 'media/heloworld.png' );
INSERT INTO `posts_posts`(`id`,`title`,`body`,`created_at`,`image`) VALUES ( '4', 'Test Post', 'test post to mysql', '2018-03-08 13:22:00.000000', '' );
INSERT INTO `posts_posts`(`id`,`title`,`body`,`created_at`,`image`) VALUES ( '5', 'Image Test Post', 'Just to make sure if image is posted', '2018-03-13 09:08:46.000000', 'media/man-hands-men-book.jpg' );
-- ---------------------------------------------------------


-- CREATE INDEX "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" 
-- CREATE INDEX "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" 
CREATE INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` USING BTREE ON `auth_group_permissions`( `permission_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "auth_user_groups_group_id_97559544_fk_auth_group_id" 
-- CREATE INDEX "auth_user_groups_group_id_97559544_fk_auth_group_id" 
CREATE INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id` USING BTREE ON `auth_user_groups`( `group_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" 
-- CREATE INDEX "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" 
CREATE INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` USING BTREE ON `auth_user_user_permissions`( `permission_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "django_admin_log_content_type_id_c4bce8eb_fk_django_co" 
-- CREATE INDEX "django_admin_log_content_type_id_c4bce8eb_fk_django_co" 
CREATE INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co` USING BTREE ON `django_admin_log`( `content_type_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "django_admin_log_user_id_c564eba6_fk" -----
-- CREATE INDEX "django_admin_log_user_id_c564eba6_fk" ---------
CREATE INDEX `django_admin_log_user_id_c564eba6_fk` USING BTREE ON `django_admin_log`( `user_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "django_session_expire_date_a5c62663" ------
-- CREATE INDEX "django_session_expire_date_a5c62663" ----------
CREATE INDEX `django_session_expire_date_a5c62663` USING BTREE ON `django_session`( `expire_date` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" 
-- CREATE LINK "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" 
ALTER TABLE `auth_group_permissions`
	ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY ( `permission_id` )
	REFERENCES `auth_permission`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" 
-- CREATE LINK "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" 
ALTER TABLE `auth_group_permissions`
	ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY ( `group_id` )
	REFERENCES `auth_group`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_permission_content_type_id_2f476e4b_fk_django_co" 
-- CREATE LINK "auth_permission_content_type_id_2f476e4b_fk_django_co" 
ALTER TABLE `auth_permission`
	ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY ( `content_type_id` )
	REFERENCES `django_content_type`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_user_groups_group_id_97559544_fk_auth_group_id" 
-- CREATE LINK "auth_user_groups_group_id_97559544_fk_auth_group_id" 
ALTER TABLE `auth_user_groups`
	ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY ( `group_id` )
	REFERENCES `auth_group`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" 
-- CREATE LINK "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" 
ALTER TABLE `auth_user_groups`
	ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY ( `user_id` )
	REFERENCES `auth_user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" 
-- CREATE LINK "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" 
ALTER TABLE `auth_user_user_permissions`
	ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY ( `permission_id` )
	REFERENCES `auth_permission`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" 
-- CREATE LINK "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" 
ALTER TABLE `auth_user_user_permissions`
	ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY ( `user_id` )
	REFERENCES `auth_user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "django_admin_log_content_type_id_c4bce8eb_fk_django_co" 
-- CREATE LINK "django_admin_log_content_type_id_c4bce8eb_fk_django_co" 
ALTER TABLE `django_admin_log`
	ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY ( `content_type_id` )
	REFERENCES `django_content_type`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "django_admin_log_user_id_c564eba6_fk" ------
-- CREATE LINK "django_admin_log_user_id_c564eba6_fk" ----------
ALTER TABLE `django_admin_log`
	ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY ( `user_id` )
	REFERENCES `auth_user`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


