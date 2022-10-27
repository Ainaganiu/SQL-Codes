-- Basic Query as part of SQL Fundamentals Training, including OFFSET FETCH

SELECT 
SalesOrderNumber AS [InvoiceNumber],
OrderDate,
Sum(SalesAmount) AS InvoiceSubTotal,
Sum(TaxAmt) AS TaxAmount,
Sum(OrderQuantity) AS TotalQuantity,
Sum(SalesAmount) + Sum(TaxAmt) AS InvoiceTotal
FROM FactInternetSales
WHERE SalesTerritoryKey = 6
--WHERE SalesOrderNumber = 'SO51182'
GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY InvoiceSubTotal DESC
OFFSET 2 ROWS FETCH NEXT 10 ROWS  ONLY