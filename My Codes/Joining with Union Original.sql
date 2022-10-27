-- Combined summary of sales and promo from both Internet Sales and Reseller Sales in 2012 and 2013

SELECT 
    -- Sales and promo summary from Internet Sales
    fs.SalesOrderNumber AS InvoiceNumber,
    fs.SalesOrderLineNumber AS InvoiceLineNumber,
    fs.OrderDate AS OrderDate,
    fs.SalesAmount AS SalesAmount,
    fs.TaxAmt AS TaxAmount,
    fs.Freight AS FeightAmount,
    fs.OrderQuantity AS Quantity,

    dp.EnglishProductName AS ProductName,

    dpsc.EnglishProductSubcategoryName AS ProductSubCategory,

    dpc.EnglishProductCategoryName AS ProductCategory,

    dst.SalesTerritoryCountry AS Country,
    dst.SalesTerritoryRegion AS Region,
    
    dpr.EnglishPromotionName AS PromotionName,
    dpr.EnglishPromotionType AS PromotionType,
    dpr.EnglishPromotionCategory AS PromotionCategory,

    dcy.CurrencyName AS Currency,
    'web' AS Source


FROM FactInternetSales AS fs
    INNER JOIN DimProduct AS dp
    ON fs.ProductKey = dp.ProductKey
    INNER join DimProductSubcategory as dpsc
    ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey
    INNER JOIN DimProductCategory as dpc
    on dpsc.ProductSubcategoryKey = dpc.ProductCategoryKey
    INNER JOIN DimSalesTerritory AS dst
    ON fs.SalesTerritoryKey = dst.SalesTerritoryKey
    INNER JOIN DimPromotion AS dpr
    ON fs.PromotionKey=dpr.PromotionKey
    INNER JOIN DimCurrency AS dcy
    ON fs.CurrencyKey=dcy.CurrencyKey

WHERE YEAR(fs.OrderDate) IN (2012,2013)

UNION
SELECT

 -- Sales and promo summary from Internet Sales
    fs.SalesOrderNumber AS InvoiceNumber,
    fs.SalesOrderLineNumber AS InvoiceLineNumber,
    fs.OrderDate AS OrderDate,
    fs.SalesAmount AS SalesAmount,
    fs.TaxAmt AS TaxAmount,
    fs.Freight AS FeightAmount,
    fs.OrderQuantity AS Quantity,

    dp.EnglishProductName AS ProductName,

    dpsc.EnglishProductSubcategoryName AS ProductSubCategory,

    dpc.EnglishProductCategoryName AS ProductCategory,

    dst.SalesTerritoryCountry AS Country,
    dst.SalesTerritoryRegion AS Region,
    
    dpr.EnglishPromotionName AS PromotionName,
    dpr.EnglishPromotionType AS PromotionType,
    dpr.EnglishPromotionCategory AS PromotionCategory,

    dcy.CurrencyName AS Currency,
    dr.ResellerName AS Source


FROM FactResellerSales AS fs
    INNER JOIN DimProduct AS dp
    ON fs.ProductKey = dp.ProductKey
    INNER join DimProductSubcategory as dpsc
    ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey
    INNER JOIN DimProductCategory as dpc
    on dpsc.ProductSubcategoryKey = dpc.ProductCategoryKey
    INNER JOIN DimSalesTerritory AS dst
    ON fs.SalesTerritoryKey = dst.SalesTerritoryKey
    INNER JOIN DimPromotion AS dpr
    ON fs.PromotionKey=dpr.PromotionKey
    INNER JOIN DimCurrency AS dcy
    ON fs.CurrencyKey=dcy.CurrencyKey
    INNER JOIN DimReseller AS dr
    ON fs.ResellerKey = dr.ResellerKey


WHERE YEAR(fs.OrderDate) IN (2012,2013)