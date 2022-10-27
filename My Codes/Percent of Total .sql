-- Using Subquery To calcualte Percent of Total

SELECT 
     
     Source AS Reseller,
     SUM(SalesAmount) AS Sales,
     SUM(SalesAmount) /(SELECT SUM(SalesAmount) FROM vwOrdersALL WHERE Country = N'United States' AND Source != N'Web' ) AS PercentOfTotal

FROM vwOrdersALL

WHERE Country = N'United States' AND Source != N'Web'

GROUP BY Source
ORDER BY Sales DESC