select PRODUCT_CODE,
       SEASON,
	   PRODUCT,
	   PRODUCT_TYPE,
	   SIZE
FROM D_Product_Attributes

SELECT 
      PRODUCT,
   CASE WHEN PRODUCT ='SHIRT' THEN 'TOPS' END AS PRODUCT_CATEGORY
FROM D_PRODUCT_ATTRIBUTES

SELECT 
      PRODUCT,
   CASE WHEN PRODUCT IN ('SHIRT', 'TSHIRTS', 'BLOUSE', 'SWEATER') THEN 'TOPS' END AS PRODUCT_CATEGORY
FROM D_PRODUCT_ATTRIBUTES
ORDER BY 2 DESC


SELECT 
      PRODUCT,
   CASE WHEN PRODUCT IN ('SHIRT', 'TSHIRTS', 'BLOUSE', 'SWEATER') THEN 'TOPS' ELSE 'OTHER' END AS PRODUCT_CATEGORY
FROM D_PRODUCT_ATTRIBUTES


SELECT 
      PRODUCT,
   CASE WHEN PRODUCT IN ('SHIRT', 'TSHIRTS', 'BLOUSE', 'SWEATER') THEN 'TOPS' ELSE 'OTHER' END AS PRODUCT_CATEGORY,
   CASE WHEN PRODUCT IN ('TROUSER', 'SHORTS', 'SKIRT') THEN 'BOTTOMS' ELSE 'OTHER' END AS PRODUCT_CATEGORY
FROM D_PRODUCT_ATTRIBUTES
ORDER BY 3 DESC


SELECT 
      PRODUCT,
   CASE WHEN PRODUCT IN ('SHIRT', 'TSHIRTS', 'BLOUSE', 'SWEATER') THEN 'TOPS'
        WHEN PRODUCT IN ('TROUSER', 'SHORTS', 'SKIRT') THEN 'BOTTOMS' 
		 WHEN PRODUCT IN ('coat', 'JACKET', 'WAISTCOST') THEN 'OVERWEAR' 
		  WHEN PRODUCT IN ('HAT', 'BANDANA', 'SCARF', 'HEADSCARF', 'TIE') THEN 'ACCESORIES' 
ELSE 'OTHER' END AS PRODUCT_CATEGORY
FROM D_PRODUCT_ATTRIBUTES
 WHERE CASE WHEN PRODUCT IN ('SHIRT', 'TSHIRTS', 'BLOUSE', 'SWEATER') THEN 'TOPS'
        WHEN PRODUCT IN ('TROUSER', 'SHORTS', 'SKIRT') THEN 'BOTTOMS' 
		 WHEN PRODUCT IN ('coat', 'JACKET', 'WAISTCOST') THEN 'OVERWEAR' 
		  WHEN PRODUCT IN ('HAT', 'BANDANA', 'SCARF', 'HEADSCARF', 'TIE') THEN 'ACCESORIES' 
ELSE 'OTHER' END = 'OTHER'

SELECT 
    PRODUCT_CODE,
	PRODUCT,
	CASE WHEN PRODUCT IN ('SHIRT', 'TSHIRTS', 'BLOUSE', 'SWEATER') THEN 'TOPS'
        WHEN PRODUCT IN ('TROUSER', 'SHORTS', 'SKIRT') THEN 'BOTTOMS' 
		 WHEN PRODUCT IN ('coat', 'JACKET', 'WAISTCOST') THEN 'OVERWEAR' 
		  WHEN PRODUCT IN ('HAT', 'BANDANA', 'SCARF', 'HEADSCARF', 'TIE') THEN 'ACCESORIES' 
ELSE 'OTHER' END AS PRODUCT_CATEGORY
INTO D_PRODUCT_CATEGORY
FROM D_Product_Attributes


SELECT*
FROM d_PRODUCT_CATEGORY






