select c.sales_year,  sum (s.sales_qty) as Total_Sales_Qnt
from F_Sales s
join D_Sales_Calendar c
	on s.Sales_Date = c.Sales_Date
where Sales_Year > 2015
group by Sales_Year
having sum(Sales_Qty) > 100000
order by Sales_Year desc;

