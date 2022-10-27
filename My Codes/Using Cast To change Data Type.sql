
-- We use CAST to change the datatype of variable in SQL
/* Simple example of the CAST function  
    SELECT 

    SalesAmount,
    CAST(SalesAmount AS int) AS SalesAmountCast ,
    OrderDate,
    CAST(OrderDate AS date) AS OrderdateCast

    FROM FactInternetSales
*/

SELECT 

EnglishProductName,
ReorderPoint,
SafetyStockLevel,
CAST(ReorderPoint AS DECIMAL(8,4)) / CAST(SafetyStockLevel AS decimal(8,4)) AS PctOfTotalSafeyStock

FROM DimProduct

WHERE [Status] = 'current'