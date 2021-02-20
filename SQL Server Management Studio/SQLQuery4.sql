select FirstName, title, LastName, BirthDate, HireDate
from northwind.dbo.Employees
where title='sales representative';



select firstname + ' '+ lastname as NorthwindEmployees
from Employees;

select concat (firstname, ' ', lastname) as NorthwindEmployees
from Employees;

select getdate () -3

select concat('today is', convert(varchar, GETDATE(),1)) 