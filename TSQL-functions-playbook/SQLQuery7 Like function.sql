SELECT DISTINCT PRODUCT
FROM D_Product_Attributes
WHERE Product LIKE '_R%'

SELECT DISTINCT PRODUCT
FROM D_Product_Attributes
WHERE Product LIKE '[a-i]a%'

SELECT DISTINCT PRODUCT
FROM D_Product_Attributes
WHERE Product LIKE '%r'

--no R at the end

SELECT DISTINCT PRODUCT
FROM D_Product_Attributes
WHERE Product LIKE '%[^r]'

SELECT DISTINCT PRODUCT
FROM D_Product_Attributes
WHERE Product LIKE '%ou%[^r]'