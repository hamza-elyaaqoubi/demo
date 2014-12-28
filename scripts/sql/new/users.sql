-- create users table
CREATE TABLE IF NOT EXISTS `users` (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (id),
  UNIQUE KEY uni_name_email_key (name, email)
  )ENGINE = InnoDB;

-- insertion
INSERT INTO users(name, password, email)
VALUES ('hamza','123456', 'hamza@demo.fr');
INSERT INTO users(name, password, email)
VALUES ('mimi','passDemo', 'mimi@demo.fr');
INSERT INTO users(name, password, email)
VALUES ('test','09876', 'test@demo.fr');


