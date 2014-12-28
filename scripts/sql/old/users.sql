-- create users table
CREATE TABLE IF NOT EXISTS `users` (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (user_id))
  ENGINE = InnoDB;

-- insertion
INSERT INTO users(username,password,enabled)
VALUES ('hamza','123456', TRUE);
INSERT INTO users(username,password,enabled)
VALUES ('alex','123456', TRUE);

