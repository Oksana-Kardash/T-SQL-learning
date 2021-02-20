
with EmployeesCTE (employeeid,
                   firstname,
		           lastname)
      as (select employeeid,
                   trim(firstname),
		           trim(lastname)
      from Employees),
	  

 regionCTE (employeeid,
                regioncount,
		        regionaveragesales)
as (select employeeid, 
           count(distinct shipregion), 
		   sum (od.quantity*od.unitprice)/count (distinct shipregion)
from orders o
join [Order Details] od on o.OrderID=od.OrderID
group by EmployeeID),

 totalallcte(employeeid,
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

select e.employeeid, r.regioncount, r.regionaveragesales, a.totalallselescount, a.totalallsales, a.avarageindividualsalesamount
from EmployeesCTE e
left join regionCTE r on e.employeeid = r.employeeid
left join totalallcte a on e.employeeid = a.employeeid