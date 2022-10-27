-- Using JOINS across different tables 
SELECT TOP 100
CONCAT(dc.FirstName, ' ',dc.LastName) AS CustomerName,
dc.EmailAddress AS EmailAddress,
SUM(fs.SalesAmount) AS AmountSpent,
--dcy.CurrencyName AS Currency


FROM FactInternetSales  AS [fs]
    INNER JOIN DimCustomer AS [dc]
    ON fs.CustomerKey = dc.CustomerKey
    INNER JOIN DimCurrency AS dcy
    ON fs.CurrencyKey = dcy.CurrencyKey

--WHERE dcy.CurrencyName = 'US DOLLAR'
GROUP BY dc.FirstName , dc.LastName, dc.EmailAddress ,--dcy.CurrencyName

--HAVING dcy.CurrencyName = N'US DOLLAR'

ORDER BY AmountSpent DESC