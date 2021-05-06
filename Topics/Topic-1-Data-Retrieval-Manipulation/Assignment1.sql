-- Topic 1: Data Retrieval Manipulation

-- Assignment: 1

-- a.
SELECT COUNT(EMPNO),AVG(SAL) FROM Employee WHERE DEPTNO=20;
-- b.
SELECT ENAME,SAL,(SAL*0.1) AS PF FROM Employee;
-- c.
SELECT ENAME,JOB FROM Employee WHERE MGR IS NULL;
-- d.
SELECT ENAME, EMPNO, JOB, HIREDATE from Employee where EMPNO in (select MGR from Employee);
-- e.
SELECT EMPNO,ENAME,SAL FROM Employee WHERE MGR=7369;
-- f.
SELECT * from Employee where JOB = 'Clerk' or JOB = 'Trainer';
-- g.
SELECT * FROM Employee WHERE SAL BETWEEN 10000 AND 20000;
-- h.
SELECT ENAME FROM Employee WHERE COMM IS NULL;
-- i.
SELECT * from Employee where ENAME like 'H%' or ENAME like '%H';
-- j.
SELECT * FROM Employee ORDER BY SAL;
-- k.
SELECT * from Employee where DEPTNO not in (10, 20, 30);
-- l.
SELECT EMPNO, ENAME, (SAL*12) AnnualSalary FROM Employee WHERE DEPTNO=10;
