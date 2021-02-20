select *
from [Order Details]
where orderID=10248;

select *
from Orders
join [Order Details] on orders.OrderID = [Order Details].OrderID
where orders.OrderID=10248;

select *
from Orders o
join [Order Details] od on o.OrderID = od.OrderID
where o.OrderID=10248;

select o.OrderDate, o.ShippedDate, o.ShipAddress, od.UnitPrice, od.Quantity, od.Discount
from Orders o
join [Order Details] od on o.OrderID = od.OrderID
where o.OrderID=10248;


select p.ProductName, convert (varchar, o.OrderDate, 101) as OrderDate,
       convert (varchar, o.ShippedDate, 101) as ShippedDate,
	   convert (varchar, o.ShipAddress, 101) as ShipAddredd,
	   od.UnitPrice, 
	   od.Quantity,
	   od.Discount,
	   (od.UnitPrice * od.Quantity) as TotalCost,
	   c.*
from Orders o
join [Order Details] od on o.OrderID = od.OrderID
join Products p on od.ProductID = p.ProductID
left join Customers c on o.CustomerID=c.CustomerID 
where o.OrderID=10248;

Update orders set CustomerID= 'vinet' where OrderID=10248

select p.ProductName, convert (varchar, o.OrderDate, 101) as OrderDate,
       convert (varchar, o.ShippedDate, 101) as ShippedDate,
	   convert (varchar, o.ShipAddress, 101) as ShipAddredd,
	   od.UnitPrice, 
	   od.Quantity,
	   od.Discount,
	   (od.UnitPrice * od.Quantity) as TotalCost,
	   c.*
from Orders o
join [Order Details] od on o.OrderID = od.OrderID
join Products p on od.ProductID = p.ProductID
left join Customers c on o.CustomerID=c.CustomerID 
where o.ShippedDate between '07/20/2016' and '01/01/2017';