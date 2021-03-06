SELECT LEFT(CLEAN_PRODUCT_DESCRIPTION,13)
FROM V_PRODUCT_BASE

SELECT RIGHT(CLEAN_PRODUCT_DESCRIPTION,6)
FROM V_PRODUCT_BASE

SELECT SUBSTRING(CLEAN_PRODUCT_DESCRIPTION,15,6)
FROM V_PRODUCT_BASE

SELECT
      PRODUCT_CODE,
	  MAX(CASE WHEN ATTRIBUTEID = 1 THEN ATTRIBUTE ELSE NULL END) AS SEASON,
	  MAX(CASE WHEN ATTRIBUTEID = 2 THEN ATTRIBUTE ELSE NULL END) AS PRODUCT,
	  MAX(CASE WHEN ATTRIBUTEID = 3 THEN ATTRIBUTE ELSE NULL END) AS PRODUCT_TYPE,
	  MAX(CASE WHEN ATTRIBUTEID = 5 THEN ATTRIBUTE ELSE NULL END) AS SIZE
FROM
(
SELECT
     PRODUCT_CODE,
	 ROW_NUMBER() OVER(PARTITION BY PRODUCT_CODE ORDER BY PRODUCT_CODE) AS ATTRIBUTEID,
	 CASE ROW_NUMBER()OVER(PARTITION BY PRODUCT_CODE ORDER BY PRODUCT_CODE)
	 WHEN 1 THEN 'SEASON'
	 WHEN 2 THEN 'PRODUCT'
	 WHEN 3 THEN 'TYPE'
	 WHEN 4 THEN 'COLOR'
	 WHEN 5 THEN 'SIZE' ELSE 'ERROR' END AS ATTRIBUTE_NAME,
	 VALUE ATTRIBUTE
FROM V_PRODUCT_BASE     
      CROSS APPLY STRING_SPLIT(CLEAN_PRODUCT_DESCRIPTION, '-') ) SPLIT
	  GROUP BY PRODUCT_CODE