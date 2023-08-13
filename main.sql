CREATE DATABASE iNeuron;

USE iNeuron;

CREATE TABLE EMP(
    EMP_ID INT,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    DOB DATE,
    HIRE_DATE DATE,
    DESIGNATION VARCHAR(100),
    SALARY FLOAT
);

SELECT * FROM `EMP`;

INSERT INTO EMP VALUES(
    1,
    'NISHANT',
    'GUPTA',
    "1993-08-12",
    "2023-08-12",
    "DATA SCIENTIST",
    20000.0
);

INSERT INTO EMP VALUES(
    1,
    'NISHA21',
    'GUPTA11',
    "1993-08-1",
    "2023-08-11",
    "DATA",
    43400.0
);

SELECT * FROM `EMP` WHERE SALARY > 21000 ORDER BY `FIRST_NAME` ASC;

SET SQL_SAFE_UPDATES = 0;
UPDATE `EMP` SET `SALARY`=80000 WHERE `FIRST_NAME`="NISHANT";


ALTER TABLE EMP ADD DEPT VARCHAR(20);

DELETE FROM `EMP` WHERE `EMP_ID`=3



CREATE TABLE customers(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    country VARCHAR(255),
    capital VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO customers VALUES(1,'Nishant', 'India', 'Delhi');
INSERT INTO customers VALUES(2,'Nish', 'India', 'Delhi');
INSERT INTO customers VALUES(3,'Nisha', 'Australia', 'Canbbera');
INSERT INTO customers VALUES(4,'Nishaa', 'Maldives', 'Male');

SELECT * FROM customers;


SELECT * FROM customers WHERE country = 'India' or country = 'Maldives';
SELECT * FROM customers WHERE country != 'India';
SELECT * FROM customers WHERE not country = 'India';



