INSERT INTO `employees_data` (`EMPLOYEE_ID`, `NAME`, `JOB_CODE`, `JOB`, `STATE_CODE`, `HOME_STATE`) VALUES ('E001', 'Alice', 'J01', 'Chef', '26', 'Michigan');

Delete FROM `employees_data`

INSERT INTO `employees_data` (`EMPLOYEE_ID`, `NAME`, `JOB_CODE`, `JOB`, `STATE_CODE`, `HOME_STATE`) VALUES 
('E001', 'Alice', 'J01', 'Chef', '26', 'Michigan'),
(`E001`, `Alice`, `J02`, `Waiter`, 26, `Michigan`),
(`E002`, `Bob`, `J01`, `Chef`, 56, `Wyoming`),
(`E002`, `Bob`, `J03`, `Bartender`, 56, `Wyoming`),
(`E003`, `Alice`, `J01`, `Chef`, 56, `Wyoming`)
;

CREATE TABLE `navttc`.`employee_roles` (`EMPLOYEE_ID` VARCHAR(10) NOT NULL , `JOB_CODE` VARCHAR(10) NOT NULL ) ENGINE = InnoDB;

Insert Into employee_roles
Select EMPLOYEE_ID ,JOB_CODE From employees_data;

SELECT distinct @rownum := @rownum + 1 AS rank,t.job 
FROM employees_data t, (SELECT @rownum := 0) r

SELECT ROW_NUMBER() OVER(PARTITION BY CURDATE()) AS row_num  ,JOB
FROM employees_data
Group By JOB

Insert Into employee_roles
SELECT ROW_NUMBER() OVER(PARTITION BY CURDATE()) AS row_num  ,JOB
FROM employees_data
Group By JOB


CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    FirstName varchar(255),
    LastName varchar(255) NOT NULL,
    Age int,
    PRIMARY KEY (Personid)
);

INSERT INTO `persons` (`Personid`, `FirstName`, `LastName`, `Age`) VALUES (NULL, 'Kashif', 'Mughal', '50');
INSERT INTO `persons` (`Personid`, `FirstName`, `LastName`, `Age`) VALUES (NULL, 'Khalid', 'Butt', '45');

ALTER TABLE Persons AUTO_INCREMENT=100;

Not In MySQL:SEQUENCE 
CREATE SEQUENCE seq_person
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

INSERT INTO Persons (Personid,FirstName,LastName)
VALUES (seq_person.nextval,'Lars','Monsen');

CREATE TABLE CUSTOMERS (
   ID INT AUTO_INCREMENT,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS VALUES 
(NULL, 'Atif', 32, 'Karachi', 2000.00),
(NULL, 'Khalid', 25, 'Lahore', 1500.00),
(NULL, 'Aamir', 23, 'Islamabad', 2000.00),
(NULL, 'Sohail', 25, 'Karachi', 6500.00),
(NULL, 'Zeeshan', 27, 'Islamabad', 8500.00),
(NULL, 'Majid', 22, 'Karachi', 4500.00),
(NULL, 'Rohail', 24, 'Lahore', 10000.00);

CREATE TABLE florist As
SELECT   * FROM product  WHERE category = 'flower';

SELECT  id,   name,   price
INTO florist
FROM product WHERE category = 'flower';

*******************
From CSV File
*******************
STEP 1: creating a table in MySQL

CREATE TABLE `navttc`.`netflix_movies` (`show_id` VARCHAR(10) NOT NULL , `type` VARCHAR(50) NOT NULL , `title` VARCHAR(100) NOT NULL , `director` VARCHAR(100) NULL , `cast` VARCHAR(500) NULL , `country` VARCHAR(100) NULL , `date_added` VARCHAR(30) NULL , `release_year` SMALLINT(4) NOT NULL , `rating` VARCHAR(20) NOT NULL , `duration` VARCHAR(50) NOT NULL , `listed_in` VARCHAR(100) NOT NULL , `description` VARCHAR(1000) NOT NULL ) ENGINE = InnoDB;

STEP 2: add the data from the CSV file to it

LOAD DATA INFILE 'Netflix_Movies.csv' 
INTO TABLE netflix_movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

****************************


