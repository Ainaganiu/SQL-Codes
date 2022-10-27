-- Using Union to query two similar dataset

-- First Query
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

UNION -- Union functions combines similar columns removing duplicates

-- Second query

SELECT 
    --fs.SalesOrderNumber AS InvoiceNumber,
    --fs.SalesOrderLineNumber AS InvoiceLineNumber,
    dsr.SalesReasonReasonType AS SalesReason,
    sum(fs.SalesAmount) AS SalesAmount

FROM FactResellerSales AS fs
    INNER JOIN FactInternetSalesReason as fsr
    ON fs.SalesOrderNumber = fsr.SalesOrderNumber and fs.SalesOrderLineNumber= fsr.SalesOrderLineNumber
    INNER JOIN DimSalesReason dsr
    ON fsr.SalesReasonKey = dsr.SalesReasonKey

--WHERE fs.SalesOrderNumber = N'SO51178'

GROUP BY dsr.SalesReasonReasonType