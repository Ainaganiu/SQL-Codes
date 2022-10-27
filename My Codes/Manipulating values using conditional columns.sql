-- Manipulating values using conditional columns including replacing NULL Using IIF, ISNULL and COALESCE

SELECT

    FirstName,
    IIF(MiddleName IS NULL, 'UNKN',MiddleName) AS MiddleName, --Fisrt method of replacing null values
    ISNULL(MiddleName,'UNKN') AS MiddleName2 , --Second method of replacing null values,
    COALESCE(MiddleName,'UNKN') AS MiddleName3, -- Third method of replacing null values
    LastName,
    YearlyIncome,
    EmailAddress,
    IIF(YearlyIncome >50000,'Above Average','Below Average') AS IncomeCategory,
    CASE 
        WHEN NumberChildrenAtHome = 0 THEN '0'
        WHEN NumberChildrenAtHome = 1 THEN '1'
        WHEN NumberChildrenAtHome BETWEEN 2 AND 4 THEN '2-4'
        WHEN NumberChildrenAtHome >=5 THEN '5+'
        ELSE 'UNKN'   -- You can also use CASE when you want to replace text string and create another column
    END AS NumberChildrenCategory,
    NumberChildrenAtHome AS ActualChildren


FROM DimCustomer

WHERE IIF(YearlyIncome >50000,'Above Average','Below Average') = 'Above Average'