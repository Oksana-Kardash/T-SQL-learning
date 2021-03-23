select distinct
CONCAT(
  UPPER(LEFT(PRODUCT,1)),
  LOWER(RIGHT(PRODUCT,LEN(PRODUCT)-1)) )as CONCAT
  FROM D_Product_Attributes
  WHERE PRODUCT LIKE '%SHIRT%';


  select
  SALES_DATE,
  FORMAT (SALES_DATE, 'yyyyMM')
  FROM D_Sales_Calendar

 SELECT FORMAT(GETDATE(), 'hh:mm:ss') 

 select format(sales_value,'###.##')
 from Sales_Star

 select cast(sales_value as int)
 from Sales_Star

  select cast(sales_value as decimal(6,2))
 from Sales_Star