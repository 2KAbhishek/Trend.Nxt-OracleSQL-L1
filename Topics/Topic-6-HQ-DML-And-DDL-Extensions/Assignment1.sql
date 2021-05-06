-- Topic 6: HQ And DML, DDL Extension

-- Assignment: 1

select ENAME, EMPNO, MGR, HIREDATE, SAL, DEPTNO from Employee
    start with EMPNO = (select EMPNO from Employee where MGR is null)
        connect by prior EMPNO = MGR
            order siblings by ENAME;
