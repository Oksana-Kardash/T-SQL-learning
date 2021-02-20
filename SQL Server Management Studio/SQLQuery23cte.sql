select count(*)
from Employees

select count(*)
from Orders


with EmployeesCTE (employeeid,
                   firstname,
		           lastname)
      as (select employeeid,
                   trim(firstname),
		           trim(lastname)
      from Employees)
	  select *
	  from EmployeesCTE;

with regionCTE (employeeid,
                regioncount,
		        regionaveragesales)
as (select employeeid, 
           count(distinct shipregion), 
		   sum (od.quantity*od.unitprice)/count (distinct shipregion)
from orders o
join [Order Details] od on o.OrderID=od.OrderID
group by EmployeeID)
select *
from RegionCTE;

with totalallcte(employeeid,
                 totalallselescount,
				 totalallsales,
				 avarageindividualsalesamount)
as (select employeeid,
       count(distinct o.orderid),
	   sum(od.quantity * od.UnitPrice),
	   sum(od.quantity * od.UnitPrice) / count(distinct o.orderid)
from orders o
join [Order Details] od on o.OrderID=od.OrderID
group by EmployeeID)
select *
from totalallcte;

