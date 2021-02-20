SELECT P.ProductID, 
       P.ProductName,
	   AVG (OD.Quantity) AS AVERAGESOLDBYQUARTER,
	   DATEPART(Q,O.OrderDate) AS [QUARTER], 
	   DATEPART(YY,O.OrderDate) AS [YEAR]
FROM ORDERS O
JOIN [Order Details] OD ON O.OrderID=OD.OrderID
JOIN Products P ON OD.ProductID=P.ProductID
GROUP BY P.ProductID,
         P.ProductName,
       DATEPART(Q,O.OrderDate), 
	   DATEPART(YY,O.OrderDate)
ORDER BY
       [YEAR] DESC,
	   [QUARTER],
	   P.ProductName