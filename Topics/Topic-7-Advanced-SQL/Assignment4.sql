-- Topic 7: Advanced SQL

-- Assignment: 4

-- Before Indexing:

EXPLAIN PLAN FOR select * from EMPLOYEE where MGR IS NULL;

SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());

-- After Indexing:

CREATE index MGR_IDX ON Employee(upper(MGR));

EXPLAIN PLAN FOR select  * from EMPLOYEE e where MGR IS NULL;

SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());
