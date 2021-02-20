SELECT *
FROM Employees E
LEFT JOIN ORDERS O ON E.EmployeeID=O.EmployeeID

SELECT COUNT (*)
FROM ORDERS

SELECT E.EmployeeID, 
       TRIM(CONCAT_WS(' ', E.FirstName, E.LastName)) AS EMPLOYEENAME,
	   COUNT (*) AS NUMBEROFSALES
FROM Employees E
       LEFT JOIN ORDERS O ON E.EmployeeID=O.EmployeeID
GROUP BY 
       E.EmployeeID,
	   E.FirstName,
	   E.LastName

	   SELECT E.EmployeeID, 
       TRIM(CONCAT_WS(' ', E.FirstName, E.LastName)) AS EMPLOYEENAME,
	   COUNT (DISTINCT O.OrderID) AS NUMBEROFSALES,
	   CASE WHEN SUM (OD.QUANTITY * OD.UNITPRICE) IS NULL THEN 0
       ELSE SUM (OD.QUANTITY * OD.UNITPRICE) END AS TOTALSALES
FROM Employees E
       LEFT JOIN ORDERS O ON E.EmployeeID=O.EmployeeID
	   LEFT JOIN [Order Details] OD ON OD.OrderID=O.OrderID
GROUP BY 
       E.EmployeeID,
	   E.FirstName,
	   E.LastName

ORDER BY NUMBEROFSALES DESC