--LAB 1: Task 1 Name = Umema Ahmed, ERP: 22982
create table EMPLOYEES
( EID varchar2(3),
  Ename varchar2(50),
  City varchar2(20)
  );
  insert into EMPLOYEES values(11,'Maria','Karachi');
  insert into EMPLOYEES values(12,'Ali','Islamabad');
  insert into EMPLOYEES values(13,'Sarah','Lahore');
  insert into EMPLOYEES values(14,'Samreen','Karachi');
  
  select * from employees;
  select * from employees order by eid;
  
  alter table employees modify city varchar2(40);
  select * from sales;
  Select itemtype, unitprice from sales;
  select distinct itemtype from sales;
  select * from sales order by unitssold;
  select * from sales order by unitssold desc;
  select * from sales order by region, country;
  select * from sales where region='Europe';
  select * from sales where region='Europe' or region='Asia';
  
  --LAB:1 Task:2 
  select * from sales where orderpriority='H';
  select country,itemtype,orderdate from sales order by orderdate desc;
  select distinct region from sales;
  select * from sales where unitssold between 5000 and 10000;
  select (totalrevenue/totalcost) AS Profit,orderid from sales;
  select * from sales order by (totalrevenue/totalcost));
  select ename,city from employees order by ename asc;
  update sales set orderpriority='H' where orderid='341417157';
  
  