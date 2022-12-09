CREATE TABLE forums(
    forum_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(60) NOT NULL,
    PRIMARY KEY(forum_id),
    UNIQUE(NAME)
) ENGINE = INNODB; 

CREATE TABLE messages(
    message_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    parent_id INT UNSIGNED NOT NULL DEFAULT 0,
    forum_id TINYINT UNSIGNED NOT NULL,
    user_id MEDIUMINT UNSIGNED NOT NULL,
    SUBJECT VARCHAR(100) NOT NULL,
    body LONGTEXT NOT NULL,
    date_entered DATETIME NOT NULL,
    PRIMARY KEY(message_id),
    INDEX(parent_id),
    INDEX(forum_id),
    INDEX(user_id),
    INDEX(date_entered)
) ENGINE = INNODB; 

CREATE TABLE users(
    user_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    pass CHAR(128) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    email VARCHAR(60) NOT NULL,
    PRIMARY KEY(user_id),
    UNIQUE(username),
    UNIQUE(email),
    INDEX login(pass, email)
) ENGINE = INNODB;
