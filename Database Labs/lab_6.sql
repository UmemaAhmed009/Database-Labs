CREATE TABLE Suppliers(
sid int,
sname varchar(255),
address varchar(255),
PRIMARY KEY(sid));

CREATE TABLE Parts(
pid int,
pname varchar(255),
color varchar(255),
PRIMARY KEY(pid));

CREATE TABLE Catalog(
sid int,
pid int,
cost real,
FOREIGN KEY(sid) REFERENCES Suppliers(sid),
FOREIGN KEY(pid) REFERENCES Parts(pid));

--Task:a
SELECT DISTINCT Suppliers.sname
FROM Suppliers
JOIN Catalog
ON Suppliers.sid=Catalog.sid
JOIN  Parts ON Parts.pid=Catalog.pid
WHERE Parts.color ='Red';

--Task:b
SELECT DISTINCT Suppliers.sid, Suppliers.sname
FROM Suppliers
JOIN Catalog
ON Suppliers.sid=Catalog.sid
JOIN  Parts ON Parts.pid=Catalog.pid
WHERE Parts.color ='Red' OR Suppliers.address = '500 College Avenue'
ORDER BY Suppliers.sid;

--Task:c
SELECT DISTINCT Suppliers.sid, Suppliers.sname
FROM Suppliers
JOIN Catalog
ON Suppliers.sid=Catalog.sid
JOIN  Parts ON Parts.pid=Catalog.pid
WHERE Parts.color ='Red' AND Parts.color ='Green'
ORDER BY Suppliers.sid;

--Task:d
SELECT Suppliers.sid FROM Suppliers
WHERE Parts.pid IN (1,2,5,6) OR (2,3,5,6) OR (1,4,5,6) OR (
(SELECT Suppliers.sid,Parts.pid
FROM Parts
CROSS JOIN Suppliers
MINUS 
SELECT Catalog.sid, Catalog.pid
FROM Catalog;
INTERSECT
SELECT Suppliers.sid FROM Suppliers;
INTERSECT
SELECT Suppliers.sid FROM Suppliers;
--Task:e
--Task:f
--Task:g
--Task:h
