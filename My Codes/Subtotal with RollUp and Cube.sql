-- Using Cube and RollUP
SELECT

    ProductCategory,
    ProductSubCategory,
    SUM(SalesAmount) AS TotalSales

FROM vwOrdersALL

WHERE YEAR(OrderDate) = 2013
AND Currency =N'US Dollar'

GROUP BY RollUP(ProductCategory,ProductSubCategory) -- We can also use Cube for sub Total. But RollUP is better for highrachical dataset