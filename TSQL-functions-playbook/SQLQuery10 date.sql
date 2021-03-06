SELECT CURRENT_USER

SELECT SYSTEM_USER

SELECT SUSER_NAME(1)
SELECT SUSER_NAME(2)
SELECT SUSER_NAME(3)
SELECT SUSER_NAME(4)

SELECT SYSDATETIME()

SELECT
     CONVERT(DATE, SYSDATETIME());

SELECT SYSDATETIME() AS SYSDATETIME,
       SYSDATETIMEOFFSET() AS SYSDATETIMEOFFSET,
	   SYSUTCDATETIME() AS SYSUTCDATETIME,
	   CURRENT_TIMESTAMP AS CURRENTTIMESTAMP,
	   GETDATE() AS GETDATE,
	   GETUTCDATE() AS GETUTCDATE;

SELECT EOMONTH (GETDATE(), -12) AS ENDOFMONTH


select 
FORMAT (SALES_DATE, 'yyyy-MM') as YYYYMM,
SUM(sales_value)as sales
from sales_star s
where s.sales_date = eomonth (getdate(),-12)
group by  format (sales_date, 'yyyy-MM')


