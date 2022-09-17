--LAB:2, TASK: 1 Name: Umema Ahmed, ERP: 22982
CREATE TABLE Books
( isbn int,
 title  varchar(50),
 price float,
 qty int NOT NULL,
 PRIMARY KEY(isbn));
 
CREATE TABLE Authors
 ( authorID int,
    name varchar(30),
   email varchar(30) UNIQUE,
   PRIMARY KEY(authorID)
   );
   
CREATE TABLE Book_Authors
(isbn int,
authorID int,
FOREIGN KEY(isbn) REFERENCES Books(isbn),
FOREIGN KEY(authorID) REFERENCES Authors(authorID)
  );
  
--Task: 1  
ALTER TABLE Books
ADD UNIQUE (title);
--Task: 2
ALTER TABLE Books
MODIFY price float NOT NULL;
--Task: 3
ALTER TABLE Books
ADD CHECK (price>0.0);
--Task: 4
ALTER TABLE Books
MODIFY qty int NULL;
--Task: 5
ALTER TABLE Books
MODIFY qty DEFAULT 0;
--Task: 6
ALTER TABLE Authors
DROP UNIQUE(email);
--Task: 7
ALTER TABLE Book_Authors
DROP CONSTRAINT SYS_C008326;
--Task: 8
ALTER TABLE Books
DROP CONSTRAINT SYS_C008323;
--Task: 9
ALTER TABLE Authors
ADD Pen_name varchar(30) UNIQUE;
--ADDITIONAL TASK: 1
CREATE TABLE countries
( name varchar(56));

INSERT INTO countries
VALUES('Afghanistan');

INSERT INTO countries
VALUES('Pakistan');

INSERT INTO countries
VALUES('USA');

INSERT INTO countries
VALUES('Spain');

INSERT INTO countries
VALUES('Switzerland'); 

SELECT name, UPPER(SUBSTR(name,1,2)) AS CountryCode
FROM countries;

--ADDITIONAL TASK: 2
CREATE TABLE personal
( name varchar(30),
birthdate varchar(10));

INSERT INTO personal
VALUES('Umema', '09-01-2002');
INSERT INTO personal
VALUES('Maryam', '07-04-2001');
INSERT INTO personal
VALUES('Minal', '10-10-2001');
INSERT INTO personal
VALUES('Aiza', '14-06-2000');
INSERT INTO personal
VALUES('Samra', '09-02-2002');
INSERT INTO personal
VALUES('Ramsha', '03-05-2001');
INSERT INTO personal
VALUES('Sarah', '10-01-2001');
INSERT INTO personal
VALUES('Simal', '09-03-2002');
INSERT INTO personal
VALUES('Ayesha', '09-05-2002');
INSERT INTO personal
VALUES('Aalimah', '09-06-2002');

SELECT *
FROM personal;

SELECT TO_NUMBER(TO_CHAR(TO_DATE(birthdate,'DD-MM-YYYY'), 'YYMMDD')) "BOD" FROM personal;
SELECT "Name: "|| name FROM personal WHERE name ='Umema';
"Age: "||(TO_NUMBER(TO_CHAR(SYSDATE, 'YYMMDD')) -
       TO_NUMBER(TO_CHAR(TO_DATE(birthdate,'DD-MM-YYYY'), 'YYMMDD')))/10000
       FROM personal WHERE name ='Umema';
    CONVERT
    (birthdate, 'YYMMDD') )
    AS AGE 
    FROM personal;

SELECT 'I am' || name || ' and my age is'||
round(months_between as Details
FROM   personal where name ='Umema' ; 



SELECT *
FROM countries;
/* SELECT *
FROM user_cons_columns
WHERE table_name = 'BOOKS'; */


