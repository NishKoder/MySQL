CREATE DATABASE IF NOT EXISTS practice;

DROP DATABASE IF EXISTS practice;

CREATE TABLE users(
	user_id INT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255),
    
    CONSTRAINT user_email_name UNIQUE(name,email),
    CONSTRAINT user_pk PRIMARY KEY(user_id,name)    
);

DROP TABLE users;

CREATE TABLE std(
	student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INTEGER CHECK (age > 6 AND age < 18),
    
    CONSTRAINT std_age CHECK(age > 6 AND age < 18)
)


CREATE TABLE customers(
	cid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT orders_cid_fk FOREIGN KEY (cid) REFERENCES customers(cid)
);


CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT orders_cid_fk FOREIGN KEY (cid) REFERENCES customers(cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

ALTER TABLE users ADD COLUMN password VARCHAR(255) NOT NULL UNIQUE AFTER name
ALTER TABLE users DROP COLUMN password

