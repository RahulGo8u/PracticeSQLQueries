USE MASTER;
GO
CREATE DATABASE ORG;
GO
USE ORG
GO
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
		(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		('Monika', 'Arora', 100000, CAST('2014-02-20 09:00:00' AS datetime), 'HR'),
		('Niharika', 'Verma', 80000, CAST('2014-06-11 09:00:00' AS datetime), 'Admin'),
		('Vishal', 'Singhal', 300000, CAST('2014-02-20 09:00:00' AS datetime), 'HR'),
		('Amitabh', 'Singh', 500000, CAST('2014-02-20 09:00:00' AS datetime), 'Admin'),
		('Vivek', 'Bhati', 500000, CAST('2014-06-11 09:00:00' AS datetime), 'Admin'),
		('Vipul', 'Diwan', 200000, CAST('2014-06-11 09:00:00' AS datetime), 'Account'),
		('Satish', 'Kumar', 75000, CAST('2014-01-20 09:00:00' AS datetime), 'Account'),
		('Geetika', 'Chauhan', 90000, CAST('2014-04-11 09:00:00' AS datetime), 'Admin');


CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
		(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(1, 5000, CAST('2016-02-20' AS datetime)),
		(2, 3000, CAST('2016-06-11' AS datetime)),
		(3, 4000, CAST('2016-02-20' AS datetime)),
		(1, 4500, CAST('2016-02-20' AS datetime)),
		(2, 3500, CAST('2016-06-11' AS datetime));


CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (1, 'Manager', CAST('2016-02-20 00:00:00' AS datetime)),
 (2, 'Executive', CAST('2016-06-11 00:00:00' AS datetime)),
 (8, 'Executive', CAST('2016-06-11 00:00:00' AS datetime)),
 (5, 'Manager', CAST('2016-06-11 00:00:00' AS datetime)),
 (4, 'Asst. Manager', CAST('2016-06-11 00:00:00' AS datetime)),
 (7, 'Executive', CAST('2016-06-11 00:00:00' AS datetime)),
 (6, 'Lead', CAST('2016-06-11 00:00:00' AS datetime)),
 (3, 'Lead', CAST('2016-06-11 00:00:00' AS datetime));