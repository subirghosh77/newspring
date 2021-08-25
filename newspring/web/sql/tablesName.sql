/**CREATE TABLE `channels` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`baseurl` varchar(30) NOT NULL,
	`xml` varchar(30) NOT NULL,
	`logopath` varchar(30) NOT NULL,
	`delf` int,
	PRIMARY KEY (`id`)
)**/


/**CREATE TABLE `fav` (
	`id` int NOT NULL AUTO_INCREMENT,r
	`userid` int NOT NULL,
	`newsid` int NOT NULL,
	`delf` int,
	PRIMARY KEY (`id`)
)**/


/**CREATE TABLE `news` (
	`id` int NOT NULL AUTO_INCREMENT,
	`title` varchar(30) NOT NULL,
	`link` varchar(30) NOT NULL,
    `description` varchar(30) NOT NULL,
    `pubdate` varchar(30) NOT NULL,
    `guid` varchar(30) NOT NULL,
	`delf` int,
	PRIMARY KEY (`id`)
)**/


/**CREATE TABLE `user` (
	`id` int NOT NULL AUTO_INCREMENT,
	`email` varchar(30) NOT NULL,
	`password` varchar(30) NOT NULL,
    `conpassword` varchar(30) NOT NULL,
	`delf` int,
	PRIMARY KEY (`id`)
)**/
