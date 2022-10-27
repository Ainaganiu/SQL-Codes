-- Using National N prefix for column containing nVarChar

SELECT 
 
EnglishProductName,
EnglishDescription,
Color,
[Status],Class,
SafetyStockLevel 

FROM DimProduct
WHERE Color IN (N'Black',N'Silver', N'White', N'Yellow') --This is where we use the N statement
