-- Topic 7: Advanced SQL

-- Assignment: 1

EXPLAIN PLAN for
select e.employee_id,e.first_name,d.department_name
from hr.employees E, hr.departments D
where e.department_id=d.department_id;

SELECT PLAN_TABLE_OUTPUT from TABLE(DBMS_XPLAN.DISPLAY());

alter session set optimizer_mode=first_rows;
