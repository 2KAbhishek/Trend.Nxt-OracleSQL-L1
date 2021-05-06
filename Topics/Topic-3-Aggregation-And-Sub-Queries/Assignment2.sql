-- Aopic 3: Aggregation And Sub-Queries

-- Assignment: 2

-- a.
SELECT COUNT(DISTINCT(MEMBER_ID))"Total Members" FROM Member;
-- b.
SELECT count(*) "Number of Books Issued" from Issue;
-- c.
SELECT AVG(Fees_paid) "Average Membership fees" FROM Member;
-- d.
SELECT Book_No from Books where Book_No not in (select Book_No from Issue);
-- e.
SELECT Member_Id from Member where Member_Id in (select Member_Id from Issue);
-- f.
SELECT Member_Id FROM Issue GROUP BY Member_Id HAVING COUNT(*)=(SELECT MAX(COUNT(Member_Id)) FROM Issue GROUP BY Member_Id);
 --
 SELECT Member_Id FROM Issue GROUP BY Member_Id HAVING COUNT(*)=(SELECT MIN(COUNT(Member_Id)) FROM Issue GROUP BY Member_Id);
-- g.
SELECT Book_No, Book_Name FROM Books WHERE Book_No IN (SELECT Book_no FROM Issue WHERE TO_CHAR(Issue_Date,'MON') IN ('JUN','DEC'));
-- h.
SELECT B.Book_No,B.Book_Name,I.Issue_Date,I.Return_Date FROM Issue I,Books B,Member M WHERE B.Book_No=I.Book_No AND M.Member_Id=I.Member_Id AND M.Member_Name='STALIN';
-- i.
SELECT * from Books where cost in (select MAX(Cost) from Books group by Category);
-- j.
SELECT M.Member_Id,M.Member_Name,COUNT(I.Book_No) FROM Member M, Issue I WHERE M.Member_Id=I.Member_Id GROUP BY M.Member_Id,M.Member_Name,I.Book_No,M.Max_Books_Allowed HAVING COUNT(I.Book_No)>M.Max_Books_Allowed;
