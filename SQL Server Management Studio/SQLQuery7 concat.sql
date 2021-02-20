--select *
--from Orders;

--select datediff (d, orderdate, shippeddate)
--from orders
--order by datediff (d, orderdate, shippeddate);

--select orderdate, shippeddate
--from orders
--where 
--      datediff (d, orderdate, shippeddate) is null
--or 
--       datediff (d, orderdate, shippeddate) >30;


select
	concat (e.Firstname, ' ', e.Lastname),
	convert (varchar , o.OrderDate, 101),
	format(o.RequiredDate, 'MMM dd, yyyy') as newFormat,
	datediff (d, o.OrderDate, o.ShippedDate),
	e.Firstname, 
	e.Lastname, 
	c.Companyname, 
	c.Contactname, 
	o.Requireddate,
	o.shippeddate,  
	* 
from Employees e
join orders o 
	on e.EmployeeID=o.EmployeeID
join Customers c 
	on c.CustomerID = o.CustomerID
where datediff (d, orderdate, shippeddate) is null
or datediff (d, orderdate, shippeddate) >30;
	     
	 



