-- This query returns all customers that homeowners and
-- have more than 1 car and showing their Fullname , Numbers of Car owned and Email Address
SELECT
    CONCAT(FirstName, ' ', LastName) AS [CustomerFullName], -- The concat function combines two words together
CASE
    WHEN NumberCarsOwned BETWEEN 2 AND 3 THEN '2-3'
    WHEN NumberCarsOwned >=4 THEN '4+'
    END AS  [NumbersOfCarsOwned],
    EmailAddress AS [Email]

FROM 
    DimCustomer

WHERE 
    NumberCarsOwned > 1 AND HouseOwnerFlag =1