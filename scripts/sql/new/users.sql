-- create users table
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name_email_key` (`name`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- insertion
INSERT INTO users(firstName, lastName, password, email)
VALUES ('hamza','elyaaqoubi', '123456', 'hamza@demo.fr');

