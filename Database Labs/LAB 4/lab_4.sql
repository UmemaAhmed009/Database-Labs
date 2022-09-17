--ERP: 22982 Name: Umema Ahmed
--TASK 1
CREATE TABLE Movie
(   mID int,
    title varchar(30),
    year varchar(4),
    director varchar(30),
    PRIMARY KEY(mID),
    CHECK(year>1900) );
    
CREATE TABLE Reviewer
(   rID int,
    name varchar(30) NOT NULL,
    PRIMARY KEY(rID) );
    
CREATE TABLE Rating
(   rID int,
    mID int,
    stars int NOT NULL,
    CHECK(stars>=1 AND stars<=5),
    ratingDate varchar(30),
    CHECK (ratingDate>2000),
    FOREIGN KEY(rID) REFERENCES Reviewer(rID),
    FOREIGN KEY(mID) REFERENCES Movie(mID),
    PRIMARY KEY(rID, mID, ratingDate)) ;
    
ALTER TABLE Rating
MODIFY ratingDate int;

INSERT INTO Movie VALUES(1, 'Cinderella',1898,'George Albert Smith');
INSERT INTO Rating VALUES(1, 2, 4 ,'1996'); 
INSERT INTO Rating VALUES(1, 2, 6 ,'2002');    

--TASK:2
CREATE TABLE Courses
(   C_code varchar2(5),
    PRIMARY KEY(C_code),
    name varchar2(30),
    duration number(3),
    fee number(5),
    prerequisite varchar2(100));
    
CREATE TABLE Faculty
(   FacCode varchar2(5),  
    PRIMARY KEY(FacCode),
    name varchar2(30),
    qualification varchar2(30),
    experience varchar2(100) ); 
    
CREATE TABLE Course_Faculty
(   FacCode varchar2(5),
    --FOREIGN KEY(FacCode) REFERENCES Faculty(FacCode);
    C_code varchar2(5),
    Grade char(1) );
    
CREATE TABLE Batches
(   BCode varchar2(5),
    PRIMARY KEY(BCode),
    C_code varchar2(5),
    FOREIGN KEY(C_code) REFERENCES Courses(C_code),
    FacCode varchar2(5),
    stDate date,
    endDate date,
    timing number(1) );
    
CREATE TABLE Students(
    ROLLNO number(5),
    PRIMARY KEY(ROLLNO),
    BCODE varchar2(5),
    FOREIGN KEY(BCODE) REFERENCES Batches(BCode),
    NAME varchar2(30),
    GENDER char(1),
    DJ date,
    PHONE varchar2(10),
    EMAIL varchar2(30)
);

CREATE TABLE Payments(
    ROLLNO number(5),
    DP date,
    AMOUNT number(5)
);
--INSERTIONS IN Courses    
INSERT INTO Courses VALUES('ora','Oracle database',25,4500,'Windows'); 
INSERT INTO Courses VALUES('vbnet','VB.NET',30,5500,'Windows and  programming'); 
INSERT INTO Courses VALUES('c','C programming',20,3500,'Computer Awareness'); 
INSERT INTO Courses VALUES('asp','ASP.NET',25,5000,'Internet and programming'); 
INSERT INTO Courses VALUES('java','Java Language',25,4500,'C language');
INSERT INTO Courses VALUES('xml','XML Programming', 15, 4000, 'HTML,Scripting, ASP/JSP');

--INSERTIONS IN Faculty
INSERT INTO Faculty VALUES('gk','George Koch','MS Computer Science','15 years with databases');
INSERT INTO Faculty VALUES('da','Dan Appleman','CS and EE graduate', 'Extensively worked with COM'); 
INSERT INTO Faculty VALUES('hs','Herbert Schildt','MS Computer Science', 'Author of several books');
INSERT INTO Faculty VALUES('dh','David Hunter','MS Electronics', 'Extensively worked with Internet Tehnologees'); 
INSERT INTO Faculty VALUES('sw','Stephen Walther','Ph.D. in Philosophy', 'Extensively worked with Internet Tehnologees'); 
INSERT INTO Faculty VALUES('kl','Kevin Loney', 'MS Eletronics', 'Specialized in Oracle DBA');
INSERT INTO Faculty VALUES('jj','Jamie Jaworski','Bachlors of Electrical' ,'Developed programs for US defense department');
INSERT INTO Faculty VALUES('jc','Jason Couchman','OCP DBA','Published articles on Oracle');

--INSERTIONS IN Course_Faculty
INSERT INTO course_faculty VALUES('gk','ora','A'); 
INSERT INTO Course_Faculty VALUES('kl','ora','A');
INSERT INTO Course_Faculty VALUES('jc','ora','A'); 
INSERT INTO Course_Faculty VALUES('da','vbnet','A');
INSERT INTO Course_Faculty VALUES('sw','asp','A'); 
INSERT INTO Course_Faculty VALUES('da','asp','B');
INSERT INTO Course_Faculty VALUES('hs','c','A');
INSERT INTO Course_Faculty VALUES('dh','xml','A');
INSERT INTO Course_Faculty VALUES('jj','java','A');
INSERT INTO Course_Faculty VALUES('hs','java','B');
INSERT INTO Course_Faculty VALUES('jj','c','A'); 
INSERT INTO Course_Faculty VALUES('jj','vbnet','B');

--INSERTIONS IN Batches
INSERT INTO Batches VALUES('b1','ora','gk','12-jan-2001','20-feb-2001', 1); 
INSERT INTO Batches VALUES('b2','asp','da','15-jan-2001','5-mar-2001', 2); insert into batches values ('b3','c','hs','20-jan-2001','27-feb-2001',3); 
INSERT INTO Batches VALUES ('b4','xml','dh','2-mar-2001','30-mar-2001', 3); 
INSERT INTO Batches VALUES ('b5','java','hs','5-apr-2001','10-may-2001', 1); 
INSERT INTO Batches VALUES ('b6','vbnet','da','12-july-2001',null,1); 
INSERT INTO Batches VALUES ('b7','ora','jc','15-aug-2001',null,2); 

--INSERTIONS IN Students
INSERT INTO Students VALUES (1,'b1','George Micheal','m','10-jan-2001', '488333','gm@yahoo.com'); 
INSERT INTO Students VALUES (2,'b1','Micheal Douglas','m','11-jan-2001', '334333','md@hotmail.com'); 
INSERT INTO Students VALUES (3,'b2','Andy Roberts','m','11-jan-2001', '433554','ar@yahoo.com'); 
INSERT INTO Students VALUES (4,'b2','Malcom Marshall','m','16-jan-2001', '653345','mm@usa.net'); 
INSERT INTO Students VALUES (5,'b2','Vivan Richards','m','16-jan-2001', '641238','vr@yahoo.com'); 
INSERT INTO Students VALUES (6,'b3','Chirs Evert','f','14-jan-2001', null,'ce@yahoo.com'); 
INSERT INTO Students VALUES (7,'b3','Ivan Lendal','m','15-jan-2001', '431212','il@hotmail.com'); 
INSERT INTO Students VALUES (8,'b4','George Micheal','m','1-mar-2001', '488333','gm@hotmail.com');
INSERT INTO Students VALUES (9,'b5','Richard Marx','m','6-apr-2001', '876567','rm@hotmail.com'); 
INSERT INTO Students VALUES (10,'b5','Tina Turner','f','6-apr-2001', '565678','tinat@hotmail.com'); 
INSERT INTO Students VALUES (11,'b5','Jody Foster','f','7-apr-2001', '234344','jody@hotmail.com'); 

--INSERTIONS IN Payments
INSERT INTO Payments VALUES (1,'10-jan-2001',4500); 
INSERT INTO Payments VALUES (2,'11-jan-2001',3500);
INSERT INTO Payments VALUES (2,'17-jan-2001',1000); 
INSERT INTO Payments VALUES (3,'13-jan-2001',2000); 
INSERT INTO Payments VALUES (3,'20-jan-2001',3000); 
INSERT INTO Payments VALUES (4,'16-jan-2001',3000); 
INSERT INTO Payments VALUES (4,'30-jan-2001',2000); 
INSERT INTO Payments VALUES (5,'16-jan-2001',5000); 
INSERT INTO Payments VALUES (6,'14-jan-2001',3500); 
INSERT INTO Payments VALUES (7,'15-jan-2001',3500); 
INSERT INTO Payments VALUES (8,'1-mar-2001',2000);
INSERT INTO Payments VALUES (8,'2-mar-2001',2000); 
INSERT INTO Payments VALUES (9,'7-apr-2001',3000); 
INSERT INTO Payments VALUES (10,'10-apr-2001',4500); 
INSERT INTO Payments VALUES (11,'7-apr-2001',1000); 
INSERT INTO Payments VALUES (11,'10-apr-2001',3500);  

--TASK: 4.2.1
SELECT Students.ROLLNO, Students.name,  Batches.BCode,Batches.stDate, Batches.endDate 
FROM Batches
LEFT JOIN Students
ON Batches.BCode = Students.BCODE
ORDER BY Students.ROLLNO asc;
--TASK 4.2.2
SELECT Courses.C_code,Courses.name,Faculty.FacCode,Faculty.name,Courses.prerequisite, Courses.duration,Courses.fee,Faculty.qualification, Faculty.experience, Course_Faculty.grade
FROM Courses
LEFT JOIN Course_Faculty
ON Courses.C_code = Course_Faculty.C_code
LEFT JOIN Faculty
ON Course_Faculty.FacCode = Faculty.FacCode
ORDER BY Courses.C_code asc;
--TASK 4.3.3
SELECT Faculty.name, Faculty.qualification, Courses.name AS course_name, Course_Faculty.grade, Faculty.experience
FROM Faculty
INNER JOIN Course_Faculty
ON Faculty.FacCode = Course_Faculty.FacCode
INNER JOIN Courses
ON Course_Faculty.C_code = Courses.C_code
ORDER BY Faculty.name asc;






