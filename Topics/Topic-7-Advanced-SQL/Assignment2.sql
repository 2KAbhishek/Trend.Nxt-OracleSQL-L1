-- Topic 7: Advanced SQL

-- Assignment: 2

ALTER SESSION SET sql_trace=TRUE;

select * from employee where emp_id =101;

ALTER SESSION SET SQL_TRACE = FALSE;

exec start_trace(17, 6157, 30);
