-- Manipulating string with Flexible Left and Right Functions

SELECT 

EnglishProductName as PorductName,
EnglishDescription As ProductDescription,
CONCAT(EnglishProductName, '-',EnglishDescription) AS ProductandDescription,
LEN(EnglishDescription) AS DescriptionLenght,
UPPER(EnglishProductName) AS UpperProductName,
LOWER(EnglishProductName) AS LowerProductName,
REPLACE(EnglishProductName,'Front','Ultra Duarable Front') AS EnglishProductNameReplace,
LEFT(ProductAlternateKey,2) AS ProductShort,
RIGHT(ProductAlternateKey,LEN(ProductAlternateKey)-3) AS ProductAlternateKeyTwo

FROM DimProduct

WHERE ProductKey = 555