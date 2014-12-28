-- different possible rules
-- ADMIN
-- USER
-- MANAGER
-- ...

-- create user_roles table
CREATE TABLE IF NOT EXISTS `roles` (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uni_name_id_role (name)
  )ENGINE = InnoDB;

-- insertion
INSERT INTO roles (name)
VALUES ('ADMIN');
INSERT INTO roles (name)
VALUES ('USER');
INSERT INTO roles (name)
VALUES ('MANGER');
