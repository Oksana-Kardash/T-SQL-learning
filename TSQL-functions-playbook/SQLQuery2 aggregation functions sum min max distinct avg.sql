select count (*)
from F_Sales;

select count (distinct Customer_Code)
from F_Sales;

select sum (Sales_Qty)
from F_Sales;

select min (Sales_Qty)
from F_Sales;

select max (Sales_Qty)
from F_Sales;

select avg (Sales_Qty)
from F_Sales;


select*
from D_Sales_Calendar;


select distinct sales_year
from D_Sales_Calendar
order by Sales_Year;

select distinct sales_channel
from D_Sales_Channel;