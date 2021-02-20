select *
from Employees
where EmployeeID =1 or EmployeeID=3 or EmployeeID=7 or EmployeeID=8

select *
from Employees
where EmployeeID not in (1,3,7,8)

select *
from Products
where Discontinued=1

select *
from Products
where productid in (5,9,17,24,28,29,42,53)

select *
from [Order Details]
where ProductID in(5,9,17,24,28,29,42,53)

select productid 
from Products
where Discontinued=1

select *
from [Order Details]
where ProductID in(select productid 
				   from Products
				where Discontinued=1)

select *
from [Order Details] od
join Products p  on od.ProductID=p.ProductID
where od.OrderID=10262

