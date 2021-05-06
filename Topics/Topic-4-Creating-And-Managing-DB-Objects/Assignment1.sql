-- Topic 4: Creating And Managing Database Objects

-- Assignment: 1

-- a.
CREATE TABLE EMPCOPY AS(SELECT * FROM Employee);
-- b.
CREATE TABLE DEPTCOPY AS(SELECT * FROM Department WHERE 1=2);
-- c.
CREATE INDEX BOOK_NAME_INDEX ON BOOKS(Book_Name);
-- d.
CREATE INDEX ISSUE_INDEX ON Issue(Member_ID,Book_No);
-- e.
ALTER TABLE Member MODIFY Member_Name VARCHAR(48);
-- f.
ALTER TABLE Issue ADD REFERENCE CHAR(30);
-- g.
ALTER TABLE Issue RENAME TO Lib_Issue;
-- h.
ALTER TABLE Issue DROP COLUMN REFERENCE;
-- i.
ALTER TABLE Member ADD CONSTRAINT Member_Constraint CHECK(Max_Books_Allowed<100 AND Penalty_Amount<=1000);
-- j.
CREATE sequence MEMBER_SEQUENCE increment by 1 start with 1 minvalue 0 nocycle nocache;
CREATE sequence SUPPLIER_SEQUENCE increment by 1 start with 1 minvalue 0 nocycle nocache;
INSERT into Member (Member_Id) values (MEMBER_SEQENCE.nextval);
INSERT into Supplier (SupplierId) values (SUPPLIER_SEQUENCE.nextval);
-- k.
CREATE sequence no_seq increment by 2 start with 100 maxvalue 200 nocycle nocache;
-- l.
DROP sequence no_seq;
-- m.
CREATE sequence book_seq increment by 1 start with 101 maxvalue 1000 nocycle;
-- n.
CREATE sequence member_seq increment by 1 start with 1 maxvalue 100 nocycle;
-- o.
DROP sequence book_seq;
DROP sequence member_seq;
