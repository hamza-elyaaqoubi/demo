-- different possible rules
-- ADMIN
-- USER
-- MANAGER
-- ...

-- create user_roles table
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_name_id_role` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- insertion
INSERT INTO roles (name)
VALUES ('ADMIN');
INSERT INTO roles (name)
VALUES ('USER');
INSERT INTO roles (name)
VALUES ('MANGER');
