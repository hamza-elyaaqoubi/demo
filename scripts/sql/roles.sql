-- different possible rules
-- ADMIN
-- USER
-- MANAGER
-- ...

-- create user_roles table
CREATE TABLE IF NOT EXISTS `roles` (
  role_id INT(11) NOT NULL AUTO_INCREMENT,
  user_id INT(11) NOT NULL,
  role VARCHAR(45) NOT NULL,
  PRIMARY KEY (role_id),
  UNIQUE KEY uni_user_id_role (role,user_id),
  KEY fk_user_id_idx (user_id),
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
  ENGINE = InnoDB;

-- insertion
INSERT INTO roles (user_id, role)
VALUES (0, 'USER');
INSERT INTO roles (user_id, role)
VALUES (0, 'ADMIN');
INSERT INTO roles (user_id, role)
VALUES (1, 'MANAGER');
INSERT INTO roles (user_id, role)
VALUES (2, 'USER');