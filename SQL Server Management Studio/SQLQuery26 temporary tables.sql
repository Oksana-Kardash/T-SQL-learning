select o.employeeid,
       count(distinct o.OrderID) as totalsalescount,
	   case
	   when sum(od.quantity * od.UnitPrice) is null
	   then 0
	   else sum(od.quantity * od.UnitPrice)
	   end as totalsalesamount,
	   case
	   when sum(od.quantity * od.UnitPrice) is null
	   then 0
	   else sum(od.quantity * od.UnitPrice)/count (o.EmployeeID)
	   end as averagepersale
	   into #employeesallsales
from orders o
 join [Order Details] od on o.OrderID=od.OrderID
group by o.EmployeeID

select *
from #employeeregioncount
drop table #employeeregioncount