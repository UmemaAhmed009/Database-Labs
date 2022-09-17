--Lab: 5 Erp: 22982 Name: Umema Ahmed
--Task: 1
SELECT * FROM Sales
WHERE (shipdate-orderdate <32);
--Task: 2
SELECT orderid,(totalrevenue-totalcost) AS Profit, round((totalrevenue-totalcost), -2) AS Rounded_Profit FROM Sales;
--Task: 3
SELECT orderid, round((sysdate-shipdate),0) AS No_of_Days FROM Sales;
SELECT orderid, (sysdate-shipdate) AS Days, round((sysdate-shipdate),0) AS Rounded_No_of_Days FROM Sales;
--Task: 4
SELECT * FROM Sales
WHERE round((sysdate -orderdate)/365) <=6;
--Task: 5 
SELECT 'The order '||orderid ||' has ' || orderpriority || ' priority and ' || saleschannel || ' sales channel.' AS Task_5
FROM Sales;
--Task: 6
SELECT itemtype, unitprice, unitssold, totalrevenue FROM Sales
WHERE itemtype='Fruits';
UPDATE Sales
SET unitprice = unitprice + (unitprice*0.1), totalrevenue = unitprice*unitssold
WHERE itemtype='Fruits';
--Task: 7
SELECT orderid, (totalrevenue-totalcost) AS Profit, greatest((totalrevenue-totalcost)*0.2,50000) AS Charity 
FROM Sales;
--Task: 8
SELECT * FROM SALES
WHERE orderpriority='H' and ;
--Task: 9
SELECT itemtype FROM Sales
WHERE instr(itemtype,'S') = 1;
--Task: 10
SELECT orderid, orderpriority,decode(orderpriority,'H','Urgent',
                                                   'M','Normal',
                                                   'Other') AS Priority
FROM Sales;