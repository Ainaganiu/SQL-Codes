-- Working with Multiples Tables Bridge Tables

SELECT 
    --fs.SalesOrderNumber AS InvoiceNumber,
    --fs.SalesOrderLineNumber AS InvoiceLineNumber,
    dsr.SalesReasonReasonType AS SalesReason,
    sum(fs.SalesAmount) AS SalesAmount

FROM FactInternetSales AS fs
    INNER JOIN FactInternetSalesReason as fsr
    ON fs.SalesOrderNumber = fsr.SalesOrderNumber and fs.SalesOrderLineNumber= fsr.SalesOrderLineNumber
    INNER JOIN DimSalesReason dsr
    ON fsr.SalesReasonKey = dsr.SalesReasonKey

--WHERE fs.SalesOrderNumber = N'SO51178'

GROUP BY dsr.SalesReasonReasonType