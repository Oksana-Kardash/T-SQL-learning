SELECT
sales_year,
SUM(SALES_value) AS Sum_SALES_value,
Sum (Cast(Sales_value as int)) as Pre_round_sales_value,
Cast (Sum(Sales_value) as int) as Int_sales_value,
Ceiling(Sum(Sales_value)) as Ceiling_Sales_value,
Floor(Sum(Sales_value)) as Floor_Sales_value,
Round(Sum(Sales_Value),0,1) as Round_sales_value,
Round(Sum(Sales_Value),1,0) as Round_1Dec_sales_value,
Round(Sum(Sales_Value),-1,0) as Round_10s_sales_value
FROM Sales_Star
WHERE PRODUCT like '%hat%'
GROUP BY Sales_year


