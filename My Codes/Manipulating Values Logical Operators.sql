-- Manipulating Values Using Logical Operator

SELECT 
 
EnglishProductName,
EnglishDescription,
Color,
[Status],Class

FROM DimProduct

-- WHERE Class= 'H'
WHERE (Class <> 'H' OR Class IS NULL) AND [Status] IS NOT NULL

-- Manipulating Values using IN and BETWEEN Operator

SELECT 
 
EnglishProductName,
EnglishDescription,
Color,
[Status],Class,
SafetyStockLevel 

FROM DimProduct
WHERE (SafetyStockLevel BETWEEN 500 AND 1000) AND ([Status] IS NOT NULL) -- Between is inclusive of both ends
-- WHERE (SafetyStockLevel >=500 AND SafetyStockLevel <=1000) AND ([Status] IS NOT NULL) 
--WHERE Color IN ('Black','Silver', 'White', 'Yellow')


-- Manipulating values using Like Operator

SELECT 
FirstName,
EmailAddress
FROM DimCustomer
WHERE FirstName LIKE 'R%' --Brings out any first name that starts R