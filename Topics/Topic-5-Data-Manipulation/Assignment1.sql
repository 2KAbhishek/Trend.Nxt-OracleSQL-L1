-- Topic 5: Data Manipulation

-- Assignment: 1

-- a.
insert into Employee values (100,'A','MANAGER',123,'08-MAR-21',25000,NULL,30);
insert into Employee values (101,'B','ADMIN',546,'08-MAR-21',15000,NULL,20);
insert into Employee values (102,'C','PEON',109,'08-MAR-21',8000,NULL,10);
insert into Employee values (103,'D','CLERK',789,'08-MAR-21',7000,5,16);
insert into Employee values (104,'E','CLERK',546,'08-MAR-21',8000,NULL,16);
insert into Employee values (105,'F','CLERK',556,'08-MAR-21',8000,NULL,13);
insert into Employee values (106,'J','ADMIN',579,'08-MAR-21',13000,NULL,13);
insert into Employee values (107,'P','HR',579,'13-JAN-20',26000,NULL,16);
insert into Employee values (108,'Z','CLERK',549,'08-MAR-21',9000,10,16);
insert into Employee values (109,'Y','MANAGER',549,'08-MAR-21',25000,NULL,16);
insert into Employee values (110,'X','ACCOUNTANT',549,'13-OCT-19',12000,NULL,27);
insert into Employee values (112,'W','PEON',579,'08-MAR-21',8000,NULL,13);
insert into Employee values (113,'V','PEON',200,'08-MAR-21',7000,NULL,23);
insert into Employee values (111,'U','HR',545,'08-MAR-21',26000,NULL,16);
insert into Employee values (114,'T','MANAGER',545,'09-JUN-19',2500,NULL,6);
-- b.
update Employee set SAL = SAL+(SAL*0.1) where DEPTNO in (10, 20);
-- c.
update Employee set SAL = SAL+(SAL*0.1), COMM = COMM+(COMM *0.2) where COMM is not null;
-- d.
update Employee SET JOB='MANAGER' WHERE EMPNO=&EMPNO;
-- e.
delete from Employee where HIREDATE < date '2004-01-01';
-- f.
insert INTO MEMBER(Member_Id,Member_Name,Max_Books_Allowed) VALUES(133,'ABC',110);
-- max_books_allowed column is having check constraint with<110 so,constraint violation error is thrown.
-- g.
create TABLE NewBook AS(SELECT * FROM Books);
-- h.
COMMIT;
-- i.
insert into Books values (1000, 'MongoDB', 'Allen', 750, 'Database');
insert into Books values (1001, 'Python 3', 'Magret', 1350, 'AI');
insert into Books values (1002, 'Angular 4', 'Google', 2750, 'UI');
insert into Books values (1003, 'PL SQL-Ref', 'Scott Urman', 750, 'Database');
-- j.
create type t_emp as object(EMPNO number, ENAME varchar2(40), JOB varchar2(20), MGR number, HIREDATE date, SAL number, COMM number, DEPTNO number);
create type t_emplist as table of t_emp;
 insert into Employee values (5, t_emplist(t_emp(160,'I','WAITER',545,'18-MAR-95',5000,7,35),
                                             t_emp(170,'J','WAITER',545,'18-MAR-95',5000,7,35),
                                             t_emp(180,'K','WAITER',590,'18-MAR-95',8000,7,35),
                                             t_emp(190,'L','WAITER',545,'18-MAR-95',5000,7,35),
                                             t_emp(260,'M','WAITER',590,'18-MAR-95',2000,NULL)));
-- k.
ROLLBACK;
-- l.
update NEWBook set Cost='300', Category = 'OracleDatabase' where Book_No = 1003;
-- m.
SAVEPOINT T;
delete from GS_Issue where Member_Id = 101 and Issue_Date < '02-06-06';
delete from GS_Books where Category not in ('RDBMS', 'Database');
ROLLBACK TO T;
-- n.
COMMIT;
