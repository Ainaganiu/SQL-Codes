-- This is student exercise of using DateName to filter sales made in Territory 1 in December
SELECT
SalesOrderNumber AS [InvoiceNumber],
SalesOrderLineNumber AS [InvoiceLineNumber],
SalesAmount,
TaxAmt AS [TaxAmount]
FROM FactInternetSales

WHERE SalesTerritoryKey = 1 AND DATENAME(MONTH,OrderDate) = N'December'