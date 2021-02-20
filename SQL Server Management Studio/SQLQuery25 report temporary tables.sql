select e.employeeid,
                   trim(e.firstname) as firstname,
		           trim(e.lastname) as lastname
				   into #employees
      from Employees e

--select *
--from #employees
--drop table #employees

select distinct e.employeeid,
       count(o.shipregion) as regioncount,
	   case
	   when sum(od.quantity * od.UnitPrice) is null
	   then 0
	   else sum(od.quantity * od.UnitPrice) / count(ShipRegion)
	   end as averageregionsalesamount
	   into #employeeregioncount
from employees e
left join orders o on e.Employeeid = o.EmployeeID
left join [Order Details] od on o.OrderID=od.OrderID
group by e.EmployeeID

select *
from #employeeregioncount
drop table #employeeregioncount

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

select e.employeeid, 
       e.lastname,
	   e.firstname,
	   regioncount,
	   format (averageregionsalesamount, 'c', 'en-us') as averagesalesperregion,
	   case when  totalsalescount is null then 0 else totalsalescount end as totalallsalescount,
	   case when  totalsalesamount is null then format(0, 'c','en-us') else format (totalsalescount,'c','en-us')  end as totalallsales,
	   case when  averagepersale is null then format(0, 'c','en-us') else format (averagepersale,'c','en-us')  end as averageindividualsalesamount
from #employees e
left join #employeeregioncount r on e.employeeid = r.employeeid
left join #employeesallsales a on e.employeeid = a.employeeid
order by totalallsales desc, lastname

drop table #employees
drop table #employeeregioncount
drop table #employeesallsales