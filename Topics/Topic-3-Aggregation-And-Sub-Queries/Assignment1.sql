-- Topic 3: Aggregation And Sub-Queries

-- Assignment: 1

-- a.
SELECT COUNT(DISTINCT EMPNO) "Number of employees" FROM Employee;
-- b.
SELECT COUNT(DISTINCT JOB) "Number of Designations" FROM Employee;
-- C.
SELECT SUM(SAL) "Sum of Salaries" FROM Employee;
-- d.
SELECT MAX(SAL) "Maximum Salary", MIN(SAL) "Minimum Salary", AVG(SAL) "Average Salary" from Employee;
-- e.
SELECT MAX(SAL) "Salesman's Maximum Salary" FROM Employee WHERE JOB='SALESMAN';
-- f.
SELECT VehDriver, DriverCity, VehNo FROM Vehicle V,Customer C,Shipment S WHERE V.VehNo=S.VehicleNo AND S.CustId=C.CustId AND C.CustIncome>1200000;
-- g.
SELECT CustName, CustIncome FROM Customer C,Vehicle V,Shipment S WHERE V.VehNo=S.VehicleNo AND C.CustId=S.CustId AND VehDriver='Baskar';
-- h.
SELECT CustName,CustId FROM Customer C WHERE NOT EXISTS(SELECT VehNo FROM Vehicle V WHERE NOT EXISTS(SELECT * FROM Shipment S WHERE S.VehicleNo=V.VehNo AND S.CustId=C.CustId));
-- i.
SELECT * FROM Customer C, Shipment S WHERE C.CustId=S.CustId AND SHIPWEIGHT>100 AND (CustIncome>500000 OR ShipDestination='NewDelhi');
-- j.
SELECT * FROM VEHICLE WHERE VEHNO = (SELECT MAX(VEHICLENO) FROM SHIPMENT);

