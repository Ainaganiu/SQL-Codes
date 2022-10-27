-- Manipulating Server Properties with Collation
SELECT CONVERT(varchar(256), SERVERPROPERTY('collation'))

SELECT *
FROM DimProduct
WHERE Color = 'silver'