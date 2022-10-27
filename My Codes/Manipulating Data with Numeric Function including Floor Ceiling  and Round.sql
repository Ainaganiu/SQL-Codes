-- Basic Numeric Function Including Round(), Floor(), Ceilling()
SELECT TOP(10) PERCENT
SalesOrderNumber AS [InvoiceNumber],
OrderDate,
Sum(SalesAmount) AS InvoiceSubTotal,
Round(Sum(SalesAmount),2) AS InvoiceSubTotalRounded,
Sum(TaxAmt) AS TaxAmount,
FLOOR(Sum(TaxAmt)) AS TaxAmountFloor,
Sum(OrderQuantity) AS TotalQuantity,
Sum(SalesAmount) + Sum(TaxAmt) AS InvoiceTotal,
CEILING(Sum(SalesAmount) + Sum(TaxAmt)) AS InvoiceTotalCeilling
FROM FactInternetSales
WHERE SalesTerritoryKey = 6
--WHERE SalesOrderNumber = 'SO51182'
GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY InvoiceSubTotal DESC