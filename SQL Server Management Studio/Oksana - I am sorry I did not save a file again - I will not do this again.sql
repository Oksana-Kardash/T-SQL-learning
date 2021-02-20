use TSQLDemoDB;

SELECT *
FROM  ORDERS
ORDER BY  ORDERDATE DESC;

SELECT *
FROM  ORDERITEMS
ORDER BY ITEM ASC;

SELECT ORDERID, ITEM
FROM OrderItems
ORDER BY Quantity;



SELECT oi.ITEM, SUM (oi.Quantity) as NumberOfItemSold
from OrderItems oi
GROUP BY ITEM
order by NumberOfItemSold desc
offset 3 rows fetch next 3 rows only;









