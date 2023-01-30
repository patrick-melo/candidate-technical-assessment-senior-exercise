DROP TABLE IF EXISTS person;

CREATE TABLE `person` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,  
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `person` (`id`, `name`, `movie`)
VALUES
	(1, 'Bruce Wayne', 'Batman: The Killing Joke (2016)'),
	(2, 'Bruce Wayne', 'Batman v Superman: Dawn of Justice (2016)'),
	(3, 'Bruce Wayne', 'Batman & Robin (1997)'),
	(4, 'Bruce Wayne', 'Justice League (the Whedon cut, 2017)'),
	(5, 'Bruce Wayne', 'Batman (1966)'),
	(6, 'Bruce Wayne', 'Justice League (the Snyder cut, 2021)'),
	(7, 'Bruce Wayne', 'Batman: Mask of the Phantasm (1993)'),
	(8, 'Bruce Wayne', 'Batman Forever (1995)'),
	(9, 'Bruce Wayne', 'Batman (1989)'),
	(10, 'Bruce Wayne', 'The Lego Batman Movie (2017)'),
	(11, 'Bruce Wayne', 'Batman Returns (1992)'),
	(12, 'Bruce Wayne', 'The Dark Knight Rises (2012)'),
	(13, 'Bruce Wayne', 'The Batman (2022)'),
	(14, 'Bruce Wayne', 'Batman Begins (2005)'),
	(15, 'Bruce Wayne', 'The Dark Knight (2008)'),
	(16, 'Joker', 'Joker (2019)')
;
