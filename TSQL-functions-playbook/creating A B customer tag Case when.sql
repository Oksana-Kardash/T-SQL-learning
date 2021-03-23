Select
  Customer_code,
  Case When Customer_code %2=0 then 'A' Else 'B' end as AB_Segment,
  Right (Customer_code,1) as Control_Group
From D_customer
Where Customer_code between 23000000 and 23001000
Order by Customer_code


Select
  Customer_code,
  Datepart (dy,sales_date) as Day_in_year,
  Case When Customer_code %2=0 then 'A' Else 'B' end as AB_Segment,
  Case When datepart(dy,Sales_date) %2=0 then 'A' Else 'B' end as Day_Segment,
  Case When datepart(wk,Sales_date) %2=0 then 'A' Else 'B' end as Week_Segment
From F_Sales