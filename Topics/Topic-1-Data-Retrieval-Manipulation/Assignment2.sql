-- Topic 1: Data Retrieval Manipulation

-- Assignment: 2

-- a.
select * from Books where Author_name = 'Loni' and Cost < 600;
-- b.
select * from Issue where Return_date is null;
-- c.
select * FROM Issue WHERE (Return_date - Issue_Date) > 30;
-- d.
select * FROM Books WHERE Cost BETWEEN 500 AND 750 AND Category='DATABASE';
-- e.
select * from Books where Category in ('SCIENCE', 'DATABASE', 'FICTION', 'MANAGEMENT');
-- f.
select * FROM Member ORDER BY Penalty_Amount DESC;
-- g.
select * FROM Books ORDER BY Category, Cost DESC;
-- h.
select * from Books where Book_Name like '%SQL%';
-- i.
select * FROM Member WHERE (Member_Name LIKE 'R%' OR Member_Name LIKE 'G%') AND Member_Name LIKE '%I%';
-- j.
select INITCAP(Book_Name),UPPER(Author_name) FROM Books ORDER BY Book_Name DESC;
-- k.
select TO_CHAR(Issue_Date,'DY MON, DD, YYYY'), TO_CHAR(Return_date,'DY MON, DD, YYYY') FROM Issue WHERE Member_Id=101;
-- l.
select * FROM Member WHERE Acc_Open_Date>=('01-JAN-01');




