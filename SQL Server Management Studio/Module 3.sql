use TSQLDemoDB;

select *
from Customers;

select *, 'pluralsight' as besttraining
from Customers;

select *
from Orders;

select *
from Customers as C
left outer join
Orders as O
on C.customer = O.customer;
